variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The Azure region for the resources"
  type        = string
}

variable "aks_name" {
  description = "The name of the AKS cluster"
  type        = string
}

variable "dns_prefix" {
  description = "The DNS prefix for the AKS cluster"
  type        = string
}

variable "node_count" {
  description = "Number of nodes in the AKS default node pool"
  type        = number
  default     = 1
}

variable "vm_size" {
  description = "VM size for the AKS nodes"
  type        = string
}

variable "acr_name" {
  description = "The name of the Azure Container Registry"
  type        = string
}

variable "acr_sku" {
  description = "SKU for the Azure Container Registry"
  type        = string
  default     = "Premium"
}

variable "acr_replication_locations" {
  description = "List of locations for ACR geo-replication"
  type        = list(string)
  default     = []
}

variable "subscription_id" {
  type        = string
  description = "Azure Subscription ID"
}

variable "client_id" {
  type        = string
  description = "Azure Service Principal App ID (client ID)"
}

variable "client_secret" {
  type        = string
  sensitive   = true
  description = "Azure Service Principal Secret"
}

variable "tenant_id" {
  type        = string
  description = "Azure Tenant ID"
}
