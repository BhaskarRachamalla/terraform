#ec2
variable "instance_name" {
    type = list
    default = ["db", "backend", "frontend"]
  
}

variable "image_id" {
    
    default = "ami-090252cbe067a9e58"
    description = "RHEL 9 AMI ID"

}

variable "instance_type"{
    default = "t2.micro"
}

variable "common_tags"{
    default = {
        Environment = "Dev"
        Module = "db"
        terraform = "true"

    }
}

#security groups
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

#r53

variable "zone_id" {
  default = "Z003596238BW1AYIQ2MGA"
}

variable "record_name" {
    default = "devopsbhaskar.online"
  
}