
output "file" {
  description = "Read file"
  value       = file("/etc/os-release")
}


output "log" {
  description = "Read file"
  value       = fileset("/var/log", "*.*")
}

output "hostname" {
  description = "Read file"
  value       = file("/etc/hostname")
}

output "kernel" {
  description = "Read file"
  value       = file("/var/log/kern.log")
}
