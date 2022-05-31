# Write your PowerShell commands here.
#Write-Host "Hello World"
Install-Module Az
Connect-AzAccount 

#Install-Module Az.Websites -Scope CurrentUser -Force

$ResourceGroupName="armappBaseName-dev-2605"
$WebAppName ="armappBaseName-dev-2605"
$KeyVaultName ="/subscriptions/5761586f-99b8-4741-80df-d6143a7b7bac/resourceGroups/armappBaseName-dev-2605/providers/Microsoft.KeyVault/vaults/keyvault31054" 
$CertName="certificate1"

Import-AzWebAppKeyVaultCertificate 
-ResourceGroupName $ResourceGroupName 
-WebAppName $WebAppName
-KeyVaultName $KeyVaultName
-CertName $CertName

$Thumbprint ="783E531FE7775222BDADA9D3EE03742141693FE8" 
$Name ="www.contoso.com"

New-AzWebAppSSLBinding 
-ResourceGroupName -ResourceGroupName 
-WebAppName $WebAppName
-Thumbprint $Thumbprint
-Name $Name 



