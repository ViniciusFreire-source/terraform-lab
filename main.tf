// Configure the Google Cloud provider
provider "google" {
  project = var.project_id[terraform.workspace]
  region  = var.region
}