# Someone Elses Codeowners GitHub Team
locals {

  codeowners = [
    "USERNAME" #github username
  ]

}

# Create a codeowners team
resource "github_team" "codeowners" {
  name        = "codeowners"
  description = "Codeowners GitHub Team"
  privacy     = "closed"
}

# Add codeowners team as orgnisation member
resource "github_membership" "codeowners" {
  for_each = toset(local.codeowners)

  username = each.value
  role     = "member"
}

# Add codeowners to github team
resource "github_team_members" "codeowners" {
  for_each = toset(local.codeowners)

  team_id = github_team.codeowners.id

  members {
    username = each.value
    role     = "member"
  }

}

# Set permissions to respositories for codeowners github team
resource "github_team_repository" "codeowners" {
  for_each = toset(local.respositories)

  team_id    = github_team.codeowners.id
  repository = each.value
  permission = "push"

  depends_on = [
    github_repository.respositories
  ]

}