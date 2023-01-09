## --- DEFAULT PARAMETERS ------------------------------------------------------------------------------------------------

gcp_project     = "nth-glass-338610"

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
