
# Creates policy document for trust relationship.

data "aws_iam_policy_document" "eks_source" {
  statement {
    actions   =   ["sts:AssumeRole"]
                
    principals {
      type = "Service"
      identifiers = ["eks.amazonaws.com", "ec2.amazonaws.com"]
    }
  }


}


# Creates data object for the EKS CLuster Policy arn
data "aws_iam_policy" "eksclusterpolicy" {
  arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
}


# Consume data object to attach policy to new role
resource "aws_iam_role_policy_attachment" "eksclusterpolicyattach" {
  role       = aws_iam_role.cluster_role.name
  policy_arn = data.aws_iam_policy.eksclusterpolicy.arn
  depends_on = [aws_iam_role.cluster_role]
}

# Create role
resource "aws_iam_role" "cluster_role" {
  depends_on = [data.aws_iam_policy_document.eks_source]
  assume_role_policy  = data.aws_iam_policy_document.eks_source.json
name = "elle-eks-test-role01"
}
