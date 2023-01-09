## --- DEFAULT PARAMETERS ------------------------------------------------------------------------------------------------

gcp_project     = "nth-glass-338610"

## --- INSTANCE 01 PARAMETERS ---------------------------------------------------------------------------------------------
gce-ansible-server-01 = {
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
}

## ----- Networking --------------------------------------

gce-vpc = {
    gce_vpc_name = "custom-vpc"
    gce_vpc_mtu = 1460
}

gce-subnetwork = {
    gce_snw_name = "custom-subnet"
    gce_snw_region = "europe-west3"
    gce_snw_ip_cidr_range = "10.0.0.0/24"
    # gce_snw_gateway_address = "10.0.0.1"
}

## ----- Storage -----------------------

gcs-bucket = {
    gcs_bucket_name = "terraform-state-bucket-001"
    gcs_bucket_storage_class = "STANDARD"
    gcs_public_access_prevention = "enforced"
}