terraform {
  backend "s3" {
    bucket         = "terraform678"
    key            = "jenkins/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-llock"
    encrypt        = true
  }
}
