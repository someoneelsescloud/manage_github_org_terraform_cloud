terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "TERRAFORM-ORG"

    workspaces {
      name = "TERRAFORM-WORKSPACE"
    }
  }
}