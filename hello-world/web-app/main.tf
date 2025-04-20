terraform {
  cloud {

    organization = "ISIMM-TEST"

    workspaces {
      name = "gh-actions"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

module "web-app-module" {
  source        = "./modules"
  app_name      = "web-app"
  ami           = "ami-011899242bb902164" # Ubuntu 20.04 LTS // us-east-1
  instance_type = "t2.micro"
  region        = "us-east-1"
}