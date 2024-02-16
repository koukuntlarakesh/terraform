resource "aws_instance" "web" {
  ami           = var.ec2_ami
  instance_type = var.ec2_intance_type
  vpc_security_group_ids = [ aws_security_group.roboshop-all.id ]

  tags = {
    Name = "HelloWorld"
  }
}
resource "aws_security_group" "roboshop-all" { # terraform name for teraform reference only 
  name        = var.sg_name # this is aws resource name 
  description = var.sg_description
  #vpc_id      = aws_vpc.main.id

   
   ingress {
    description      = " Allow all ports "
    from_port        = var.inbound_from_port
    to_port          = 0
    protocol         = "tcp"
    cidr_blocks      = var.cidr_blocks 
    #ipv6_cidr_blocks = ["::/0"]
  }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  tags = {
    Name = "roboshop-aws-all"
  }
}
  