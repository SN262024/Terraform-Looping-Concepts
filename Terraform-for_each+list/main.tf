resource "azurerm_resource_group" "rg" {
  for_each = toset(["rg1", "rg2", "rg3", "rg4", "rg5", "rg6"])
  
  name     = each.key
  location = "centralus"
}


resource "azurerm_resource_group" "rg" {
  for_each = toset(var.rg_names)

  name     = each.key
  location = "centralus"
}


