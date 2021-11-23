module "gcp_bucket_vini_files" {
  source = "./modules/gcp-bucket-standard"
  name   = "vini-files"
}

resource "google_storage_bucket" "gcp_bucket_vini_files_logs" {
  name          = "${module.gcp_bucket_vini_files.config.name}-logs"
  location      = module.gcp_bucket_vini_files.config.location
  project       = module.gcp_bucket_vini_files.config.project
  storage_class = module.gcp_bucket_vini_files.config.storage_class
}