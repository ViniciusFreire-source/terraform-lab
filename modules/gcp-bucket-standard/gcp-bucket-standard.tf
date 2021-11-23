resource "google_storage_bucket" "bucket_standard" {
  name          = "${var.name}-${terraform.workspace}"
  location      = var.region
  project       = var.project_id[terraform.workspace]
  storage_class = var.storage_class
  logging {
    log_bucket        = "${var.name}-${terraform.workspace}-logs"
    log_object_prefix = "logs"
  }
}

output "config" {
  value = {
    name          = google_storage_bucket.bucket_standard.name
    location      = google_storage_bucket.bucket_standard.location
    project       = google_storage_bucket.bucket_standard.project
    storage_class = google_storage_bucket.bucket_standard.storage_class
  }
}