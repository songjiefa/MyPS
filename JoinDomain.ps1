param ([string]$domain)

$password = 'I@mroot$PWD1' | ConvertTo-SecureString -asPlainText -Force
$username = $domain + "\ucaadmin"
$credential = New-Object System.Management.Automation.PSCredential($username, $password)

#$password = 'I@mroot$PWD1' | ConvertTo-SecureString -asPlainText -Force
#$username = "\ucaadmin"
#$lcredential = New-Object System.Management.Automation.PSCredential($username, $password)

Add-Computer -DomainName $domain -Credential $credential -Restart