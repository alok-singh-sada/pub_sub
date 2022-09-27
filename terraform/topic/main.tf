module "create_topic" {
  source                     = "../../modules/pubsub_topic"
  topic_name                 = var.topic_name
  project                    = var.project
  message_retention_duration = var.message_retention_duration
  labels                     = var.labels
}

module "create_dead_letter_topic" {
  source                     = "../../modules/pubsub_topic"
  topic_name                 = var.dead_letter_topic
  project                    = var.project
  message_retention_duration = var.message_retention_duration
  labels                     = var.labels
}