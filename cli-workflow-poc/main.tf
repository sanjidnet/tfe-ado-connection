terraform {
  backend "remote" {
    organization = "YOUR-TFE-ORGANIZATION"

    workspaces {
      name = "cli-workflow-poc"
    }
  }
}

variable "dummy-variable" {
  type = any
  default = ""
  description = "This dummy variable is used to test the sentinel policy enforcing the presence of description on variables' block."
}

# website::tag::1:: The simplest possible Terraform module: it just outputs "Hello, World!"
output "hello_world" {
  value = "Hello, World! We used the CLI workflow for this POC :) "
}