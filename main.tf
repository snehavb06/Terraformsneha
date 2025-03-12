provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-0672fd5b9210aa093"  # Replace with latest AMI ID for ap-southeast-1
  instance_type = "t2.micro"
  key_name      = "new-sign"  # Replace with your AWS key pair

  tags = {
    Name = "Terraform-GitHub-EC2"
  }
}

