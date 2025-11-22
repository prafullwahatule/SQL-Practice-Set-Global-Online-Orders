# Global Online Orders SQL Practice Set

## 📌 Overview
The **Global Online Orders SQL Practice Set** is a comprehensive collection of **2000+ SQL practice questions** designed to simulate real-world analytics scenarios. It provides hands-on experience working with a multi-table relational database that represents a global online ordering system.

This practice set is ideal for:  
- SQL learners preparing for interviews.  
- Students completing database assignments.  
- Data analysts seeking practical SQL experience.  
- Professionals aiming to strengthen their knowledge of multi-table operations, aggregations, joins, subqueries, and advanced SQL features.  

---

## 🗂 Database Schema
The database consists of **8 main tables**:  
- `categories` – Product categories  
- `customers` – Customer information  
- `employees` – Employee details  
- `orders` – Orders placed by customers  
- `shippers` – Shipping companies  
- `suppliers` – Supplier details  
- `products` – Product details with category and supplier  
- `order_details` – Details of products in each order  

### 🔹 Key Table Relationships
- `orders` references `customers`, `employees`, and `shippers`.  
- `order_details` references `orders` and `products`.  
- `products` references `categories` and `suppliers`.  

All tables include sample data to provide realistic scenarios for query practice.

---

## 📝 SQL Topics Covered
The practice set covers **all essential SQL concepts**, from basic to advanced:

| Sr. No | SQL Topic                     | Number of Questions |
|--------|-------------------------------|------------------|
| 1      | Filtering & Logical Operations | 120              |
| 2      | Aggregations                   | 120              |
| 3      | Joins                          | 380              |
| 4      | Subqueries                     | 170              |
| 5      | Window Functions               | 360              |
| 6      | String Functions               | 180              |
| 7      | Data Cleaning Functions        | 240              |
| 8      | Views                          | 160              |
| 9      | Indexes                        | 150              |
| 10     | Temporary & Derived Tables     | 80               |
| 11     | Stored Procedures              | 200              |
| **Total** |                               | **2160**         |

---

## 🛠 Objective
The objectives of this practice set include:  
- Strengthen understanding of SQL concepts and practical applications.  
- Gain experience writing complex queries on multiple tables.  
- Enhance skills in data extraction, transformation, analysis, and reporting.  
- Prepare for real-world scenarios involving large datasets and multi-table operations.  
- Build confidence using advanced SQL features such as window functions, subqueries, and stored procedures.  

---

## 💾 Sample Database Tables & Columns

### 1️⃣ categories
| Column         | Type          | Notes                       |
|----------------|---------------|-----------------------------|
| CategoryID      | INT (PK)      | Auto Increment              |
| CategoryName    | VARCHAR(100)  | Name of the category        |
| DescriptionText | VARCHAR(255)  | Description of the category |

### 2️⃣ customers
| Column       | Type          | Notes                       |
|--------------|---------------|-----------------------------|
| CustomerID   | INT (PK)      | Auto Increment              |
| CustomerName | VARCHAR(150)  | Customer name               |
| ContactName  | VARCHAR(150)  | Contact person              |
| Address      | VARCHAR(255)  | Street address              |
| City         | VARCHAR(100)  | City                        |
| PostalCode   | VARCHAR(20)   | Postal code                 |
| Country      | VARCHAR(100)  | Country                     |

### 3️⃣ employees
| Column      | Type          | Notes              |
|-------------|---------------|------------------|
| EmployeeID  | INT (PK)      | Auto Increment    |
| LastName    | VARCHAR(100)  |                  |
| FirstName   | VARCHAR(100)  |                  |
| BirthDate   | DATE          |                  |

### 4️⃣ orders
| Column      | Type | Notes |
|-------------|------|-------|
| OrderID     | INT (PK) | Auto Increment |
| CustomerID  | INT      | FK → customers |
| EmployeeID  | INT      | FK → employees |
| OrderDate   | DATE     |                |
| ShipperID   | INT      | FK → shippers  |

### 5️⃣ shippers
| Column      | Type         | Notes |
|-------------|--------------|-------|
| ShipperID   | INT (PK)     | Auto Increment |
| ShipperName | VARCHAR(100) |               |
| Phone       | VARCHAR(50)  |               |

### 6️⃣ suppliers
| Column      | Type         | Notes |
|-------------|--------------|-------|
| SupplierID  | INT (PK)     | Auto Increment |
| SupplierName| VARCHAR(150) |               |
| ContactName | VARCHAR(100) |               |
| Address     | VARCHAR(255) |               |
| City        | VARCHAR(100) |               |
| PostalCode  | VARCHAR(20)  |               |
| Country     | VARCHAR(100) |               |
| Phone       | VARCHAR(50)  |               |

### 7️⃣ products
| Column        | Type          | Notes                   |
|---------------|---------------|-------------------------|
| ProductID     | INT (PK)      | Auto Increment          |
| ProductName   | VARCHAR(100)  | Product name            |
| SupplierID    | INT           | FK → suppliers          |
| CategoryID    | INT           | FK → categories         |
| QuantityPerUnit | VARCHAR(50) | Example: "24 - 12 oz"  |
| UnitPrice     | DECIMAL(10,2) | Price per unit          |
| UnitsInStock  | INT           | Stock quantity          |
| UnitsOnOrder  | INT           | Units on pending orders |
| ReorderLevel  | INT           | Minimum stock threshold |
| Discontinued  | TINYINT       | 0 = Active, 1 = Discontinued |

### 8️⃣ order_details
| Column        | Type | Notes |
|---------------|------|-------|
| OrderDetailID | INT (PK) | Auto Increment |
| OrderID       | INT      | FK → orders   |
| ProductID     | INT      | FK → products |
| Quantity      | INT      | Number of products |

---
## EER Diagram:

<img width="1191" height="872" alt="ERR Diagram" src="https://github.com/user-attachments/assets/1786490e-c468-4a79-a35e-7efd3cb23182" />

---

## 🔧 Setup Instructions
1. Install **MySQL** or **MySQL Workbench**.  
2. Create a new database:
```sql
CREATE DATABASE global_online_orders;
USE global_online_orders;
```
3. Create tables and insert data using the provided SQL scripts.
4. Start practicing SQL queries across various topics.

---

## 💡 Recommended Usage

- Start with **Filtering & Logical Operations** to understand basic query syntax.
- Move to **Aggregations** to summarize and analyze data.
- Practice **Joins** and **Subqueries** to combine tables and answer complex business questions.
- Explore **Window Functions** for analytics and reporting scenarios.
- Use **String & Data Cleaning Functions** to manipulate text and ensure data quality.
- Implement **Views, Indexes, Temporary & Derived Tables** to optimize query performance.
- Practice **Stored Procedures** for automation and modular SQL design.

---

## ✅ Notes

- This practice set contains **2160 scenario-based questions** covering all essential SQL concepts.
- The database is **pre-populated with realistic data** for customers, products, orders, suppliers, and categories.
- It can be used for **interview preparation, assignments, or self-learning projects**.

---

## 🙏 Acknowledgement  

Special thanks to the **Global Online Orders** dataset for providing a realistic real-world scenario.  
This project was created as part of a **Data Analytics learning journey** using **MySQL**.  

---

## 📎 Author  

**👤 Name:** Prafull Wahatule  
**📧 Email:** [prafullwahatule@gmail.com](mailto:prafullwahatule@gmail.com)  
**💻 GitHub:** [prafullwahatule](https://github.com/prafullwahatule)  

---

⭐ *If you found this project helpful, don’t forget to star the repository!* ⭐
