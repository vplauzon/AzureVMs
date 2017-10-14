$rgName = ‘ren’ # or the Resource Group name you used
Get-AzureRmDisk -ResourceGroupName $rgName | where {$_.Tags["renamedDisk"] -ne "true"} | Remove-AzureRmDisk -Force
