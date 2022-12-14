provider "google" {
  project = var.gcp_project
  region = var.gce-instance-01.gce_region
}

provider "google-beta" {
  project = var.gcp_project
  region = var.gce-instance-01.gce_region
}

module "ansible-server-01" {
  source = "./modules/gce"
  gcp_project  = var.gcp_project

  gce_instance_name       = var.gce_instance_name
  gce_hostname            = var.gce_hostname
  gce_region              = var.gce_region
  gce_zones               = var.gce_zones
  gce_tags                = ["ansible", "ansible-server-01"]
  gce_machine_type        = var.gce_machine_type
  gce_boot_disk_size      = var.gce_boot_disk_size
  gce_boot_disk_image     = var.gce_boot_disk_image
  gce_vpc_nw              = "default"
  gce_snw                 = "default"
}