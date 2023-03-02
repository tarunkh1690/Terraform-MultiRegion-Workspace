terraform {
  required_version = "1.0.2"

  backend "remote" {
    organization = "tarun_org"

    workspaces {
      name = "Terraform-MultiRegion-Workspace-"
    }
  }
}
