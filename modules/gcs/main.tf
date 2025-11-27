resource "google_storage_bucket" "default" {
    name          = "${var.project_id}-test_bucket2"
    location      = var.region
    storage_class = "STANDARD"

    uniform_bucket_level_access = true
}
