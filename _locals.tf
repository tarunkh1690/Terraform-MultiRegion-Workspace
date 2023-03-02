locals {
  common_tags = {
    project     = "terraform-workspaces-check"
    environment = terraform.workspace
  }
  name_prefix = "${var.name}-${terraform.workspace}"
}


