# Creates VPC for cluster. Please enter the desired cidr for your deployment



resource "aws_vpc" "tftestvpc" {
  cidr_block = "10.3.0.0/23"
  enable_dns_hostnames = true

}

