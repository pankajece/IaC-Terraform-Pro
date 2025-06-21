module "resource-group" {
  source = "../../modules/azurerm-rg"
  rg-name-c= var.rg-name
  rg-location-c= var.rg-location
  
}