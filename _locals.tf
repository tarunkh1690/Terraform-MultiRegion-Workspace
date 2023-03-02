locals {
  common_tags = {
    project     = "terraform-workspaces-check"
    environment = var.workspaces-name[var.aws_region]
  }
  name_prefix = "${var.name}-${terraform.workspace}"
}


