resource "azurerm_lb" "main" {
  name                = "lbe-${local.naming_suffix}"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name

  frontend_ip_configuration {
    name                 = "lbe-${local.naming_suffix}"
    public_ip_address_id = azurerm_public_ip.main.id
  }
}