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