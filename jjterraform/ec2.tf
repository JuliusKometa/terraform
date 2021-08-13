resource "aws_instance" "web" {
  ami           = "ami-04b6c97b14c54de18"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}
resource "aws_instance" "web2" {
  ami           = "ami-04b6c97b14c54de18"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld-2"
  }
}
provider "aws" {
  profile = "default"
  region = "us-west-1"
}
output "PublicIP" {
  value = aws_instance.web.public_ip
}
output "PrivateIP" {
    value = aws_instance.web2.private_ip
}
