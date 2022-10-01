variable "service-name" {
  description = "The service account name"
  type        = string
  default     = "service3"
}

variable "project" {
  description = "The project name"
  type        = string
  default     = "csye712522"
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

variable "key-path" {
  description = "key path for service acc json"
  type        = string
  default     = "/Users/sandy/serviceacc.json"
}
