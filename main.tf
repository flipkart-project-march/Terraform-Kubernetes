terraform {
  required_version = ">= 0.12"
    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = "~> 3.0"
        }
    }
    backend "s3" {
    bucket        = "kubernetes-terraform-s3-bucket-s395361"
    key           = "terraform/state.tfstate"
    region        = "us-east-1"
    use_lockfile  = true
  }
}
provider "aws" {
  region = "us-east-1"
}

module "s3_bucket" {
  source      = "./Modules/S3"
  bucket_name = var.bucket_name
}