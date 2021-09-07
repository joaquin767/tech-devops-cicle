variable "name" {
  type        = string
  description = "Name for the bucket"
}

variable "tags" {
  type        = map(string)
  description = "Tags to identify the bucket"
}

variable "acl" {
  type        = string
  description = "ACL for the bucket"
  default     = "private"
}

variable "enable_versioning" {
  type        = bool
  description = "Enables bucket versioning for the bucket"
  default     = true
}

variable "force_destroy" {
  type        = bool
  description = "Forces bucket destruction even when not empty."
  default     = false
}
