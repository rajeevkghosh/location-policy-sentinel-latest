provider "google" {
 access_token = var.access_token
 #credentials = file("../key.json")
}

resource "google_pubsub_topic" "example" {
  name = "example-topic"

  message_storage_policy {
    allowed_persistence_regions = [
     "us-central1", "us-east-1", "us-west-1"
   ]
  }
}

resource "google_bigquery_dataset" "dataset" {
  dataset_id                  = "example_dataset"
  friendly_name               = "test"
  description                 = "This is a test description"
  #location                    = "US"
  default_table_expiration_ms = 3600000

  labels = {
    env = "default"
  }

}
