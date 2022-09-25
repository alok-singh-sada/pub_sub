variable "project" {
  type    = string
  default = "sada-alok-singh-sandbox"
}

variable "message_retention_duration" {
  type    = string
  default = "86600s"
}

variable "labels" {
  type = map(any)
  default = {
    "foo" = "alok"
  }
}

variable "topic_name" {
  type = map(any)
  default = {
    "t_one" = "topic_one"
    "t_two" = "topic_two"
    "t_three" = "topic_three"
  }
}

variable "dead_letter_topic" {
  type = map(any)
  default = {
    "dl_one" = "dl_topic_one"
    "dl_two" = "dl_topic_two"
    "dl_three" = "dl_topic_three"
  }
}

variable "subscription_name" {
  type = map(any)
  default = {
    "s_one" = "sub_one"
    "s_two" = "sub_two"
  }
}

variable "max_delivery_attempts" {
  type    = number
  default = 10
}

variable "dead_letter_topic_predefined" {
  type = string
  default = ""
}

variable "topic_name_predefined" {
  type = string
  default = ""
}