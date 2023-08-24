terraform {
backend "s3" {
 bucket = "remotestate642"
 key    = "aws_terraform.tfstate"
region = "ap-south-1"
}
}