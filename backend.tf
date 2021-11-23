terraform {
  backend "gcs" {
    bucket = "terraform-lab-state"
    prefix = "gcp-lab-resources"
  }
}