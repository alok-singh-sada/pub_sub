variable "project" {
  type = string
}

variable "subscription_name" {
  type = map(any)
}

variable "topic" {
  type = string
}

variable "dead_letter_topic" {
  type = string
}

variable "max_delivery_attempts" {
  type = number
}