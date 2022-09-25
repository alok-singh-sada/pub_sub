provider "google" {
  project = var.project
}

locals {
  subscription_name     = var.subscription_name
  topic                 = var.topic
  dead_letter_topic   = var.dead_letter_topic
  max_delivery_attempts = var.max_delivery_attempts
}

resource "google_pubsub_subscription" "example_subscription" {
  for_each = local.subscription_name
  name     = each.value
  topic    = local.topic

  dead_letter_policy {
    dead_letter_topic     = local.dead_letter_topic
    max_delivery_attempts = local.max_delivery_attempts
  }
}