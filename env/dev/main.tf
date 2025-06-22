module "resource-group" {
  source        = "../../modules/azurerm-rg"
  rg-name-c     = var.rg-name
  rg-location-c = var.rg-location
}

module "asp" {
  source        = "../../modules/azurerm_asp"
  asp_name      = var.asp_name
  rg-name-c     = module.resource-group.rg-name-return
  rg-location-c = module.resource-group.rg-location-return
  depends_on    = [module.resource-group]
}

module "webapp" {
  source = "../../modules/azurerm_linux-webapp"

  webAppname = var.webAppname

  rg-name-c           = module.resource-group.rg-name-return
  rg-location-c       = module.resource-group.rg-location-return
  app_service_plan_id = module.asp.as_plan_id
  depends_on          = [module.asp]

}
