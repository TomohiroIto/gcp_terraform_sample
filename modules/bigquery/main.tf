resource "google_bigquery_dataset" "dataset" {
  dataset_id                  = "example_dataset2"
  description                 = "This is a test description"
  location                    = var.region
  default_table_expiration_ms = 3600000
}
