
output "file" {
  description = "Read file"
  value       = file("/etc/os-release")
}
