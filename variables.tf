variable "compute_name" {
  default     = ""
  description = "Instance Name"
}

variable "count_compute" {
  default     = ""
  description = "Instance Count"
}

variable "compute_type" {
  default     = ""
  description = "Instance Machine Type"
}

variable "compute_zones" {
  default     = []
  description = "Instance Zones"
}

variable "images_name" {
  default     = ""
  description = "Instance Image"
}

variable "ip_forward" {
  default     = ""
  description = "Enable or Disable IP Forward"
}

variable "size_root_disk" {
  default     = ""
  description = "Instance Root Disk in GB"
}

variable "type_root_disk" {
  default     = ""
  description = "Instance Type Disk"
}

variable "service_group" {
  default     = ""
  description = "label, network tags or something else"
}

variable "service_type" {
  default     = ""
  description = "label, network tags or something else"
}

variable "network_tier" {
  default     = ""
  description = "Network Type"
}

variable "project" {
  default     = ""
  description = "Project ID"
}

variable "region" {
  default     = ""
  description = "Instance Region"
}

variable "environment" {
  default     = ""
  description = "label, network tags or something else"
}
