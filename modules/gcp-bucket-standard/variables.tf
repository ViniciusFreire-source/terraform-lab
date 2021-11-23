variable "project_id" {
  type = map(any)
  default = {
    "develop" = "terraform-lab-develop"
    "staging" = "terraform-lab-staging"
    "master"  = "terraform-lab-master"
  }
}

variable "name" {
  type = string
}

variable "region" {
  type    = string
  default = "SOUTHAMERICA-EAST1"
}

variable "storage_class" {
  type    = string
  default = "STANDARD"
}