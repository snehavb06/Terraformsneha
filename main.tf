provider "aws" {
  region = "eu-north-1"  # Specify your region
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-09a9858973b288bdd"  # Use a valid, region-specific AMI ID
  instance_type = "t2.micro"               # Ensure the instance type is compatible with the AMI
  key_name      = "New-ec2r"          # Specify an existing SSH key pair

  # Security group (ensure it exists in your region)
  security_groups = ["default"]

  # Optional: Add any additional tags or configurations
  tags = {
    Name = "SpaceliftEC2Instance"
  }
}
