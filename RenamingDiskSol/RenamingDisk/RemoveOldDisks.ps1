$rgName = ‘ren’ # or the Resource Group name you used
$oldDisks = 'Demo-VM-OS', 'Demo-VM-data2', 'Demo-VM-data3'
  
$oldDisks | foreach {Remove-AzureRmDisk -ResourceGroupName $rgName -Force -DiskName $_}
