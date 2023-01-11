
provider "aws" {
  access_key="AKIAUDAOT56DN5U4FIGO" 
  secret_key = "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"
  region = "eu-central-1"
}

resource "aws_instance" "MyHB-Instance1"{
  ami="ami-0039da1f3917fa8e3"
  instance_type = "t2.micro"
}

