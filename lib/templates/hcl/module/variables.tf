variable "bucket" {
  description = "The name of the Spaces bucket. If omitted, Terraform will assign a random, unique name."
  type        = string
  default     = null
}

variable "tags" {
  description = "(Optional) A mapping of tags to assign to the Spaces bucket."
  type        = map(string)
  default     = {}
}
