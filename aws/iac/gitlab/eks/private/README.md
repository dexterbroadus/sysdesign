# Gitlab EKS Terraform Pipeline

Run terraform pipeline to build EKS cluster via Gitlab Runners with gitlab managed state


Gitlab provides a http backend to store the terraform state. With this and pipelines you can create infrastructre directly in Git with the system lifecycle contained within a project.

## You will need

    * A gitlab access token https://docs.gitlab.com/ee/user/project/settings/project_access_tokens.html
    * An AWS access key and secret key for your account
    * terraform (Windows/Mac/Linux)



