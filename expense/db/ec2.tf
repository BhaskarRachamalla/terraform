resource "aws_instance" "db" {

    ami = "ami-090252cbe067a9e58"
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]
    instance_type = "t2.micro"

    tags = {
        Name = "db"
    }
}

resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allowing ssh access"
  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "TCP"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }


egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }


  tags = {
    Name = "allow_ssh"
    createdby = "Bhaskar"
  }
}


