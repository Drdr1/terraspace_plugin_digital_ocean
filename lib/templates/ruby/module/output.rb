output("name",
  description: "Bucket name",
  value:       "${digitalocean_spaces_bucket.this.bucket}",  # Output the name of the DigitalOcean Spaces bucket
)
