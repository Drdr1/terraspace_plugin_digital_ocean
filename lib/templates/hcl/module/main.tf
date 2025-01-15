resource "digitalocean_spaces_bucket" "this" {
  bucket = var.bucket  
  tags   = var.tags    
}
