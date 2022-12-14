
## --- DEFAULT PARAMETERS ------------------------------------------------------------------------------------------------

gcp_project     = "nth-glass-338610"

## --- INSTANCE 01 PARAMETERS ---------------------------------------------------------------------------------------------
gce-instance-01 = {
    gce_instance_name       = "ansible-server-01"
    gce_hostname            = "ansible.ml"
    gce_region              = "europe-west3"
    gce_zones               = "europe-west3-c"
    gce_tags                = ["ansible", "ansible-server-01"]
    gce_machine_type        = "e2-medium"
    gce_boot_disk_size      = 20
    gce_boot_disk_image     = "debian-cloud/debian-11"
    gce_vpc_nw              = "default"
    gce_snw                 = "default"

}

## --- NETWORKING PARAMETERS ---------------------------------------------------------------------------------------------

# nw-01 = {
#     gce_vpc_name = "noc-playground-vpc"
# }

# snw-01 = {
#     gce_snw          = ["noc-customer-subnet","noc-collector-subnet"]
#     auto_create_subnetworks = false
#     ip_cidr_range = 
#     snw_region = 
# }