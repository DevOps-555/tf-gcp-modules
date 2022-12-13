provider "google" {
  project = var.gcp_project
  region = var.gce-instance-01.gce_region
}

provider "google-beta" {
  project = var.gcp_project
  region = var.gce-instance-01.gce_region
}

module "ansible-server-01" {
  source = "../gcp/modules/gce"

  gcp_project  = var.gcp_project

  gce-instance-01 = var.gce-instance-01
}