
# Creates eks cluster. Needs a unique name
resource "aws_eks_cluster" "elletestcluster01" {
  name     = "elletestcluster01"
  role_arn = aws_iam_role.cluster_role.arn


# Configure private/public endpoints for the cluster api. Provide cluster subnets created in subnets.tf
  vpc_config {
    endpoint_private_access = true
    endpoint_public_access  = false
    subnet_ids = [
            aws_subnet.tftestsub01.id, aws_subnet.tftestsub02.id
    ]



  }
  depends_on = [
    aws_iam_role.cluster_role,
    aws_vpc.tftestvpc,
    aws_vpc_endpoint.elletftestec2ep,
    aws_vpc_endpoint.elletftestecrapiep,
    aws_vpc_endpoint.elletftestecrdkrep,
    aws_vpc_endpoint.elletftesteksauthep,
    aws_vpc_endpoint.elletftesteksep,
    aws_vpc_endpoint.elletftests3ep,
    aws_vpc_endpoint.elletfteststsep
  ]

}

# Output API address
output "endpoint" {
    value = aws_eks_cluster.elletestcluster01.endpoint
}

output "kubeconfig-certificate-authority-data"{
      value = aws_eks_cluster.elletestcluster01.certificate_authority[0].data
}