
resource "aws_instance" "MyHB-Instance1"{
 # count = 3
  ami="ami-03b529a91c98c13fe"
  instance_type = "t2.micro"

  tags = {
    Name = "DemoInstance-1"
  }

  security_groups = var.Security_Groups

}

