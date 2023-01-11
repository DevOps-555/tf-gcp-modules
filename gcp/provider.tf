terraform {
  required_version = ">= 1.1.9"

  backend "gcs" {
    bucket  = "will pick from state"
    prefix  = "will pick from state"
  }
  
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.47.0"
    }

    google-beta = {
      source  = "hashicorp/google-beta"
      version = "4.47.0"
    } 
  }
}