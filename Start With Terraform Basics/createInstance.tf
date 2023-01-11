
provider "aws" {
  access_key="AKIAUDAOT56DNDTYL2GY"
  secret_key = "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"
  region = "eu-central-1"
}

resource "aws_instance" "MyHB-Instance1"{
  ami=""
  instance_type = "t2.micro"
}

