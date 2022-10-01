variable "ue1_private_subnet" {
  default = "10.26.3.0/24"
}
variable "ue1_public_subnet" {
  default = "10.26.4.0/24"
}

variable "region" {
  description = "The region in which to create the VPC network"
  type        = string
  default     = "us-east1"
}

variable "zone" {
  description = "The zone in which to create the infrastructure"
  type        = string
  default     = "us-east1-b"
}

variable "project" {
  description = "The project name"
  type        = string
  default     = "csye7125-3"
}

variable "key-path" {
  description = "Path to ssh Key file"
  type        = string
  default     = "/home/roadrunner/.ssh/id_ed25519.pub"
}
