$rgName = ‘ren’ # or the Resource Group name you used
Get-AzureRmVM -ResourceGroupName $rgName | Remove-AzureRmVM -Force
