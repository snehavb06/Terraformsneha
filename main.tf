
provider "aws" {
  region = "eu-north-1"  # Adjust your region
}

resource "aws_instance" "my_instance" {
  ami           = "ami-09a9858973b288bdd"  
  instance_type = "t2.micro"

  tags = {
    Name = "Sneha"
  }
}
