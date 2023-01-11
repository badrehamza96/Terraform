
provider "aws" {
  access_key="AKIAUDAOT56DKXK374NS" 
  secret_key = "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"
  region = "eu-central-1"
}

resource "aws_instance" "MyHB-Instance1"{
  ami="ami-0039da1f3917fa8e3"
  instance_type = "t2.micro"
}

