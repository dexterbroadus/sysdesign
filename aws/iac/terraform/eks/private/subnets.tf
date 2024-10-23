# Creates the cluster subnets. Please input your desired cidr's. The two subnets must be in different AZs.


resource "aws_subnet" "tftestsub01" {


    vpc_id = aws_vpc.tftestvpc.id
    cidr_block = "x.x.x.x/24"
    availability_zone = "us-east-1a"
    depends_on = [
        aws_vpc.tftestvpc     # Depends on previously created VPC. Be sure to update the name here
    ]


}

resource "aws_subnet" "tftestsub02" {


    vpc_id = aws_vpc.tftestvpc.id
    cidr_block = "x.x.x.x/24"
    availability_zone = "us-east-1b"
    
    depends_on = [
        aws_vpc.tftestvpc   # Depends on previously created VPC. Be sure to update the name here
    ]

}