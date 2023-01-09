## --- DEFAULT PARAMETERS ------------------------------------------------------------------------------------------------

variable "gcp_project" {}

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
    #   gce_snw_gateway_address = string
  })
}