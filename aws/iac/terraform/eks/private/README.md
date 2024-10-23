# EKS deployment

Creates:
* 1 VPC
* 2 private subnets
* 7 vpc endpoints
* 1 role
* 1 EKS Cluster


## Creates a new VPC, two subnets and necessary endpoints to deploy EKS into a private cluster. Please define 2 cluster subnet CIDRs in the subnets.tf file. 



Recommended exporting AWS_ACCESS_KEY_ID= and AWS_SECRET_ACCESS_KEY= for AWS credentials

Usage:

```

terraform init
terraform plan
terraform apply


```
