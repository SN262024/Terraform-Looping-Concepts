# Terraform Count with List (Azure Resource Group)

## 📌 Overview

This example shows how Terraform `count` works with a list and highlights an important concept: **idempotent behavior in Azure**.

## 🛠️ Code

```hcl
resource "azurerm_resource_group" "rg" {
  count    = length(var.rg_names)

  name     = var.rg_names[count.index]
  location = "centralus"
}

variable "rg_names" {
  type    = list(string)
  default = ["value1", "value2", "value3", "value4", "value2"]
}


## 🚀 Output

Terraform will try to create **5 resource groups**:

* value1
* value2
* value3
* value4
* value2 (duplicate)

## ⚠️ Important Concept (Idempotent Behavior)

Azure Resource Group creation is **idempotent**, which means:

👉 If the same resource already exists, Azure **does not create it again**
👉 Instead, it returns the **existing resource**

So:

* Terraform State → 5 resources ❌
* Azure Actual → 4 unique resources ✅

Example:

* rg[1] and rg[4] both point to **same "value2" resource**


## 🚨 Problem

* Duplicate entries in Terraform state
* Confusion in resource management

## ✅ Best Practice

Use `for_each` with `set` to avoid duplicates:

```hcl
resource "azurerm_resource_group" "rg" {
  for_each = toset(var.rg_names)

  name     = each.key
  location = "centralus"
}


✔️ Automatically removes duplicates
✔️ Ensures clean state


## 🧠 Note

👉 "Azure handles duplicate resource creation requests in an idempotent way, but using count with duplicate values can lead to multiple Terraform state entries pointing to the same resource. So for_each is preferred."


