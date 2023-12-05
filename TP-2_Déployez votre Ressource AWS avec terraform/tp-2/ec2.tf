provider "aws" {
    region = "us-east-1"
    access_key = "AKIA3Odjkfie2534X2XYDn,jtr"
    secret_key = "L510qkO6TwiZfiYww912245358221itkisb5xjglHbU+hjkl"
}

resource "aws_instance" "ggsec2" {
    ami           = "ami-026ebd4cfe2c043b2"
    instance_type = "t2.micro" 
    key_name = "bootcamp-key"

    tags = {
      Name = "bootcamp-ec2"
    }

    root_block_device {
      delete_on_termination = true
    }
}