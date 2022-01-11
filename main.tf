resource "null_resource" "example2" {
  provisioner "local-exec" {
    command = "ls -la /etc > foo.bar"
  }
}

resource "local_file" "foo" {
    filename = "foo.bar"
}


output "file" {
  description = "Read file"
  value       = resource.local_file.foo.content
}
