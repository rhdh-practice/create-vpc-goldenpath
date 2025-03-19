provider "aws" {
  region = "${{ values.aws_region }}"
}

terraform {
  backend "s3" {
    bucket = "rhdh-practice-terraform-tfstate"
    key    = "${{ values.vpc_name }}/terraform.tfstate"
    region = "${{ values.aws_region }}"
  }
}
