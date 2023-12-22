variable "project_name" {
  type        = string
  description = "name of the project"
}

variable "project_env" {
  type        = string
  description = "project enviorment"
}

variable "vnum" {
    type = string
    description = "version number of the AMI"
}

variable "ami" {
    type = string
    description = "source AMI ID"
}

variable "region" {
  type        = string
  description = "my region"
}

locals{
image-timestamp = "${formatdate("DD-MM-YYYY", timestamp())}"
image-name = "${var.project_name}-${var.project_env}-${var.vnum}"
}
