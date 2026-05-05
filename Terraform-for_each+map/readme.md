## 🔹 terraform-for_each + map (Advanced & Production Ready)

### 📌 Overview

This example demonstrates how to use **Terraform ****`for_each`**** with a map** to create Azure Resource Groups with **different locations**.

This is a **real-world and production-ready approach**.


## 🛠️ Code

```hcl
resource "azurerm_resource_group" "rg" {

  for_each = var.rg_names

  name     = each.key
  location = each.value
}

variable "rg_names" {
  type = map(string)

  default = {
    "rg1" = "centralus"
    "rg2" = "eastus"
    "rg3" = "westus"
    "rg4" = "centralus"
    "rg5" = "australiaeast"
    "rg6" = "koreacentral"
  }
}


### terraform.tfvars

```hcl
rg_names = {
  "rg1" = "centralus"
  "rg2" = "eastus"
  "rg3" = "westus"
  "rg4" = "centralus"
  "rg5" = "australiaeast"
  "rg6" = "koreacentral"
}


## 🚀 What Happens?

Terraform creates **6 resource groups** with different locations:

| Resource Group | Location      |
| -------------- | ------------- |
| rg1            | centralus     |
| rg2            | eastus        |
| rg3            | westus        |
| rg4            | centralus     |
| rg5            | australiaeast |
| rg6            | koreacentral  |


## 🔍 Key Concept

👉 `for_each` with map:

* `each.key` → Resource name
* `each.value` → Resource property (location)

✔️ Perfect for handling **different configurations per resource**


## ✅ Benefits

✔️ Unique resource names (no duplicates)
✔️ Different values per resource
✔️ No index dependency
✔️ Clean and predictable Terraform state


## ⚠️ Why This is Better than count?

* No index shifting issue
* No duplication problem
* Easy to manage and update


## 🧠 Note

👉
“Using for_each with a map allows us to define both the resource name and its configuration dynamically. It provides better control and is widely used in production environments compared to count.”


## 🚀 Use Case

* Multi-environment setup (dev, prod, staging)
* Different regions deployment
* Real-world infrastructure provisioning


## ⭐ Conclusion

`for_each + map` is the **most recommended approach** for creating multiple resources with unique configurations in Terraform.

