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
    command = "wget elasticsearch.default.svc.cluster.local:9200/_cat/health?format=json -O ${path.module}/health.json"
  }
  depends_on = [
    local_file.foo
  ]
}

data "local_file" "foo2" {
    filename = "${path.module}/health.json"
}

output "instance_ip_addr" {
  value = data.local_file.foo2
}
