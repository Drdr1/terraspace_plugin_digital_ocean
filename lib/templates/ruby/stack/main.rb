resource "random_pet" "this" {
  length = 2
}

module "bucket" {
  source = "../../modules/example"
  bucket = "bucket-${random_pet.this.id}"  # Dynamic bucket name using random_pet
  tags   = var.tags  # Tags for the bucket, passed as a variable
}

output "bucket_name" {
  description = "The name of the DigitalOcean Spaces bucket"
  value       = module.bucket.bucket  # Output the bucket name
}
