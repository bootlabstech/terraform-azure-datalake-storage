resource "azurerm_storage_account" "sa" {
  name                     = var.sa_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  account_kind             = var.account_kind
  is_hns_enabled           = var.is_hns_enabled
}

resource "azurerm_storage_data_lake_gen2_filesystem" "datalake" {
  name               = var.datalake_name
  storage_account_id = azurerm_storage_account.sa.id
}
resource "azurerm_storage_data_lake_gen2_path" "datalake_path" {
  path               = var.path
  filesystem_name    = azurerm_storage_data_lake_gen2_filesystem.datalake.name
  storage_account_id = azurerm_storage_account.sa.id
  resource           = var.resource
}