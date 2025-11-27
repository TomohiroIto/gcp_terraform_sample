module "apis" {
  source     = "../../modules/apis"
  project_id = var.project_id
  region     = var.region
  env        = var.env
}

module "iam" {
  source     = "../../modules/iam"
  project_id = var.project_id
  region     = var.region
  env        = var.env
}

module "bigquery" {
  source     = "../../modules/bigquery"
  project_id = var.project_id
  region     = var.region
  env        = var.env
}

module "gcs" {
  source     = "../../modules/gcs"
  project_id = var.project_id
  region     = var.region
  env        = var.env
}

module "secret" {
  source     = "../../modules/secret"
  project_id = var.project_id
  region     = var.region
  env        = var.env
}
