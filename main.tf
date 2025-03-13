provider "aws" {
  region = "eu-north-1"
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-0c2e61fdcb5495691"  # Replace with latest AMI ID for eu-north-1
  instance_type = "t2.micro"
  key_name      = "New-ec2"  # Replace with your AWS key pair

  tags = {
    Name = "Terraform-GitHub-EC2"
  }
}

