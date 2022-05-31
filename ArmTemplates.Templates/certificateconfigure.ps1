# Write your PowerShell commands here.
#Write-Host "Hello World"

Install-Module Az.Websites -Scope CurrentUser -Force

Import-AzWebAppKeyVaultCertificate 
-ResourceGroupName "armappBaseName-dev-2605" 
-WebAppName "armappBaseName-dev-2605" 
-KeyVaultName '/subscriptions/5761586f-99b8-4741-80df-d6143a7b7bac/resourceGroups/armappBaseName-dev-2605/providers/Microsoft.KeyVault/vaults/keyvault31054'
-CertName "certificate1"


New-AzWebAppSSLBinding 
-ResourceGroupName "armappBaseName-dev-2605" 
-WebAppName "armappBaseName-dev-2605" 
-Thumbprint "783E531FE7775222BDADA9D3EE03742141693FE8" 
-Name "www.contoso.com"
