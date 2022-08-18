
# Configure the AWS Provider
provider "aws" {
  region = "us-west-2"
}

terraform {
  
  required_version = "~>1.2.7"
  
  backend "remote" {
    workspaces { name  = "terr-cloud" }
    hostname = "app.terraform.io"
    organization = "kidane-Deloitte"
  }

}

resource "aws_iam_user" "mylb" {
  name = "remoteuser"
  path = "/system/"
}