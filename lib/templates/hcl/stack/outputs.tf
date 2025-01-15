output "bucket_name" {
  description = "The name of the DigitalOcean Spaces bucket"
  value       = module.bucket.bucket  # Accessing the bucket name from the module
}
