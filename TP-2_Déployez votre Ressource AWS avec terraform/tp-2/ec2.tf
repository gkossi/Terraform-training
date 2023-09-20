provider "aws" {
    region = "us-east-1"
    access_key = "AKIA3OX2XYDUCA4Y2C6F"
    secret_key = "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"
}

resource "aws_instance" "ggsec2" {
    ami           = "ami-026ebd4cfe2c043b2"
    instance_type = "t2.micro" 
    key_name = "devops-kossi"

    tags = {
      Name = "ec2-gkossi02"
    }

    root_block_device {
      delete_on_termination = true
    }
}