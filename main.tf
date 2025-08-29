terraform {
  required_providers {
    vagrant = {
      source  = "bmatcuk/vagrant"
      version = ">= 4.0.0"
    }
  }

  required_version = ">= 1.5.0"
}

provider "vagrant" {}

resource "null_resource" "ubuntu_vm" {
  provisioner "local-exec" {
    command     = "vagrant up"
    working_dir = "C:/Users/USER/Desktop/Workshop/terraform-vagrant-vm-workflow"
    

  }
}

output "vagrant_info" {
  value = "Alles gut"
}
