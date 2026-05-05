# 🚀 𝗧𝗲𝗿𝗿𝗮𝗳𝗼𝗿𝗺 𝗟𝗼𝗼𝗽𝗶𝗻𝗴 𝗖𝗼𝗻𝗰𝗲𝗽𝘁𝘀 (𝗔𝘇𝘂𝗿𝗲)

## 📌 𝗢𝘃𝗲𝗿𝘃𝗶𝗲𝘄

This repository demonstrates **Terraform looping concepts from basic to advanced level** using Azure Resource Groups.

The goal of this project is to provide **clear, practical, and real-world examples** of how looping works in Terraform, including handling edge cases like **duplicate values and idempotent behavior**.



## 📂 𝗣𝗿𝗼𝗷𝗲𝗰𝘁 𝗦𝘁𝗿𝘂𝗰𝘁𝘂𝗿𝗲


𝘁𝗲𝗿𝗿𝗮𝗳𝗼𝗿𝗺-𝗹𝗼𝗼𝗽𝗶𝗻𝗴-𝗰𝗼𝗻𝗰𝗲𝗽𝘁𝘀/
│
├── terraform-count/
├── terraform-count+list/
├── terraform-for_each+list/
├── terraform-for_each+map/
├── terraform-for_each+nested_map/


## 🔁 𝗖𝗼𝗻𝗰𝗲𝗽𝘁𝘀 𝗖𝗼𝘃𝗲𝗿𝗲𝗱

### 𝟭️⃣ 𝗰𝗼𝘂𝗻𝘁 (𝗕𝗮𝘀𝗶𝗰 𝗟𝗼𝗼𝗽)

* Simple looping using index
* Best for identical resources

✔️ 𝗘𝘅𝗮𝗺𝗽𝗹𝗲 𝗢𝘂𝘁𝗽𝘂𝘁:

* rg-0, rg-1, rg-2...


### 𝟮️⃣ 𝗰𝗼𝘂𝗻𝘁 + 𝗹𝗶𝘀𝘁 ⚠️

* Uses list with index
* Can create duplicate resource issues

👉 𝗞𝗲𝘆 𝗟𝗲𝗮𝗿𝗻𝗶𝗻𝗴:

* Terraform may track duplicates
* Azure handles duplicates using **idempotent behavior**


### ⚠️ 𝗜𝗱𝗲𝗺𝗽𝗼𝘁𝗲𝗻𝘁 𝗕𝗲𝗵𝗮𝘃𝗶𝗼𝗿 (𝗔𝘇𝘂𝗿𝗲)

Azure Resource Group creation is **idempotent**:

* Same request multiple times → same resource returned
* No error for duplicate names
* Can cause **multiple Terraform state entries pointing to one resource**


### 𝟯️⃣ 𝗳𝗼𝗿_𝗲𝗮𝗰𝗵 + 𝗹𝗶𝘀𝘁 ✅

* Converts list → set using `toset()`
* Automatically removes duplicates

✔️ Safe and clean approach



### 𝟰️⃣ 𝗳𝗼𝗿_𝗲𝗮𝗰𝗵 + 𝗺𝗮𝗽 ✅

* Uses key-value pairs
* Allows different configurations per resource

✔️ Real-world usage (multi-region deployment)



### 𝟱️⃣ 𝗳𝗼𝗿_𝗲𝗮𝗰𝗵 + 𝗻𝗲𝘀𝘁𝗲𝗱 𝗺𝗮𝗽 🚀

* Uses map of objects
* Supports multiple attributes per resource

✔️ Production-ready
✔️ Scalable design


## ⚖️ 𝗰𝗼𝘂𝗻𝘁 𝘃𝘀 𝗳𝗼𝗿_𝗲𝗮𝗰𝗵

| 𝗙𝗲𝗮𝘁𝘂𝗿𝗲        | 𝗰𝗼𝘂𝗻𝘁 ❌ | 𝗳𝗼𝗿_𝗲𝗮𝗰𝗵 ✅ |
| -------------- | ------- | ---------- |
| Index based    | Yes     | No         |
| Duplicate risk | High    | No         |
| Flexibility    | Low     | High       |
| Production use | No      | Yes        |



## 🧠 𝗞𝗲𝘆 𝗟𝗲𝗮𝗿𝗻𝗶𝗻𝗴𝘀

* `count` is simple but limited
* Duplicate values can cause state issues
* Azure handles duplicates using **idempotency**
* `for_each` is the **recommended approach for production**
* Nested maps enable **real-world scalable infrastructure design**



## 🚀 𝗛𝗼𝘄 𝘁𝗼 𝗥𝘂𝗻

```bash
terraform init
terraform plan
terraform apply
```



## 💬 𝗜𝗻𝘁𝗲𝗿𝘃𝗶𝗲𝘄 𝗥𝗲𝗮𝗱𝘆 𝗘𝘅𝗽𝗹𝗮𝗻𝗮𝘁𝗶𝗼𝗻

👉
“Terraform supports looping using count and for_each. Count is index-based and can lead to duplication issues, whereas for_each uses unique keys and is more reliable. In Azure, duplicate resource creation is handled idempotently, which can lead to multiple Terraform state entries pointing to the same resource. Therefore, for_each with map or nested map is preferred in production environments.”



## 🎯 𝗪𝗵𝘆 𝗧𝗵𝗶𝘀 𝗣𝗿𝗼𝗷𝗲𝗰𝘁?

* Covers **beginner to advanced Terraform concepts**
* Includes **real-world scenarios**
* Explains **common mistakes and edge cases**
* Helps in **interview preparation**


## ⭐ 𝗙𝗶𝗻𝗮𝗹 𝗡𝗼𝘁𝗲

This project is designed to **build strong Terraform fundamentals** and demonstrate **practical DevOps skills**.



🔥 *𝗜𝗳 𝘆𝗼𝘂 𝗳𝗼𝘂𝗻𝗱 𝘁𝗵𝗶𝘀 𝘂𝘀𝗲𝗳𝘂𝗹, 𝗰𝗼𝗻𝘀𝗶𝗱𝗲𝗿 𝗴𝗶𝘃𝗶𝗻𝗴 𝗶𝘁 𝗮 𝘀𝘁𝗮𝗿!*
