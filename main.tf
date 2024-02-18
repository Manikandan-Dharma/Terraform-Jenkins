provider "aws" {
  region = "us-west-2" 
}

resource "aws_instance" "SERVEREC2" {
  ami           = "ami-12345678"   
  instance_type = "t2.micro"       
  tags = {
    Name = "SERVER-EC2"
  }
}
