terraform {
  backend "gcs" {
    bucket  = "terraform-state-bucket-001"
    prefix  = "terraform/state"
  }
}