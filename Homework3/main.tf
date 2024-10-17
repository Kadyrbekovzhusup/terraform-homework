provider "aws" {
  region = "us-east-2"

}

resource "aws_key_pair" "key" {
  key_name   = "bastion-key"
  public_key = file("~/.ssh/id_rsa.pub")

}

data "aws_ami" "amazon-2" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-ebs"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  owners = ["137112412989"]
}

resource "aws_instance" "web" {
  ami                    = data.aws_ami.amazon-2.id
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.key.key_name
  vpc_security_group_ids = [aws_security_group.sg1.id]
  count                  = 3
  subnet_id              = element(var.subnets, count.index)
  user_data              = file("apache.sh")

  tags = {
    Name = "web-${count.index + 1}"
  }
}

output "ec2" {
  value = aws_instance.web[0].public_ip
}