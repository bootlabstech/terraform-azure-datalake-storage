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

variable "account_tier" {
  type        = string
  description = "Defines the Tier to use for this storage account."
}

variable "account_replication_type" {
  type        = string
  description = " Defines the type of replication to use for this storage account"
}

variable "account_kind" {
  type        = string
  description = " Defines the Kind of account for storage account"
}

variable "is_hns_enabled" {
  type        = string
  description = " Is Hierarchical Namespace enabled? This can be used with Azure Data Lake Storage Gen 2 (see here for more information). Changing this forces a new resource to be created."
}

variable "path" {
  type        = string
  description = "The path which should be created within the Data Lake Gen2 File System in the Storage Account. Changing this forces a new resource to be created."
}

variable "resource" {
  type        = string
  description = " Specifies the type for path to create. Currently only directory is supported for datalake_path"
}