variable "asp_name" {
  type = string
  default = "panaspdef"
  description = "this variable is using for giving the name to app service plan"
}

variable "rg-name-c" {
  type = string
  default = "pan-def-rg"
  description = "resource group name"
}

variable "rg-location-c" {
  type = string
  default = "Central India"
  description = "resource group location"
}
