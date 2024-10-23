resource "aws_vpc_peering_connection" "elletftestpeer"{


    depends_on = [
        aws_vpc.tftestvpc
    ]
    peer_owner_id = "" 
    vpc_id = aws_vpc.tftestvpc.id
    peer_vpc_id = "vpc-027fff"
}