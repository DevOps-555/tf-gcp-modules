resource "google_storage_bucket" "terraform-bucket-001-001" {
    default_event_based_hold    = false
    force_destroy               = false
    labels                      = {
        "name" = "tf-state-bucket-001"
    }
    location                    = "US"
    name                        = var.gcs-bucket.gcs_bucket_name
    project                     = var.gcp_project
    public_access_prevention    = var.gcs-bucket.gcs_public_access_prevention
    requester_pays              = false

    storage_class               = var.gcs-bucket.gcs_bucket_storage_class
    uniform_bucket_level_access = true


    timeouts {}
}