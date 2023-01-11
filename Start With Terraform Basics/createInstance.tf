
provider "aws" {
  access_key="AKIAUDAOT56DKXK374NS" 
  secret_key = "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"
  region = "eu-central-1"
}

resource "aws_instance" "MyHB-Instance1"{
  ami="ami-09042b2f6d07d164a"
  instance_type = "t2.micro"
}

