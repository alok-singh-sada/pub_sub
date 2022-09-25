output "topic_name" {
  value = values(google_pubsub_topic.example).*.id
  #value = values(google_pubsub_topic.example)[*].name
}