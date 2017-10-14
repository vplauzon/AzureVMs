$rgName = ‘ren’ # or the Resource Group name you used
Get-AzureRmDisk -ResourceGroupName $rgName | foreach `
{
    $disk = $_
    Write-Host "Disk:  ", $disk.Name

    $config = New-AzureRmSnapshotConfig -SourceUri $disk.Id -CreateOption Copy -Location $disk.Location -SkuName PremiumLRS
    $snapshot = New-AzureRmSnapshot -Snapshot $config -SnapshotName ($disk.Name+’-snapshot’) -ResourceGroupName $rgName
}
