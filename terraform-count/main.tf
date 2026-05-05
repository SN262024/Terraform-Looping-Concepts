resource "azurerm_resource_group" "rg" {
  count    = 6

  name     = "rg-${count.index}"
  location = "centralus"
}




