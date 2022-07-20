# Managing GitHub Organisation with Terraform Cloud

<a href="https://youtu.be/TWNgWVKTDmM">![Managing GitHub Organisation with Terraform Cloud](https://images.squarespace-cdn.com/content/5f4f7564ee0b1d1076f33d3d/1657781719695-SFL9IJN6RGVSLFJ8P048/thumbnail_github_org_v3.jpg)</a>

In this video, I'll show you how to manage your github organisation with Terraform Cloud, scenarios on how to structure your repositories, using templates to standardise deployments and controls and guardrails to protect you from issues.

Check out the blog on the website for the documentation: https://www.someoneelsescloud.com/episodes/managing-github-organisation-with-terraform-cloud

To use this demo code, please update the following:

### `variables.tf`
- Update the `github_token` with your GitHub Personal Access Token that is configured on the Terraform Workspace
- Update `github_org`  with your GitHub Organisation Name
- Update `manage_repo`  with  your GitHub repository to manage the Organisation with Terraform

### `backend.tf`
- Update `TERRAFORM-ORG` name with your Terraform Cloud Organisation name
- Update  `TERRAFORM-WORKSPACE` name with your Terraform Cloud workspace name

Check out the demo in the video on YouTube above!