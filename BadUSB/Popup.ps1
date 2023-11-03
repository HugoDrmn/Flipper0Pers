#[System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
#[System.Windows.Forms.MessageBox]::Show("Votre ordinateur a été piraté, Veuillez", "Message", [System.Windows.Forms.MessageBoxButtons]::AbortRetryIgnore, [System.Windows.Forms.MessageBoxIcon]::Information)

Add-Type -AssemblyName System.Windows.Forms

$form = New-Object System.Windows.Forms.Form
$form.Text = "ALERTE"
$form.Size = New-Object System.Drawing.Size(300, 150)
$form.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedDialog
$Form.ControlBox = $False
$form.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen

$label = New-Object System.Windows.Forms.Label
$label.Location = New-Object System.Drawing.Point(10, 10)
$label.Size = New-Object System.Drawing.Size(280, 50)
$label.Font = New-Object System.Drawing.Font("Arial", 12, [System.Drawing.FontStyle]::Bold)
$label.Text = "Une intrusion de type ransomware a été détecter"
$form.Controls.Add($label)

$label2 = New-Object System.Windows.Forms.Label
$label2.Location = New-Object System.Drawing.Point(10, 60)
$label2.Size = New-Object System.Drawing.Size(280, 50)
$label2.Text = "Votre disque dur va être entièrement effacé"
$form.Controls.Add($label2)

$form.ShowDialog()