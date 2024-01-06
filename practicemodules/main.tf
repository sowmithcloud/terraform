# VPC Module, Internet Gateway Module, Route Tables Module, Route Associations Module, Subnet Module, Security Group Module, EC2 Instance Module

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

module "vpcsubrouteig" {
  source = "./modules/vpcsubrouteig"
  
}

module "securitygroup" {
  source = "./modules/securitygroup"

}

module "Instance" {
  source = "./modules/instance"

}

