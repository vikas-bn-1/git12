variable "project_name" {
  type        = string
  description = "Project Name"
  default     = "shoppiing-application"

}

variable "project_env" {
  type        = string
  description = "Project Environment"
  default     = "prod"

}

variable "source_ami_id" {
  type        = string
  description = "AMI of instances"
  default     = "ami-02e94b011299ef128"
}

locals {
  image-time-stamp = "${formatdate("DD-MM-YYYY-hh-mm", timestamp())}"
  image-name       = "${var.project_name}-${var.project_env}-${local.image-time-stamp}"
}

