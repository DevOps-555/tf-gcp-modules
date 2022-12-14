terraform {
  backend "gcs" {
    # Values below will be replaced in github action from file in env folder from _gcp.state.tf .
    bucket  = "will fetch from state file"
    prefix  = "will fetch from state file"
  }

  required_version = ">= 1.1.9"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.45.0"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = "4.45.0"
    } 
  }
}