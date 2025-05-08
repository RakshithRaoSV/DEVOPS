provider "aws" {
  region = "eu-north-1"
}


variable "instance_type" {
  default = "t3.micro"
}


resource "aws_instance" "example" {
  ami           = "ami-0c1ac8a41498c1a9c"
  instance_type = var.instance_type

  tags = {
    Name = "Terraform-VM"
  }
}


output "instance_id" {
  value = aws_instance.example.id
}


output "public_ip" {
  value = aws_instance.example.public_ip
}


output "public_dns" {
  value = aws_instance.example.public_dns
}
