module "create_subscription" {
  source                = "../../modules/pubsub_subscription"
  subscription_name     = var.subscription_name
  project               = var.project
  topic                 = var.topic_name_predefined
  dead_letter_topic     = var.dead_letter_topic_predefined
  max_delivery_attempts = var.max_delivery_attempts
}