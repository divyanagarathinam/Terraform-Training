provider "aws" {
region = "us-east-1"
}

resource "aws_key_pair" "my_key" {
  key_name   = "mynewkey"
  public_key = var.public_key
}

 resource "aws_instance" "ec2_instance" {
  count         = var.instance_count
  ami           = "ami-0b6c6ebed2801a5cb"
  instance_type = var.instance_type

  key_name = aws_key_pair.my_key.key_name

  tags = {
    Name = "${var.instance_name}-${count.index + 1}"
  }
}
