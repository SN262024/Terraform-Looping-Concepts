## 🔹 terraform-count (Basic Loop using count)

### 📌 Overview

This example demonstrates how to use **Terraform ****`count`** to create multiple Azure Resource Groups using a simple loop.


## 🛠️ Code

```hcl
resource "azurerm_resource_group" "rg" {
  count    = 6

  name     = "rg-${count.index}"
  location = "centralus"
}


## 🚀 What Happens?

* `count = 6` → Terraform creates **6 resource groups**
* `count.index` starts from **0**

### 📦 Output

* rg-0
* rg-1
* rg-2
* rg-3
* rg-4
* rg-5


## 🔍 Key Concept

👉 `count.index`:

* Auto-generated index (0 → n-1)
* Used for dynamic naming of resources


## ⚠️ Limitation

* Only index-based naming
* Cannot directly use custom names (like rg1, rg2)
* Not suitable for complex or unique configurations


## 🧠 Note

👉
“Count is used for simple looping in Terraform. It creates multiple resources using an index, but for more flexibility and uniqueness, for_each is preferred.”

## ✅ Use Case

* Creating identical resources
* Learning Terraform basics
* Quick testing environments

