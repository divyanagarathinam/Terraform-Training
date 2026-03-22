provider "aws" {
region = "us-east-1"
}

resource "aws_key_pair" "my_key" {
  key_name   = "mynewkey"
  public_key = var.public_key
}

 resource "aws_instance" "ec2_instance" {
  for_each = var.instance_names
  /*count         = var.instance_count*/
  ami           = "ami-02dfbd4ff395f2a1b"
  instance_type = var.instance_type

  key_name = aws_key_pair.my_key.key_name

  tags = {
    Name = each.value
  }
}
