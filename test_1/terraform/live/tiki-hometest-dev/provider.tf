terraform {
  backend "gcs" {
    bucket      = "cp-tf-state"
    prefix      = "hometest.tfstate"
    credentials = "~/.config/gcloud/hometest_sa.json"
  }

  required_version = ">= 0.14"
}

provider "google" {
  credentials = file("~/.config/gcloud/hometest_sa.json")
  project     = var.google_project_id
  region      = var.region
  zone        = var.zone_sing_b
}
