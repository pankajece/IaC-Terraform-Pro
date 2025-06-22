variable "webAppname" {
  type = string
  description = "this is being used for web app name"
  
}

variable "app_service_plan_id" {
  type = string
  description = "this is being used for app service plan id"
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