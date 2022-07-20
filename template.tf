resource "github_repository" "repo_template" {
  name        = "repo-template"
  description = "This is a repo template for new repositories"

  visibility  = "private"
  is_template = true
  auto_init   = true
}

resource "github_branch" "repo_template" {
  repository = github_repository.repo_template.name
  branch     = "master"
}

resource "github_branch_default" "repo_template" {
  repository = github_repository.repo_template.name
  branch     = github_branch.repo_template.branch
}

resource "github_repository_file" "repo_template_pr" {
  repository          = github_repository.repo_template.name
  branch              = "master"
  file                = ".github/pull_request_template.md"
  content             = file("template/.github/pull_request_template.md")
  commit_message      = "Managed by Terraform"
  commit_author       = "Terraform"
  commit_email        = "terraform@someoneelsesemail.com"
  overwrite_on_create = true
}

resource "github_repository_file" "repo_template_codeowners" {
  repository          = github_repository.repo_template.name
  branch              = "master"
  file                = ".github/CODEOWNERS"
  content             = file("template/.github/CODEOWNERS")
  commit_message      = "Managed by Terraform"
  commit_author       = "Terraform"
  commit_email        = "terraform@someoneelsesemail.com"
  overwrite_on_create = true
}