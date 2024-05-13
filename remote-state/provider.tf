terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }


  backend "s3" {
    bucket = "bhaskardevops"
    key    = "remote-state"
    region = "us-east-1"
    dynamodb_table = "terraform-locking"
  }

}



provider "aws" {
  region = "us-east-1"
}