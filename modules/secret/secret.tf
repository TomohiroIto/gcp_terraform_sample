resource "google_secret_manager_secret" "general-secret" {
  secret_id = "general-secret"

  replication {
    auto {}
  }
}

resource "google_secret_manager_secret_version" "general-secret-version" {
  secret      = google_secret_manager_secret.general-secret.id
  secret_data = "b"

  deletion_policy = "DELETE"
}
