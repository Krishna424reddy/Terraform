terraform {
  backend "s3" {
    bucket = "remotestate642"
    key    = "functions.tfstate"
    region = "ap-south-1"
  }
}