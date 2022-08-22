variable "resource_group_name" {
  type        = string
  description = "name of the resource group"
}

variable "location" {
  type        = string
  description = "location of the resource group"
}

variable "sa_name" {
  type        = string
  description = "name of the azurerm_storage_account"
}

variable "datalake_name" {
  type        = string
  description = "name of the azurerm_storage_data_lake_gen2_filesystem"
}
