resource "azurerm_linux_web_app" "linuxwebapp" {
  name                = var.webAppname
  resource_group_name = var.rg-name-c
  location            = var.rg-location-c
  service_plan_id     = var.app_service_plan_id
  site_config {

  }
}