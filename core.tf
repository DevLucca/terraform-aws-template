locals {
  core_atlas_workspace = {
    production  = ""
    development = ""
  }
}

data "terraform_remote_state" "core" {
  backend = "s3"

  config = {
    hostname     = "app.terraform.io"
    organization = ""

    workspaces = {
      name = local.core_atlas_workspace[var.workspace]
    }
  }
}
