provider "aws" {
  region = "ap-south-1" 
}

resource "aws_instance" "SERVEREC2" {
  ami           = "ami-0449c34f967dbf18a"   # ap-south-1 Asia pacific Mumbai
  instance_type = "t2.micro"       
  tags = {
    Name = "SERVER-EC2"
  }
}
