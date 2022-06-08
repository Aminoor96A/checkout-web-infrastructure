terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = var.region
}

terraform {
  backend "s3" {
    bucket = "terraform-backend-aminoor-nginx-101"
    region = "eu-west-1"
    key = "ecs/terraform.tfstate"
  }
  required_version = ">= 0.13"
}