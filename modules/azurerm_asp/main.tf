resource "azurerm_service_plan" "asp" {
  name                = var.asp_name
  resource_group_name = var.rg-name-c
  location            = var.rg-location-c
  os_type             = "Linux"
  sku_name            = "P1v2"
}
