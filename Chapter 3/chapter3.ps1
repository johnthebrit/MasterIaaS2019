#View AD account detail
get-aduser john -Properties samaccountname, mail, userprincipalname, objectguid, 'mS-DS-ConsistencyGuid' |
    select samaccountname, mail, objectguid, @{name='ms-ds-consistencyguid';expression={[guid]$_.'ms-ds-consistencyguid'}}

#View Azure AD account detail
Get-AzureADUser -ObjectId 'john@savilltech.net' | Select-Object -Property userprincipalname, immutableid

#View a B2B user
$extuser = get-azureaduser -Filter "displayname eq 'savtech007'"


#Invite a user for B2B and suppress the redemption email
$AADB2BAdd = New-AzureADMSInvitation -InvitedUserEmailAddress "onemtcmng@onemtc.net"  `
    -InviteRedirectUrl "http://myapps.microsoft.com" -SendInvitationMessage $false -invitedusertype = 'Member'

#Larger example of B2B
$HelpGroup = Get-AzureADGroup -SearchString "HelpdeskGroup"
$HelpRole = Get-AzureADDirectoryRole | Where-Object {$_.displayName -eq 'Helpdesk Administrator'}

foreach($user in $users)
{
    $AADB2BAdd = New-AzureADMSInvitation -InvitedUserEmailAddress "$($UserDifference.InputObject)" -SendInvitationMessage $false `
        -InviteRedirectUrl "http://myapps.microsoft.com"
    Add-AzureADGroupMember -ObjectId $HelpGroup.ObjectId -RefObjectId $AADB2BAdd.InvitedUser.Id
    Add-AzureADDirectoryRoleMember -ObjectId $HelpRole.ObjectId -RefObjectId $AADB2BAdd.InvitedUser.Id
}

#Convert guest to member
get-azureaduser -Filter "displayname eq 'savtech007'" | Set-AzureADUser -UserType 'Member'
