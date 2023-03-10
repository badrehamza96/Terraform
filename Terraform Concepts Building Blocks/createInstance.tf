resource "aws_key_pair" "hb_key_pair" {
  key_name= "hb-key"
  public_key = file(var.PATH_TO_PUBLIC_KEY)
}

resource "aws_instance" "MyHB-Instance1"{
 # count = 3
  ami= lookup(var.AMIS, var.AWS_REGION)
  instance_type = "t2.micro"
  key_name = aws_key_pair.hb_key_pair.key_name

  tags = {
    Name = "DemoInstance-1"
  }

 # security_groups = "${var.Security_Groups}"
  
  provisioner "file" {

    source = "installNginx.sh"
    destination = "/tmp/installNginx.sh"
    
  }

  provisioner "remote-exec" {

    inline = [
      "chmod +x /tmp/installNginx.sh",
      "sudo sed -i -e 's/\r$//' /tmp/installNginx.sh",  #Remove the spurious CR characters.
      "sudo /tmp/installNginx.sh",
    ]

       }
  connection {
    host        = coalesce(self.public_ip, self.private_ip)
    type        = "ssh"
    user        = var.INSTANCE_USERNAME
    private_key = file(var.PATH_TO_PRIVATE_KEY)
  }
}


