# variables.tf

variable "atlas_public_key" {
  type        = string
  description = "MongoDB Atlas public API key"
}

variable "atlas_private_key" {
  type        = string
  description = "MongoDB Atlas private API key"
  sensitive   = true
}

variable "atlas_org_id" {
  type        = string
  description = "MongoDB Atlas organization ID"
}

variable "project_name" {
  type        = string
  description = "Name of the MongoDB Atlas project"
  default     = "example-project"
}

variable "cluster_name" {
  type        = string
  description = "Name of the MongoDB Atlas cluster"
  default     = "test-demo"
}

variable "provider_instance_size_name" {
  type        = string
  description = "Atlas provider instance size name"
  default     = "M0"
}

variable "provider_name" {
  type        = string
  description = "Atlas provider name"
  default     = "TENANT"
}

variable "backing_provider_name" {
  type        = string
  description = "Atlas backing provider name"
  default     = "AWS"
}

variable "provider_region_name" {
  type        = string
  description = "Atlas provider region name"
  default     = "US_EAST_1"
}

variable "mongo_db_major_version" {
  type        = string
  description = "MongoDB major version"
  default     = "5.0"
}

variable "database_username" {
  type        = string
  description = "Username for the database user"
  default     = "jack"
}

variable "database_password" {
  type        = string
  description = "Password for the database user"
  sensitive   = true
}

variable "ip_address" {
  type        = list(string)
  description = "IP address to whitelist"
  default     = "0.0.0.0/0"  # This allows access from anywhere. Replace with your specific IP for better security.
}
