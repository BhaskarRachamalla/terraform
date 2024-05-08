variable "image_id" {
    
    default = "ami-090252cbe067a9e58"
    description = "RHEL 9 AMI ID"

}

variable "instance"{
    default = "t2.micro"
}

variable "tags"{
    default = {
        project = "db"
        Environment = "Dev"

    }
}

variable "sg_name"{
    default = "allow_ssh"
}

variable "sg_description"{
    default = "Allowing port 22"
}

variable "ssh_port"{

    default = "22"
}


variable "protocol"{
    default = "tcp"
}


variable "allow_cidr"{
    type = list(string)
    default = ["0.0.0.0/0"]
}

