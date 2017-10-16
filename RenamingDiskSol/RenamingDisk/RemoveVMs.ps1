$rgName = 'ren' # or the Resource Group name we use
$vmName = 'Demo-VM'	# or the name of the VM we use
Remove-AzureRmVM -Force -ResourceGroupName $rgName -Name $vmName