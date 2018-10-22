param ([string]$domain)

$password = 'I@mroot$PWD1' | ConvertTo-SecureString -asPlainText -Force
$username = $domain + "\ucaadmin"
$credential = New-Object System.Management.Automation.PSCredential($username, $password)

#$lpassword = 'I@mroot$PWD1' | ConvertTo-SecureString -asPlainText -Force
#$lusername = "\ucaadmin"
#$lcredential = New-Object System.Management.Automation.PSCredential($lusername, $lpassword)

Add-Computer -DomainName $domain -Credential $credential -Restart