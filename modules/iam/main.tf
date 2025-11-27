resource "google_service_account" "workflows_sa" {
  project      = var.project_id
  account_id   = "sa-workflows"
}

resource "google_project_iam_member" "role_workflows" {
  for_each = toset([
    "roles/run.invoker",
    "roles/workflows.invoker",
    "roles/logging.logWriter",
  ])

  project = var.project_id
  role    = each.key
  member  = "serviceAccount:${google_service_account.workflows_sa.email}"
}
