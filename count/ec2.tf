resource "aws_instance" "example"{
    count = 10
    ami             = "ami-0220d79f3f480ecf5"
    instance_type   = "t3.micro"
    vpc_security_group_ids = [aws_security_group.allow_tls.id]

    tags = {
        Name = var.instance[count.index]
        Project = "roboshop"
    }
} 

resource "aws_security_group" "allow_tls" {
    name        = "allow-all-roboshop"
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