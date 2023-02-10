#terraform file for ec2 instance creation

#provider

provider "aws" {
  region = us-east-1
}


#ec2_instance
resource "ec2_instance" "demo-instance" {
  ami = "ami-0557a15b87f6559cf"
  instance_type = "t2.micro"
  tags = {
    name = "tf-instance"
  }
}
