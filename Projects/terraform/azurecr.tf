data "azurerm_resource_group" "k8srg" {
    name = "k8s-project"
}

resource "azurerm_container_registry" "pradok8sprojectacr" {
    name                = "pradok8sprojectacr"
    resource_group_name = data.azurerm_resource_group.k8srg.name
    location            = data.azurerm_resource_group.k8srg.location
    sku                 = "Standard"
    admin_enabled       = false
}