variable "rgs" {
  type    = map(object({
    name       = string
    location   = string
    managed_by = string
  }))
  default = {

    "rg11"  = {
      name       = "rg1"
      location   = "centralus"
      managed_by = "user1"
    }
    "rg22"  = {
      name       = "rg2"
      location   = "eastus"
      managed_by = "user2"
    }
    "rg33"  = {
      name       = "rg3"
      location   = "westus"
      managed_by = "user3"
    }
    "rg44"  = {
      name       = "rg4"
      location   = "centralus"
      managed_by = "user4"
    }
  }
  }
