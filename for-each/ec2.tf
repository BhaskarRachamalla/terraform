resource "aws_instance" "expense" {

    for_each = var.instance_name
    ami = var.image_id
    vpc_security_group_ids =  [aws_security_group.allow_ssh.id]
    instance_type = each.value  == "db" ? "t3.small" : "t2.micro"

    tags =  merge (
      var.common_tags,{

        Name = each.key
        Module = each.key
      }
    )
    
}

resource "aws_security_group" "allow_ssh" {
  name        = var.sg_name
  description = var.sg_description

  # this is block

  ingress {
    from_port        = var.ssh_port
    to_port          = var.ssh_port
    protocol         = var.protocol
    cidr_blocks      = var.allow_cidr
    
  }


egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = var.allow_cidr
    
  }


  tags = {
    Name = "allow_ssh"
    createdby = "Bhaskar"
  }
}

