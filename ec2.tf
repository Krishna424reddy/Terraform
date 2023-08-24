resource "aws_instance" "ec2_instance" {
    ami = "ami-0d951b011aa0b2c19"
    instance_type  = "t2.micro"
    
}