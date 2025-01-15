output "name" {
  description = "Spaces bucket name"
  value       = digitalocean_spaces_bucket.this.bucket  
}
