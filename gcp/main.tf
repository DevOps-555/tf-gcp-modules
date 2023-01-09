provider "google" {
  project = var.gcp_project
}

provider "google-beta" {
  project = var.gcp_project
}

module "ansible-server-01" {
  source = "../resources/compute-01"

  gcp_project = var.gcp_project

  gce-ansible-server-01 = var.gce-ansible-server-01
}

module "networking" {
  source = "../resources/networking"

  gcp_project = var.gcp_project

  gce-vpc = var.gce-vpc
  gce-subnetwork = var.gce-subnetwork
}

module "storage" {
  source = "../resources/storage"

  gcp_project = var.gcp_project

  gcs-bucket = var.gcs-bucket

}