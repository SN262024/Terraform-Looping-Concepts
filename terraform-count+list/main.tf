# resource "azurerm_resource_group" "rg" {
#   count    = 4

#   name     = "rg-${count.index}"
#   location = "centralus"
# }

resource "azurerm_resource_group" "rg" {
  count    = length(var.rg_names)

  name     = var.rg_names[count.index]
  location = "centralus"
}



