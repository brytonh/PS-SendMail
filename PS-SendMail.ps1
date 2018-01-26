#####################################################

$SendAddress="YOUR_EMAIL_ADDRESS"
$To=Read-Host -Prompt "To"
$Subject=Read-Host -Prompt "Subject"
$Body=Read-Host -Prompt "Input Body"
$SMTPServer="smtp.gmail.com"
$SMTPPort="587"

Send-MailMessage -From $SendAddress -to $To -Subject $Subject -Body $Body `
-SmtpServer $SMTPServer -port $SMTPPort -UseSsl -Credential (Get-Credential)

Write-Host -fore Cyan "`nSent Your E-mail"

#####################################################