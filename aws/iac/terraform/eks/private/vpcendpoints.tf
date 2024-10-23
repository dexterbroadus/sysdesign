
# Adds VPC endpoints to enable access to AWS services needed for EKS


resource "aws_vpc_endpoint" "elletftestec2ep"{



    depends_on = [
        aws_subnet.tftestsub01,
        aws_subnet.tftestsub02

    ]
    vpc_endpoint_type = "Interface"
    vpc_id = aws_vpc.tftestvpc.id
    service_name = "com.amazonaws.us-east-1.ec2"
    subnet_ids = [
    aws_subnet.tftestsub01.id, aws_subnet.tftestsub02.id
    ]
    private_dns_enabled = true
}


resource "aws_vpc_endpoint" "elletftestecrapiep"{



    depends_on = [
        aws_subnet.tftestsub01,
        aws_subnet.tftestsub02

    ]
    vpc_endpoint_type = "Interface"
    vpc_id = aws_vpc.tftestvpc.id
    service_name = "com.amazonaws.us-east-1.ecr.api"
    subnet_ids = [
    aws_subnet.tftestsub01.id, aws_subnet.tftestsub02.id
    ]    
    private_dns_enabled = true
}


resource "aws_vpc_endpoint" "elletftestecrdkrep"{



    depends_on = [
        aws_subnet.tftestsub01,
        aws_subnet.tftestsub02

    ]
    vpc_endpoint_type = "Interface"
    vpc_id = aws_vpc.tftestvpc.id
    service_name = "com.amazonaws.us-east-1.ecr.dkr"
    subnet_ids = [
    aws_subnet.tftestsub01.id, aws_subnet.tftestsub02.id
    ]
    private_dns_enabled = true
}

resource "aws_vpc_endpoint" "elletftesteksep"{



    depends_on = [
        aws_subnet.tftestsub01,
        aws_subnet.tftestsub02

    ]
    vpc_endpoint_type = "Interface"
    vpc_id = aws_vpc.tftestvpc.id
    service_name = "com.amazonaws.us-east-1.eks"
    subnet_ids = [
    aws_subnet.tftestsub01.id, aws_subnet.tftestsub02.id
    ]    
    private_dns_enabled = true
}


resource "aws_vpc_endpoint" "elletftesteksauthep"{



    depends_on = [
        aws_subnet.tftestsub01,
        aws_subnet.tftestsub02

    ]
    vpc_endpoint_type = "Interface"
    vpc_id = aws_vpc.tftestvpc.id
    service_name = "com.amazonaws.us-east-1.eks-auth"
    subnet_ids = [
    aws_subnet.tftestsub01.id, aws_subnet.tftestsub02.id
    ]    
    private_dns_enabled = true
}

resource "aws_vpc_endpoint" "elletfteststsep"{



    depends_on = [
        aws_subnet.tftestsub01,
        aws_subnet.tftestsub02

    ]
    vpc_endpoint_type = "Interface"
    vpc_id = aws_vpc.tftestvpc.id
    service_name = "com.amazonaws.us-east-1.sts"
    subnet_ids = [
    aws_subnet.tftestsub01.id, aws_subnet.tftestsub02.id
    ]   
    private_dns_enabled = true 
}


#S3 requires a gateway endpoint
resource "aws_vpc_endpoint" "elletftests3ep"{



    depends_on = [
        aws_subnet.tftestsub01,
        aws_subnet.tftestsub02

    ]
    vpc_endpoint_type = "Gateway"
    vpc_id = aws_vpc.tftestvpc.id
    service_name = "com.amazonaws.us-east-1.s3"
    route_table_ids = [aws_vpc.tftestvpc.main_route_table_id]
}
                                                             