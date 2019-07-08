$AzStorAccName = 'savtestazurefileswestus' #Storage account name
$AzResGroup = 'RG-SavWestUS' #resource group name
$AzStrAct = Get-AzStorageAccount -Name $AzStorAccName -ResourceGroupName $AzResGroup
$AzStrKey = Get-AzStorageAccountKey -Name $AzStorAccName -ResourceGroupName $AzResGroup
$AzStrCtx = New-AzStorageContext $AzStorAccName -StorageAccountKey $AzStrKey[0].Value
$AzStrCtx