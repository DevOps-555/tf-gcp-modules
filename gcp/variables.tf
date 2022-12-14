
## --- DEFAULT PARAMETERS ------------------------------------------------------------------------------------------------

variable "gcp_project" {}

variable gce_instance_name {}
variable gce_hostname {}
variable gce_region   {}
variable gce_zones    {}
variable gce_tags     {}
variable gce_machine_type {}  
variable gce_boot_disk_size {} 
variable gce_boot_disk_image {}
variable gce_vpc_nw   {}
variable gce_snw {}



## --- INSTANCE 01 PARAMETERS ---------------------------------------------------------------------------------------------
# variable "gce-instance-01" {
#     type = object({
#             gce_instance_name   = string
#             gce_hostname        = string
#             gce_region          = string
#             gce_zones           = string
#             gce_tags            = list(string)
#             gce_machine_type    = string
#             gce_boot_disk_size  = number
#             gce_boot_disk_image = string
#             gce_vpc_nw          = string
#             gce_snw             = string
#     })
# }
