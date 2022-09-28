variable "project" {
  type    = string
  default = "dpskanpur-backup"
}

variable "subscription_name" {
  type = map(any)
  default = {
    "s_one" = "sub_one"
    "s_two" = "sub_two"
    "s_three" = "sub_three"
  }
}

variable "max_delivery_attempts" {
  type    = number
  default = 10
}

variable "dead_letter_topic_predefined" {
  type = string
  default = "projects/sada-alok-singh-sandbox/topics/dl_topic_one"
}

variable "topic_name_predefined" {
  type = string
  default = "projects/sada-alok-singh-sandbox/topics/topic_one"
}