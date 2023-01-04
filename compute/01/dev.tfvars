
## --- DEFAULT PARAMETERS ------------------------------------------------------------------------------------------------

gcp_project     = "nth-glass-338610"

## --- INSTANCE 01 PARAMETERS ---------------------------------------------------------------------------------------------

gce_instance_name       = "ansible-server-01"
gce_hostname            = "ansible.ml"
gce_region              = "europe-west3"
gce_zones               = "europe-west3-c"
gce_tags                = ["ansible", "ansible-server-01"]
gce_machine_type        = "e2-medium"
gce_boot_disk_size      = 20
gce_boot_disk_image     = "ubuntu-2204-lts"
gce_vpc_nw              = "default"
gce_snw                 = "default"