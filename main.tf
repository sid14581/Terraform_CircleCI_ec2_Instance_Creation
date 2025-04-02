provider "aws" {
  region = "us-east-2"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>3.0"
    }
  }
  backend "s3" {
    bucket = "devopsbyexample-tf-state-one"
    key    = "platform.tfstate"
    region = "us-east-2"
  }
}


# resource "aws_instance" "ubuntu" {
#   ami           = "ami-04f167a56786e4b09"
#   instance_type = "t2.micro"
#   subnet_id     = "subnet-0e736c939b076517a"
# }

# REmove the comment to create the cluster