## --- DEFAULT PARAMETERS ------------------------------------------------------------------------------------------------

variable "gcp_project" {}

## --- INSTANCE 01 PARAMETERS ---------------------------------------------------------------------------------------------

variable "gce_instance_name" {
  type = string
}

variable "gce_hostname" {
  type = string
}

variable "gce_region" {
  type = string
}

variable "gce_zones" {
  type = string
}

variable "gce_tags" {
  type = string
}

variable "gce_machine_type" {
  type = string
}

variable "gce_boot_disk_image" {
  type = string
}

variable "gce_boot_disk_size" {
  type = number
}

variable "gce_vpc_nw" {
  type = string
}
        
variable "gce_snw" {
    type = string
}