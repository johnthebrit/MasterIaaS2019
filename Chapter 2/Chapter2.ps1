#region Roles
#Viewing roles
Get-AzRoleDefinition | FT Name, Description
Get-AzRoleDefinition | measure
Get-AzRoleDefinition Contributor | FL Actions, NotActions
(Get-AzRoleDefinition "Virtual Machine Contributor").Actions

$roles = Get-AzRoleDefinition
foreach ($roledef in $roles) {
    if ($roledef.Actions -match "^Microsoft.Compute/virtualMachines/" -or $roledef.Actions -match "^Microsoft.Compute/\*" -or $roledef.Actions -match "^\*/")
    {
        Write-Output "Role: $($roledef.Name)"
    }
}

#Create a custom role
Get-AzProviderOperation "Microsoft.Compute/virtualMachines/*" | FT OperationName, Operation, Description -AutoSize
$sub = Get-AzSubscription -SubscriptionName "SavillTech Dev Subscription"
$role = Get-AzRoleDefinition "Virtual Machine Contributor"
$role.Actions
$role.Id = $null
$role.Name = "Virtual Machine Operator"
$role.Description = "Can monitor and restart virtual machines."
$role.Actions.Remove("Microsoft.Compute/virtualMachines/*")
$role.Actions.Remove("Microsoft.Compute/virtualMachineScaleSets/*")
$role.Actions.Add("Microsoft.Compute/virtualMachines/read")
$role.Actions.Add("Microsoft.Compute/virtualMachines/start/action")
$role.Actions.Add("Microsoft.Compute/virtualMachines/restart/action")
$role.AssignableScopes.Clear()
$role.AssignableScopes.Add("/subscriptions/$($sub.id)")
New-AzRoleDefinition -Role $role

#endregion


#region Tags
$VMName = 'Savazuusscdc01'
$RGName = 'RG-Infra-SCUS'
$VM = Get-AzVM $RGName $VMName
#Currently empty
$VM.Tags
#Adding two tags to a VM (uses hash table in PowerShell)
Set-AzResource -ResourceId $VM.Id -Tag @{ Dept = "CoreServices"; Role = "DC"; Region = "EUS"} -Force
#Add another tag for the owner
$Res = Get-AzResource -ResourceGroupName $RGName -Name $VMName
$Res.Tags
$Res.Tags.Add("Owner", "John Savill")
Set-AzResource -Tag $Res.Tags -ResourceId $Res.Id -Force
#Find all DCs by searching for any resource with Role of DC in the tags
Get-AzResource -Tag @{Role = "DC"} | Format-Table Name, ResourceGroupName -AutoSize
#Create a JSON document in a variable
$OpersHash = @{AVAgent = "Defender";PatchSystem = "MU";MaintWindow = "1:00-4:00"}
$OpersJson = $OpersHash | ConvertTo-Json
#Add to tags of VM
$res.Tags.Add("Operations",$OpersJson)
Set-AzResource -Tag $Res.Tags -ResourceId $Res.Id -Force
$res.tags.Operations
#Fetch the updated object
$Res = Get-AzResource -ResourceGroupName $RGName -Name $VMName
$OpersObj = $res.tags.Operations | ConvertFrom-Json
#Update maintenance window and add a patch day of today
$OpersObj.MaintWindow = "1:00-3:00"
$OpersObj | Add-Member -Name "PatchDate" -Value (Get-Date -UFormat "%Y/%m/%d") -MemberType NoteProperty
$OpersJson = $OpersObj | ConvertTo-Json
$res.Tags.Operations = $OpersJson
Set-AzResource -Tag $Res.Tags -ResourceId $Res.Id -Force

#Copy tags from Resource Group to resources for every RG in a subscription
$groups = Get-AzResourceGroup
foreach($group in $groups)
{
    if ($null -ne $group.Tags) {
        $resources = Get-AzResource -ResourceGroupName $group.ResourceGroupName
        foreach ($r in $resources)
        {
            $resourcetags = (Get-AzResource -ResourceId $r.ResourceId).Tags
            if ($resourcetags)
            {
                foreach ($key in $group.Tags.Keys)
                {
                    if (-not($resourcetags.ContainsKey($key)))
                    {
                        $resourcetags.Add($key, $group.Tags[$key])
                    }
                }
                Set-AzResource -Tag $resourcetags -ResourceId $r.ResourceId -Force
            }
            else
            {
                Set-AzResource -Tag $group.Tags -ResourceId $r.ResourceId -Force
            }
        }
    }
}

#endregion


#region Policy

$networks = Get-AzVirtualNetwork
foreach($network in $networks)
{
    Write-Output "Network - $($network.Name)"
    $subnets = Get-AzVirtualNetworkSubnetConfig -VirtualNetwork $network
    foreach($subnet in $subnets)
    {
        write-output " Subnet - $($subnet.Name)"
        write-output " $($subnet.Id)"
        write-output ""
    }
    Write-Output ""
}

#endregion