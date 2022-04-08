terraform {
  required_providers {
    vsphere = {
      source = "hashicorp/vsphere"
    }
  }
}


data "http" "example" {
  url = "https://elasticsearch.default.svc.cluster.local:9200/_cat/indices?v"

  # Optional request headers
  request_headers = {
    Accept = "application/json"
  }
}

output "http"{
  value = data.http.example.body
}

#module "files" {
#  source  = "matti/resource/shell"
#  command = "wget -qO- elasticsearch.default.svc.cluster.local:9200/_cat/indices?v"
#}

#output "my_files" {
#  value = module.files.stdout
#}
