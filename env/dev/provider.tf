terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
    }
  }

  backend "gcs" {
    #bucket = "${var.project_id}-terraform"
    prefix = "provisioning/dev"
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
  impersonate_service_account = "sa-terraform@${var.project_id}.iam.gserviceaccount.com"
}
