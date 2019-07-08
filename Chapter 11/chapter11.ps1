#Installing Az module
Find-Module Az
Get-Module Az -ListAvailable | select-object -Property Name, Version, Path


#Logging on
Add-AzAccount


#Using contexts
$context = Get-AzContext
$context
Rename-AzContext $context.Name 'SavillTech Dev'
$contexts = Get-AzContext -ListAvailable
$contexts
Rename-AzContext $contexts[0].Name 'SavillTech Prod'
Rename-AzContext $contexts[2].Name 'SavillTech Lab'
Get-AzContext -ListAvailable

#View the tokens leveraged. Also look in .Azure subfolder of profile but for PowerShell is binary .dat file
Import-Module Az.Accounts
[Microsoft.Azure.Commands.Common.Authentication.AzureSession]::Instance.TokenCache.ReadItems()


#Creating a custom role
#Create new role
$sub = "/subscriptions/<subscription ID in here>"
$role = Get-AzRoleDefinition -Name "Virtual Machine Contributor"
$role.Id = $null
$role.Name = "Resource Provider Register"
$role.Description = "Can register Resource Providers."
$role.Actions.RemoveRange(0,$role.Actions.Count)
$role.Actions.Add("*/register/action")
$role.AssignableScopes.Clear()
$role.AssignableScopes.Add($sub)
New-AzRoleDefinition -Role $role

#Assign to the Architects
$group = Get-AzADGroup -SearchString " Architects"
New-AzRoleAssignment -ObjectId $group.Id `
-RoleDefinitionName $role.Name -Scope $sub



#Interacting with Azure Key Vault

#Create a new secret
$secretvalue = ConvertTo-SecureString 'Pa55wordT0p' -AsPlainText -Force

#Store the secret in Azure Key Vault
$secret = Set-AzKeyVaultSecret -VaultName 'SavillVault' `
    -Name 'JohnPassword' -SecretValue $secretvalue



#Copying a managed disk to another subscription
$SourceRG = '<resource group containing the managed disk>'
$SourceSubscrpitionId = '<subscription id hosting the managed disk>'
$SourceTenantId = '<tenant id of the source subscription>'
$ManagedDiskName = 'disk.vhd'
$DestinationRG = '<target RG of the target storage account>'
$DestinationStorageAccount = '<target storage account name>'
$DestinationStorageKey = '<key>'
$containerName = 'vhds'
$vhdName = $ManagedDiskName + '.vhd'

#Managed disk source
Select-AzSubscription -Subscription $SourceSubscrpitionId `
-Tenant $SourceTenantId
#Obtain a grant to the underlying storage of the managed disk
$grant = Grant-AzDiskAccess -ResourceGroupName $SourceRG `
-DiskName $ManagedDiskName -Access Read -DurationInSecond 10800

#Destination storage account
$storageContext = New-AzStorageContext `
-StorageAccountName $DestinationStorageAccount `
-StorageAccountKey $DestinationStorageKey

$container = Get-AzStorageContainer $containerName `
-Context $storageContext -ErrorAction Ignore

$CopyToBlob = Start-AzStorageBlobCopy -AbsoluteUri $grant.AccessSAS `
-DestContainer $containerName -DestBlob $vhdName `
-DestContext $storageContext

$CopyToBlob | Get-AzStorageBlobCopyState


#Worlds most basic VM creation
New-AzVmss -Name johnvm -Credential (Get-Credential) -Verbose -WhatIf


#Installing SHiPS
Install-Module AzurePSDrive
Import-Module AzurePSDrive
New-PSDrive -Name Azure -PSProvider SHiPS -root 'AzurePSDrive#Azure'
Remove-PSDrive -Name Azure


#Test calling Azure Function
$FunctionURL = 'https://YOURFUNCTIONURL.azurewebsites.net/api/HttpTriggerPSHello?code=9mWWg9o4Q=='

# Normal GET with no parameters
Invoke-RestMethod -Method Get -Uri $FunctionURL
# GET using the "name" query parameter
Invoke-RestMethod -Method Get -Uri "$($FunctionURL)&name=John"

#PUT
$Body = @{name = 'John'} | ConvertTo-Json
Invoke-RestMethod -Method Post -Body $Body -Uri $YourURI