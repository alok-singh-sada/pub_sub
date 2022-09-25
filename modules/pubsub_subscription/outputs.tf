output "subscription_name" {
  value = values(google_pubsub_subscription.example_subscription).*.id
}