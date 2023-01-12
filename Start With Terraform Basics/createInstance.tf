
resource "aws_instance" "MyHB-Instance1"{
  count = 3
  ami="ami-0039da1f3917fa8e3"
  instance_type = "t2.micro"

  tags = {
    Name = "DemoInstance-$(count.index + 1)"
  }
}

