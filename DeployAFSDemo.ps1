Register-AzureRmProviderFeature `
  -FeatureName AllowGlobalVnetPeering `
  -ProviderNamespace Microsoft.Network

  Get-AzureRmProviderFeature `
  -FeatureName AllowGlobalVnetPeering `
  -ProviderNamespace Microsoft.Network

Register-AzureRmResourceProvider `
  -ProviderNamespace Microsoft.Network

  New-AzureRmResourceGroup -Location "canadacentral" -Name "rgAFSDemo"

  $date = Get-Date -Format "yyyyMMddhhmmss"

New-AzureRmResourceGroupDeployment -Name $date -ResourceGroupName "rgAFSDemo" -Mode Incremental -TemplateUri "https://raw.githubusercontent.com/swiftsolves-msft/Azure-File-Sync-Dive/master/AzureFileSyncDemo.json"