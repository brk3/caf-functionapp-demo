landingzone = {
  backend_type        = "azurerm"
  global_settings_key = "shared_services"
  level               = "level3"
  key                 = "functionapp"
  tfstates = {
    shared_services = {
      level   = "lower"
      tfstate = "shared_services.tfstate"
    }
    aks_networking = {
      level   = "current"
      tfstate = "aks_networking.tfstate"
    }
  }
}
