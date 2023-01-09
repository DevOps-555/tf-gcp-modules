# google_compute_network.default:
resource "google_compute_network" "custom-vpc" {
    auto_create_subnetworks         = false
    delete_default_routes_on_create = false
    description                     = "My Custom VPC"
    enable_ula_internal_ipv6        = false
    mtu                             = var.gce-vpc.gce_vpc_mtu
    name                            = var.gce-vpc.gce_vpc_name
    project                         = var.gcp_project
    routing_mode                    = "REGIONAL"

    timeouts {}
}

# google_compute_subnetwork.default:
resource "google_compute_subnetwork" "custom-subnet" {

    description                = "my custom subnetwork"
    # gateway_address            = var.gce-subnetwork.gce_snw_gateway_address

    ip_cidr_range              = var.gce-subnetwork.gce_snw_ip_cidr_range
    name                       = var.gce-subnetwork.gce_snw_name
    network                    = google_compute_network.custom-vpc.id
    private_ip_google_access   = true
    private_ipv6_google_access = "DISABLE_GOOGLE_ACCESS"
    project                    = var.gcp_project
    purpose                    = "PRIVATE"
    region                     = var.gce-subnetwork.gce_snw_region
    secondary_ip_range         = []
    # stack_type                 = "IPV4_ONLY"

    timeouts {}
}