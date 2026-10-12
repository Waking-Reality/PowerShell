# Load Required GUI Assemblies
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

# ==========================================
# 1. Check and Install OpenSSL
# ==========================================
function Ensure-OpenSSL {
    $opensslCmd = Get-Command "openssl" -ErrorAction SilentlyContinue

    if (-not $opensslCmd) {
        $defaultPath = "C:\Program Files\OpenSSL-Win64\bin"
        if (Test-Path "$defaultPath\openssl.exe") {
            $env:PATH += ";$defaultPath"
            return
        }

        $msgResult = [System.Windows.Forms.MessageBox]::Show(
            "OpenSSL is not installed or not found in your PATH.`n`nWould you like to install it automatically using winget?", 
            "OpenSSL Missing", 
            [System.Windows.Forms.MessageBoxButtons]::YesNo, 
            [System.Windows.Forms.MessageBoxIcon]::Information
        )

        if ($msgResult -eq 'Yes') {
            Write-Host "Attempting to install OpenSSL via Winget..." -ForegroundColor Cyan
            $installProcess = Start-Process -FilePath "winget" -ArgumentList "install --id ShiningLight.OpenSSL -e --accept-package-agreements --accept-source-agreements" -Wait -NoNewWindow -PassThru
            
            if ($installProcess.ExitCode -eq 0) {
                if (Test-Path "$defaultPath\openssl.exe") { $env:PATH += ";$defaultPath" }
                [System.Windows.Forms.MessageBox]::Show("OpenSSL installed successfully!", "Success", 0, [System.Windows.Forms.MessageBoxIcon]::Information) | Out-Null
            } else {
                [System.Windows.Forms.MessageBox]::Show("Failed to install OpenSSL. Please install it manually.", "Error", 0, [System.Windows.Forms.MessageBoxIcon]::Error) | Out-Null
                exit
            }
        } else {
            exit
        }
    }
}

Ensure-OpenSSL

# ==========================================
# 2. Helper Functions for File Dialogs
# ==========================================
function Get-SaveFile($title, $filter) {
    $dialog = New-Object System.Windows.Forms.SaveFileDialog
    $dialog.Title = $title
    $dialog.Filter = $filter
    if ($dialog.ShowDialog() -eq [System.Windows.Forms.DialogResult]::OK) { return $dialog.FileName }
    return $null
}

function Get-OpenFile($title, $filter) {
    $dialog = New-Object System.Windows.Forms.OpenFileDialog
    $dialog.Title = $title
    $dialog.Filter = $filter
    if ($dialog.ShowDialog() -eq [System.Windows.Forms.DialogResult]::OK) { return $dialog.FileName }
    return $null
}

# ==========================================
# 3. GUI Form Construction
# ==========================================
[System.Windows.Forms.Application]::EnableVisualStyles()

$form = New-Object System.Windows.Forms.Form
$form.Text = "Asymmetric Cryptography Tool"
$form.Size = New-Object System.Drawing.Size(350, 450)
$form.StartPosition = "CenterScreen"
$form.FormBorderStyle = "FixedDialog"
$form.MaximizeBox = $false

$lblStatus = New-Object System.Windows.Forms.Label
$lblStatus.Location = New-Object System.Drawing.Point(15, 10)
$lblStatus.Size = New-Object System.Drawing.Size(300, 40)
$lblStatus.Text = "Ready. Select an action below."
$lblStatus.ForeColor = [System.Drawing.Color]::DarkBlue
$form.Controls.Add($lblStatus)

