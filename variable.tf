variable "project_id" {
  type = map(any)
  default = {
    "develop" = "terraform-lab-develop"
    "staging" = "terraform-lab-staging"
    "master"  = "terraform-lab-master"
  }
}

variable "region" {
  type    = string
  default = "southamerica-east1"
}