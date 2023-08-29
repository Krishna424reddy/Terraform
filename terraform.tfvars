vpc_cidr             = "10.1.0.0/16"
vpc_name             = "DEV_VPC"
public_subnet_cidrs  = ["10.1.1.0/24", "10.1.2.0/24", "10.1.3.0/24"]
private_subnet_cidrs = ["10.1.10.0/24", "10.1.20.0/24", "10.1.30.0/24"]
azs                  = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]
ingress = [443,80,1433,5566]
egress = [443,80,1433,5566]
