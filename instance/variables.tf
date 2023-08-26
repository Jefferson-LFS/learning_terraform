
variable "envinronment" {
  type        = string
  description = ""
}

variable "aws_region" {
  type        = string
  description = ""

}

variable "aws_profile" {
  type        = string
  description = ""

}

variable "key_pair_name" {
  type        = string
  description = ""

}
# Ami variables
variable "ami_most" {
  type        = bool
  description = ""
}

variable "ami_filter_name" {
  type        = string
  description = ""
}

variable "ami_filter_values" {
  type        = list(string)
  description = ""
}

variable "ami_owners" {
  type        = list(string)
  description = ""
}

# Instance Variabbles

variable "instance_ami" {
  type        = string
  description = ""
}


variable "instance_type" {
  type        = string
  description = ""

}




variable "instance_tags" {
  type        = map(string)
  description = ""
  default = {
    Name    = "Ubuntu"
    Project = "Ubuntu Prod"
  }

}
