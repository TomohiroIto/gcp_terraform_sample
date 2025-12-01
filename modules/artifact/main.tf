resource "google_artifact_registry_repository" "docker_repo_cloudrun" {
  location      = var.region
  repository_id = "sample-repo"
  description   = "Docker repository for cloudrun"
  format        = "DOCKER"
}
