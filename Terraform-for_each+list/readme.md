## 🔹 terraform-for_each + list (Best Practice Looping)

### 📌 Overview

This example demonstrates how to use **Terraform ****`for_each`**** with a list** to create Azure Resource Groups.

It also shows how `toset()` helps in **removing duplicate values automatically**.


## 🛠️ Code

### 👉 Using Direct List

```hcl
resource "azurerm_resource_group" "rg" {
  for_each = toset(["rg1", "rg2", "rg3", "rg4", "rg5", "rg6"])

  name     = each.key
  location = "centralus"
}


### 👉 Using Variable + tfvars

```hcl
resource "azurerm_resource_group" "rg" {
  for_each = toset(var.rg_names)

  name     = each.key
  location = "centralus"
}

variable "rg_names" {
  type    = list(string)
  default = ["rg-default", "rg-dev", "rg-prod"]
}


### terraform.tfvars

```hcl
rg_names = ["rg11", "rg22", "rg33", "rg44", "rg55", "rg22", "rg11"]



## 🚀 What Happens?

* `toset()` converts list → set
* **Duplicates automatically removed**

### 📦 Output (Final Resources)

* rg11
* rg22
* rg33
* rg44
* rg55

✔️ Duplicate values (`rg22`, `rg11`) ignored


## 🔍 Key Concept

👉 `for_each`:

* Uses **unique keys**
* No index-based dependency
* Safer than `count`

👉 `toset()`:

* Removes duplicates
* Ensures **clean and unique resource creation**


## ⚠️ Why Not count Here?

If we use `count` with same list:

* Duplicate resources attempted ❌
* State inconsistency issue ❌


## ✅ Benefits

✔️ No duplicate resources
✔️ Clean Terraform state
✔️ Production-ready approach


## 🧠 Note

👉
“for_each is preferred over count because it uses unique keys instead of index. When combined with toset(), it automatically removes duplicate values, making it safer and more reliable for production environments.”


## 🚀 Use Case

* Creating resources with unique names
* Handling dynamic input (like tfvars)
* Production infrastructure setup

