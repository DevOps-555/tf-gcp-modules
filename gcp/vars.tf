## --- DEFAULT PARAMETERS ------------------------------------------------------------------------------------------------

variable "gcp_project" {}

## --- INSTANCE 01 PARAMETERS ---------------------------------------------------------------------------------------------
variable "gce-ansible-server-01" {
    type = object({
            gce_instance_name   = string
            gce_hostname        = string
            gce_region          = string
            gce_zones           = string
            gce_tags            = list(string)
            gce_machine_type    = string
            gce_boot_disk_size  = number
            gce_boot_disk_image = string
            gce_vpc_nw          = string
            gce_snw             = string
    })
}

## ----- Networking --------------------------------------

variable "gce-vpc" {
  type = object ({
            gce_vpc_name = string
            gce_vpc_mtu = number
  })
}

variable "gce-subnetwork" {
  type = object ({
            gce_snw_name = string
            gce_snw_region = string
            gce_snw_ip_cidr_range = string
            # gce_snw_gateway_address = string
  })
}

## ----- Storage -----------------------

variable "gcs-bucket" {
    type = object({
        gcs_bucket_name = string
        gcs_bucket_storage_class = string
        gcs_public_access_prevention = string
    })
}