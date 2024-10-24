# Gitlab EKS Terraform Pipeline

Run terraform pipeline to build EKS cluster via Gitlab Runners with gitlab managed state


Gitlab provides a http backend to store the terraform state. With this and pipelines you can create infrastructre directly in Git with the system lifecycle contained within a project.

## You will need

    * A gitlab project and access token https://docs.gitlab.com/ee/user/project/settings/project_access_tokens.html
    * An AWS access key and secret key for your account
    * terraform (Windows/Mac/Linux)



## Step 1. Create a project in Gitlab
Its recommended you create a different project for every type of platform you want to run

![creating blank project in gitlab](/aws/iac/gitlab/eks/private/assets/images/newproject.png)


## Step 2. Provide AWS credentials
Your pipeline will run in its own Docker container with a terraform image. You can use the environment variables AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY to provide access into your AWS account. Gitlab can store these securely and populate them for you during the pipeline by entering them in the variables field under settings > CI/CD

![select CI/CD from the settings menu](/aws/iac/gitlab/eks/private/assets/images/cicdvariables1.png)

Click add variable

![select CI/CD from the settings menu](/aws/iac/gitlab/eks/private/assets/images/cicdvars2.png)
