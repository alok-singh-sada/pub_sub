variable "project" {
  type    = string
  default = "dpskanpur-backup"
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
  }
}

variable "dead_letter_topic" {
  type = map(any)
  default = {
    "dl_one" = "dl_topic_one"
    "dl_two" = "dl_topic_two"
  }
}

variable "TF_VAR_SA" {}