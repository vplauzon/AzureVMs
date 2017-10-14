$rgName = ‘ren’ # or the Resource Group name you used
Get-AzureRmSnapshot -ResourceGroupName $rgName | Remove-AzureRmSnapshot -Force
