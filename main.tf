terraform {
  required_providers {
    vsphere = {
      source = "hashicorp/vsphere"
    }
  }
}

module "files" {
  source  = "matti/resource/shell"
  command = "wget -qO- elasticsearch.default.svc.cluster.local:9200/_cat/health?format=json"
}

output "my_files" {
  value = module.files.stdout
}
