terraform {
  required_providers {
    vsphere = {
      source = "hashicorp/vsphere"
    }
  }
}

resource "local_file" "foo" {
    content     = "foo!"
    filename = "${path.module}/health.json"
}

resource "null_resource" "example2" {
  provisioner "local-exec" {
    command = "wget elasticsearch.default.svc.cluster.local:9200/_cat/health?format=json -O health.json"
  }
}

