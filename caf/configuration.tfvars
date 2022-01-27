resource_groups = {
  funapp = {
    name   = "functionapp-demo"
    region = "region1"
  }
}

app_service_plans = {
  asp1 = {
    resource_group_key = "funapp"
    name               = "asp-simple"

    sku = {
      tier = "Standard"
      size = "S1"
    }
  }
}

function_apps = {
  f1 = {
    name               = "funapp-private"
    resource_group_key = "funapp"
    region             = "region1"

    app_service_plan_key = "asp1"
    storage_account_key  = "sa1"

    settings = {
      lz_key     = "aks_networking"
      vnet_key   = "tax_dev_region1"
      subnet_key = "app_gateway"
      enabled    = true
    }
    #settings = {
    #vnet_key   = "spoke"
    #subnet_key = "app"
    #enabled = true
    #}
  }
}

storage_accounts = {
  sa1 = {
    name               = "funapp-sa1"
    resource_group_key = "funapp"
    region             = "region1"

    account_kind             = "StorageV2"
    account_tier             = "Standard"
    account_replication_type = "LRS"

    containers = {
      dev = {
        name = "random"
      }
    }
  }
}
