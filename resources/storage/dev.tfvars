## ----- Storage -----------------------

gcp_project     = "nth-glass-338610"

gcs-bucket = {
    gcs_bucket_name = "terraform-state-bucket-001"
    gcs_storage_class = "STANDARD"
    gcs_public_access_prevention = "enforced"
}