# --- Button: Generate Private Key ---
$btnGenPriv = New-Object System.Windows.Forms.Button
$btnGenPriv.Location = New-Object System.Drawing.Point(50, 60)
$btnGenPriv.Size = New-Object System.Drawing.Size(230, 35)
$btnGenPriv.Text = "Generate Private Key"
$btnGenPriv.Add_Click({
    $outFile = Get-SaveFile -title "Save Private Key As..." -filter "PEM Files (*.pem)|*.pem|All Files (*.*)|*.*"
    if ($outFile) {
        try {
            $lblStatus.Text = "Generating Private Key..."
            $output = & openssl genpkey -algorithm RSA -out $outFile -pkeyopt rsa_keygen_bits:2048 2>&1
            if ($LASTEXITCODE -ne 0) { throw ($output -join "`n") }
            $lblStatus.Text = "Private Key generated successfully!"
            [System.Windows.Forms.MessageBox]::Show("Saved to: $outFile", "Success") | Out-Null
        } catch {
            [System.Windows.Forms.MessageBox]::Show("Error: $_", "Error") | Out-Null
        }
    }
})
$form.Controls.Add($btnGenPriv)

# --- Button: Generate Public Key ---
$btnGenPub = New-Object System.Windows.Forms.Button
$btnGenPub.Location = New-Object System.Drawing.Point(50, 105)
$btnGenPub.Size = New-Object System.Drawing.Size(230, 35)
$btnGenPub.Text = "Generate Public Key"
$btnGenPub.Add_Click({$inFile = Get-OpenFile -title "Select your Private Key" -filter "PEM Files (*.pem)|*.pem|All Files (*.*)|*.*"
    if ($inFile) {$outFile = Get-SaveFile -title "Save Public Key As..." -filter "PEM Files (*.pem)|*.pem|All Files (*.*)|*.*"
        if ($outFile) {
            try {
                $lblStatus.Text = "Generating Public Key..."
                $output = & openssl rsa -pubout -in $inFile -out $outFile 2>&1
                if ($LASTEXITCODE -ne 0) { throw ($output -join "`n") }
                $lblStatus.Text = "Public Key generated successfully!"
                [System.Windows.Forms.MessageBox]::Show("Saved to: $outFile", "Success") | Out-Null
            } catch {
                [System.Windows.Forms.MessageBox]::Show("Error: $_", "Error") | Out-Null
            }
        }
    }
})
$form.Controls.Add($btnGenPub)

# --- Button: Encrypt File (Hybrid, Supports Large Files) ---
$btnEncrypt = New-Object System.Windows.Forms.Button
$btnEncrypt.Location = New-Object System.Drawing.Point(50, 150)
$btnEncrypt.Size = New-Object System.Drawing.Size(230, 35)
$btnEncrypt.Text = "Encrypt a File (using Public Key)"
$btnEncrypt.Add_Click({
    $pubKey = Get-OpenFile -title "1. Select Public Key" -filter "PEM Files (*.pem)|*.pem|All Files (*.*)|*.*"
    if ($pubKey) {
        $inFile = Get-OpenFile -title "2. Select File to Encrypt (No Size Limit)" -filter "All Files (*.*)|*.*"
        if ($inFile) {
            $outFile = Get-SaveFile -title "3. Save Encrypted Package As..." -filter "Encrypted Zip (*.zip)|*.zip"
            if ($outFile) {
                $tmpDir = Join-Path $env:TEMP ([guid]::NewGuid().ToString())
                New-Item -ItemType Directory -Path $tmpDir | Out-Null
                
                try {
                    $lblStatus.Text = "Encrypting file... Please wait."
                    $form.Refresh()

                    $symKey    = Join-Path $tmpDir "sym.key"
                    $encSymKey = Join-Path $tmpDir "key.enc"
                    $encData   = Join-Path $tmpDir "data.enc"

                    # 1. Generate secure AES-256 one-time password
                    $out1 = & openssl rand -base64 -out $symKey 48 2>&1
                    if ($LASTEXITCODE -ne 0) { throw ($out1 -join "`n") }

                    # 2. Encrypt the password using the RSA Public Key
                    $out2 = & openssl pkeyutl -encrypt -pubin -inkey $pubKey -in $symKey -out $encSymKey 2>&1
                    if ($LASTEXITCODE -ne 0) { throw ($out2 -join "`n") }

                    # 3. Encrypt the large file using AES-256 and the one-time password
                    $out3 = & openssl enc -aes-256-cbc -pbkdf2 -salt -in $inFile -out $encData -pass "file:$symKey" 2>&1
                    if ($LASTEXITCODE -ne 0) { throw ($out3 -join "`n") }

                    # 4. Package both into a Zip file
                    Compress-Archive -Path $encSymKey, $encData -DestinationPath $outFile -Force

                    $lblStatus.Text = "File encrypted securely!"
                    [System.Windows.Forms.MessageBox]::Show("Encrypted package saved to:`n$outFile", "Success") | Out-Null
                } catch {
                    [System.Windows.Forms.MessageBox]::Show("Encryption Error: $_", "Error") | Out-Null
                    $lblStatus.Text = "Encryption failed."
                } finally {
                    Remove-Item $tmpDir -Recurse -Force -ErrorAction SilentlyContinue
                }
            }
        }
    }
})
$form.Controls.Add($btnEncrypt)

