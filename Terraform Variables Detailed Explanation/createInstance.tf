
resource "aws_instance" "MyHB-Instance1"{
 # count = 3
  ami= lookup(var.AMIS, var.AWS_REGION)
  instance_type = "t2.micro"

  tags = {
    Name = "DemoInstance-1"
  }

  security_groups = "${var.Security_Groups}"

}

