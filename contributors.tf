# Someone Elses Contributors GitHub Team
locals {

  contributors = [
    "USERNAME" #github username
  ]

}

# Create a contributors team
resource "github_team" "contributors" {
  name        = "contributors"
  description = "contributors GitHub Team"
  privacy     = "closed"
}

# Add contributors team as orgnisation member
resource "github_membership" "contributors" {
  for_each = toset(local.contributors)

  username = each.value
  role     = "member"
}

# Add contributors to github team
resource "github_team_members" "contributors" {
  for_each = toset(local.contributors)

  team_id = github_team.contributors.id

  members {
    username = each.value
    role     = "member"
  }

}

# Set permissions to respositories for contributors github team
resource "github_team_repository" "contributors" {
  for_each = toset(local.respositories)

  team_id    = github_team.contributors.id
  repository = each.value
  permission = "push"

  depends_on = [
    github_repository.respositories
  ]

}