terraform {
  required_providers {
    http = {
      source = "hashicorp/http"
      version = "1.2.0"
    }
  }
}

data "http" "example" {
  url = "http://elasticsearch.default.svc.cluster.local:9200/_cat/indices?v"

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
