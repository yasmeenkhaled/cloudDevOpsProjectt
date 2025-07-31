variable "project_name" {
  default = "CloudDevOpsProject"
}

variable "key_name" {
  default = "CloudDevOpsProject-keypair"
}

variable "ami_id" {
  default = "ami-0cbbe2c6a1bb2ad63" # Amazon Linux 2023
}
variable "private_key_path" {
  description = "Path to the private key file"
  type        = string
}
