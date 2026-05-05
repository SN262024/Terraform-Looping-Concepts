## 🔹 terraform-for_each + nested map (Advanced / Real-World Scenario)

### 📌 Overview

This example demonstrates how to use **Terraform ****`for_each`**** with a map of objects** to create Azure Resource Groups with **multiple attributes**.

This is a **real-world production-level approach** where each resource has multiple configurations.


## 🛠️ Code

```hcl
resource "azurerm_resource_group" "rg" {

  for_each = var.rgs

  name       = each.value.name
  location   = each.value.location
  managed_by = each.value.managed_by
}

variable "rgs" {
  type = map(object({
    name       = string
    location   = string
    managed_by = string
  }))

  default = {
    "rg11" = {
      name       = "rg1"
      location   = "centralus"
      managed_by = "user1"
    }
    "rg22" = {
      name       = "rg2"
      location   = "eastus"
      managed_by = "user2"
    }
    "rg33" = {
      name       = "rg3"
      location   = "westus"
      managed_by = "user3"
    }
    "rg44" = {
      name       = "rg4"
      location   = "centralus"
      managed_by = "user4"
    }
  }
}


### terraform.tfvars

```hcl
rgs = {
  "rg11" = {
    name       = "rg1"
    location   = "centralus"
    managed_by = "surendra"
  }
  "rg22" = {
    name       = "rg2"
    location   = "eastus"
    managed_by = "surendra"
  }
  "rg33" = {
    name       = "rg3"
    location   = "westus"
    managed_by = "surendra"
  }
  "rg44" = {
    name       = "rg4"
    location   = "centralus"
    managed_by = "surendra"
  }
}


## 🚀 What Happens?

Terraform creates **multiple resource groups** with:

* Custom names
* Different locations
* Additional attribute (`managed_by`)


## 🔍 Key Concept

👉 `for_each` with nested map:

* `each.key` → Logical identifier (rg11, rg22…)
* `each.value` → Object containing multiple attributes

✔️ Access values like:

* `each.value.name`
* `each.value.location`
* `each.value.managed_by`


## ✅ Benefits

✔️ Multiple attributes per resource
✔️ Highly flexible and scalable
✔️ Clean and structured code
✔️ Production-ready design


## ⚠️ Why This is Powerful?

* Can manage complex infrastructure
* Easy to extend (add more fields like tags, environment, etc.)
* No duplication or index issues


## 🧠 Note

👉
“Using for_each with a map of objects allows us to define multiple attributes for each resource dynamically. This approach is highly scalable and commonly used in real-world Terraform projects.”


## 🚀 Use Case

* Enterprise infrastructure
* Multi-environment deployments
* Resource tagging & ownership tracking
* Complex Terraform modules


## ⭐ Conclusion

`for_each + nested map` is the **most advanced and scalable looping technique in Terraform**, ideal for real-world production use.