# --- Button: Sign File ---
$btnSign = New-Object System.Windows.Forms.Button
$btnSign.Location = New-Object System.Drawing.Point(50, 195)
$btnSign.Size = New-Object System.Drawing.Size(230, 35)
$btnSign.Text = "Sign a File (using Private Key)"
$btnSign.Add_Click({$privKey = Get-OpenFile -title "1. Select Private Key" -filter "PEM Files (*.pem)|*.pem|All Files (*.*)|*.*"
    if ($privKey) {$inFile = Get-OpenFile -title "2. Select File to Sign" -filter "All Files (*.*)|*.*"
        if ($inFile) {$outFile = Get-SaveFile -title "3. Save Signature As..." -filter "Signature Files (*.sig)|*.sig|All Files (*.*)|*.*"
            if ($outFile) {
                try {
                    $lblStatus.Text = "Signing file... Please wait."
                    $form.Refresh()

                    # Create a SHA-256 hash and sign it with the private key
                    $output = & openssl dgst -sha256 -sign$privKey -out $outFile$inFile 2>&1
                    if ($LASTEXITCODE -ne 0) { throw ($output -join "`n") }

                    $lblStatus.Text = "File signed successfully!"
                    [System.Windows.Forms.MessageBox]::Show("Signature saved to:`n$outFile", "Success") | Out-Null
                } catch {
                    [System.Windows.Forms.MessageBox]::Show("Signing Error: $_", "Error") | Out-Null
                    $lblStatus.Text = "Signing failed."
                }
            }
        }
    }
})
$form.Controls.Add($btnSign)

# --- Button: Decrypt File (Hybrid, Supports Large Files) ---
$btnDecrypt = New-Object System.Windows.Forms.Button
$btnDecrypt.Location = New-Object System.Drawing.Point(50, 240)
$btnDecrypt.Size = New-Object System.Drawing.Size(230, 35)
$btnDecrypt.Text = "Decrypt a File (using Private Key)"
$btnDecrypt.Add_Click({
    $privKey = Get-OpenFile -title "1. Select Private Key" -filter "PEM Files (*.pem)|*.pem|All Files (*.*)|*.*"
    if ($privKey) {
        $inFile = Get-OpenFile -title "2. Select Encrypted Package" -filter "Encrypted Zip (*.zip)|*.zip"
        if ($inFile) {
            $outFile = Get-SaveFile -title "3. Save Decrypted File As..." -filter "All Files (*.*)|*.*"
            if ($outFile) {
                $tmpDir = Join-Path $env:TEMP ([guid]::NewGuid().ToString())
                New-Item -ItemType Directory -Path $tmpDir | Out-Null

                try {
                    $lblStatus.Text = "Decrypting file... Please wait."
                    $form.Refresh()

                    # Extract the package
                    Expand-Archive -Path $inFile -DestinationPath $tmpDir -Force
                    
                    $encSymKey = Join-Path $tmpDir "key.enc"
                    $encData   = Join-Path $tmpDir "data.enc"
                    $symKey    = Join-Path $tmpDir "sym.key"

                    if (-not (Test-Path $encSymKey) -or -not (Test-Path $encData)) {
                        throw "Invalid encrypted package format."
                    }

                    # 1. Decrypt the AES one-time password using the RSA Private Key
                    $out1 = & openssl pkeyutl -decrypt -inkey $privKey -in $encSymKey -out $symKey 2>&1
                    if ($LASTEXITCODE -ne 0) { throw ($out1 -join "`n") }

                    # 2. Decrypt the large file using the decrypted AES password
                    $out2 = & openssl enc -d -aes-256-cbc -pbkdf2 -salt -in $encData -out $outFile -pass "file:$symKey" 2>&1
                    if ($LASTEXITCODE -ne 0) { throw ($out2 -join "`n") }

                    $lblStatus.Text = "File decrypted successfully!"
                    [System.Windows.Forms.MessageBox]::Show("Decrypted file saved to:`n$outFile", "Success") | Out-Null
                } catch {
                    [System.Windows.Forms.MessageBox]::Show("Decryption Error: $_", "Error") | Out-Null
                    $lblStatus.Text = "Decryption failed."
                } finally {
                    Remove-Item $tmpDir -Recurse -Force -ErrorAction SilentlyContinue
                }
            }
        }
    }
})
$form.Controls.Add($btnDecrypt)

