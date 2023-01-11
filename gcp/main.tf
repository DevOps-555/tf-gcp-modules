provider "google" {
  project = var.gcp_project
}

provider "google-beta" {
  project = var.gcp_project
}

module "ansible-server" {
  source = "../resources/01-gce/01-ansible-server"

  gcp_project = var.gcp_project

  gce-ansible-server = var.gce-ansible-server
  
}

module "ansible-node" {
  source = "../resources/01-gce/02-ansible-node"

  gcp_project = var.gcp_project

  gce-ansible-node-01 = var.gce-ansible-node-01
  
}

module "ansible-network-server" {
  source = "../resources/networking/01-ansible-server"

  gcp_project = var.gcp_project

  gce-vpc = var.gce-vpc
  gce-subnetwork-server = var.gce-subnetwork-server
}

# module "ansible-network-node" {
#   source = "../resources/01-gce/02-ansible-node"

#   gcp_project = var.gcp_project

#   gce-vpc = var.gce-vpc
#   gce-subnetwork-node = var.gce-subnetwork-node
# }

module "storage" {
  source = "../resources/storage"

  gcp_project = var.gcp_project

  gcs-bucket = var.gcs-bucket

}