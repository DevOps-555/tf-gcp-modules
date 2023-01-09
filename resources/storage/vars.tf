## --- DEFAULT PARAMETERS ------------------------------------------------------------------------------------------------

variable "gcp_project" {}

variable "gcs-bucket" {
    type = object({
        gcs_bucket_name = string
        gcs_bucket_storage_class = string
        gcs_public_access_prevention = string
    })
}