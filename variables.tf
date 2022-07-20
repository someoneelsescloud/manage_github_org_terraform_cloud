variable "github_token" {
description = "GitHub Personal Access Token that is configured on the Terraform Workspace"
}

variable "github_org" {
    type = string
    default =""
    description = "GitHub Organisation Name"
}

variable "manage_repo" {
    type = string
    default =""
    description = "This is the name of your GitHub repository to manage the Organisation with Terraform"
}
