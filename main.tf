terraform {
  required_providers {
    http-client = {
      source = "dmachard/http-client"
      version = "0.0.3"
    }
  }
}


data "httpclient_request" "req" {
  url = "http://elasticsearch.default.svc.cluster.local:9200/_cat/indices?v"
  request_headers = {
    Content-Type: "application/json",
  }
}

output "response_body" {
  value = jsondecode(data.httpclient_request.req.response_body)
}


#module "files" {
#  source  = "matti/resource/shell"
#  command = "wget -qO- elasticsearch.default.svc.cluster.local:9200/_cat/indices?v"
#}

#output "my_files" {
#  value = module.files.stdout
#}
