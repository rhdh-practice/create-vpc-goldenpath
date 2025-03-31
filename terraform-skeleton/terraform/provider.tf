provider "aws" {
  region = "${{ values.aws_region }}"
}

terraform {
  backend "s3" {
    bucket = "rhdh-practice-tfstate"
    key    = "${{ values.vpc_name }}/terraform.tfstate"
    region = "ap-northeast-1"
  }
}
