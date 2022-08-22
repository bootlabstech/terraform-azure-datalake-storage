resource "azurerm_storage_account" "sa" {
  name                     = var.sa_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind             = "StorageV2"
  is_hns_enabled           = "true"
}

resource "azurerm_storage_data_lake_gen2_filesystem" "datalake" {
  name               = var.datalake_name
  storage_account_id = azurerm_storage_account.sa.id
}
resource "azurerm_storage_data_lake_gen2_path" "datalake_path" {
  path               = "datalake_path"
  filesystem_name    = azurerm_storage_data_lake_gen2_filesystem.datalake.name
  storage_account_id = azurerm_storage_account.sa.id
  resource           = "directory"
}
