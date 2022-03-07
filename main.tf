terraform {
  required_providers {
    vsphere = {
      source = "hashicorp/vsphere"
    }
  }
}

resource "null_resource" "example2" {
  provisioner "local-exec" {
    command = "wget elasticsearch.default.svc.cluster.local:9200/_cat/health?format=json -O /tmp/health.json"
  }

}

output "instance_ip_addr" {
  value = file("/tmp/health.json")
}
