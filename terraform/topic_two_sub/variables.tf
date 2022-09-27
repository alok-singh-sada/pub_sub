variable "project" {
  type    = string
  default = "sada-alok-singh-sandbox"
}

variable "subscription_name" {
  type = map(any)
  default = {
    "s_one" = "sub_topic_one"
    "s_two" = "sub_topic_two"
    "s_three" = "sub_topic_three"
  }
}

variable "max_delivery_attempts" {
  type    = number
  default = 10
}

variable "dead_letter_topic_predefined" {
  type = string
  default = "projects/sada-alok-singh-sandbox/topics/dl_topic_two"
}

variable "topic_name_predefined" {
  type = string
  default = "projects/sada-alok-singh-sandbox/topics/topic_two"
}