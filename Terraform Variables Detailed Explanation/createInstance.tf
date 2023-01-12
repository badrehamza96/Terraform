
resource "aws_instance" "MyHB-Instance1"{
 # count = 3
  ami="ami-03b529a91c98c13fe"
  instance_type = "t2.micro"

  tags = {
    Name = "DemoInstance-1"
  }
 /*
  ignore_changes = ["AWS_ACCESS_KEY","AWS_SECRET_KEY" ]
*/
}

