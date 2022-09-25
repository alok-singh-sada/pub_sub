provider "google" {
  project = var.project
}

locals {
  topic_name                 = var.topic_name
  message_retention_duration = var.message_retention_duration
}

resource "google_pubsub_topic" "example" {
  for_each                   = local.topic_name
  name                       = each.value
  labels                     = var.labels
  message_retention_duration = local.message_retention_duration
}