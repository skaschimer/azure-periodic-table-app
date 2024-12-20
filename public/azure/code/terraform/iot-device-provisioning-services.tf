resource "azurerm_iothub_dps" "main" {
  name                = "provs-${local.naming_suffix}"
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
  allocation_policy   = "Hashed"

  sku {
    name     = "provs-${local.naming_suffix}"
    capacity = "1"
  }
}