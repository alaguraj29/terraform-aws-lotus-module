variable "amiid" {
  type = string
}

variable "instancetype" {
  type = string
}

variable "keyname" {
  type = string
}

variable "tag" {
  type = string
}

variable "cidr" {
  type = list(string)
}

variable "sgname" {
  type = string
}

