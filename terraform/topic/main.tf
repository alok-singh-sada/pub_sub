# locals {
#   dead_letter_topic = var.dead_letter_topic_predefined != "" ? var.dead_letter_topic_predefined : module.create_dead_letter_topic.topic_name[0]
#   topic             = var.topic_name_predefined != "" ? var.topic_name_predefined : module.create_topic.topic_name[0]
# }

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

# module "create_subscription" {
#   source                = "../modules/pubsub_subscription"
#   subscription_name     = var.subscription_name
#   project               = var.project
#   topic                 = local.topic
#   dead_letter_topic     = local.dead_letter_topic
#   max_delivery_attempts = var.max_delivery_attempts
# }