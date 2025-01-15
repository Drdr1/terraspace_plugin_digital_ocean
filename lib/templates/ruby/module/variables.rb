variable("bucket",
  description: "The name of the bucket. If omitted, Terraform will assign a random, unique name.",
  default:     nil,  # Can be nil or assigned a default name
)

variable("tags",
  description: "(Optional) A mapping of tags to assign to the bucket.",
  type:        "map(string)",  # Tags variable type (map of strings)
  default:     {},  # Default is an empty map
)
