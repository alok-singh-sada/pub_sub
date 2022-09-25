variable "project" {
  type = string
}

variable "message_retention_duration" {
  type = string
}

variable "labels" {
  type = map(any)
}

variable "topic_name" {
  type = map(any)
}