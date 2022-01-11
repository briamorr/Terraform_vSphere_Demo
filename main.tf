
output "file" {
  description = "Read file"
  value       = file("/etc/os-release")
}


output "log" {
  description = "Read file"
  value       = fileset("/etc", "*.*")
}

output "hostname" {
  description = "Read file"
  value       = file("/etc/hostname")
}

