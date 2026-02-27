resource "aws_instance" "example"{
    for_each = var.instance 
    ami             = "ami-0220d79f3f480ecf5"
    instance_type   =  each.value
    vpc_security_group_ids = [aws_security_group.allow_tls.id]

    tags = {
        Name = "each.key"
        Project = "roboshop"
    }
} 

resource "aws_security_group" "allow_tls" {
    name        = "allow-all-terraform"
    description = "allow TLS inbound traffic and outbound traffic"

    tags = {
        name = "allow_all_terraform"
    }

    egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

    ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

}

