resource "google_dataform_repository" "dataform_repository" {
  provider = google-beta
  name = "dataform_repository"
  service_account = "sa-terraform@${var.project_id}.iam.gserviceaccount.com"
  region = var.region
  project = var.project_id

  git_remote_settings {
      url = var.dataform_git_url
      default_branch = "main"
      authentication_token_secret_version = "projects/${var.project_num}/secrets/all_git/versions/latest"
  }
}