# --- Button: Verify Signature ---
$btnVerify = New-Object System.Windows.Forms.Button
$btnVerify.Location = New-Object System.Drawing.Point(50, 285)
$btnVerify.Size = New-Object System.Drawing.Size(230, 35)
$btnVerify.Text = "Verify Signature (using Public Key)"
$btnVerify.Add_Click({$pubKey = Get-OpenFile -title "1. Select Public Key" -filter "PEM Files (*.pem)|*.pem|All Files (*.*)|*.*"
    if ($pubKey) {$sigFile = Get-OpenFile -title "2. Select Signature File (.sig)" -filter "Signature Files (*.sig)|*.sig|All Files (*.*)|*.*"
        if ($sigFile) {$inFile = Get-OpenFile -title "3. Select Original File" -filter "All Files (*.*)|*.*"
            if ($inFile) {
                try {
                    $lblStatus.Text = "Verifying signature... Please wait."
                    $form.Refresh()

                    # Verify the signature against the original file
                    $output = & openssl dgst -sha256 -verify$pubKey -signature $sigFile$inFile 2>&1
                    
                    if ($LASTEXITCODE -eq 0 -and$output -match "Verified OK") {
                        $lblStatus.Text = "Signature Verified OK!"
                        [System.Windows.Forms.MessageBox]::Show("The signature is valid.`n`nThe file is authentic and has not been tampered with.", "Verification Success", 0, [System.Windows.Forms.MessageBoxIcon]::Information) | Out-Null
                    } else {
                        $lblStatus.Text = "Verification Failed!"
                        [System.Windows.Forms.MessageBox]::Show("Verification failed!`n`nThe file may have been tampered with, or you are using the wrong Public Key.`n`nOpenSSL Output: $output", "Verification Error", 0, [System.Windows.Forms.MessageBoxIcon]::Warning) | Out-Null
                    }
                } catch {
                    [System.Windows.Forms.MessageBox]::Show("Verification Error: $_", "Error") | Out-Null
                    $lblStatus.Text = "Verification failed."
                }
            }
        }
    }
})
$form.Controls.Add($btnVerify)

# --- Button: Exit ---
$btnExit = New-Object System.Windows.Forms.Button
$btnExit.Location = New-Object System.Drawing.Point(125, 360)
$btnExit.Size = New-Object System.Drawing.Size(80, 30)
$btnExit.Text = "Exit"
$btnExit.Add_Click({$form.Close()
})
$form.Controls.Add($btnExit)

# Show the GUI
# Apply a flat, solid border to all buttons
foreach ($control in $form.Controls) {
    if ($control.GetType().Name -eq "Button") {
        $control.FlatStyle = "Flat"
        $control.FlatAppearance.BorderColor = "DarkGray"
    }
}
$form.ActiveControl = $lblStatus
[void]$form.ShowDialog()
