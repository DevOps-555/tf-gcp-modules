
resource "google_storage_bucket" "default" {
  name = var.bucket_name
  force_destory = false
  storage_class = var.storage_class
  location = var.bucket_location
  versioning {
    enabled = true
  }
}