#  Library Management System — SQL Project

A relational database project built in **Microsoft SQL Server (T-SQL)** that models the operations of a multi-branch library system. The project covers database design, table creation, data insertion, querying, stored procedures, and views.

---

##  Database Overview

**Database name:** `Library_Simphiwe`

The system manages branches, employees, customers, books, and book issue/return transactions across five library branches.

---

##  Schema & Tables

| Table | Description |
|---|---|
| `Branch` | Library branches with address and contact details |
| `Employee` | Staff records linked to branches, including position and salary |
| `Customer` | Registered library members |
| `Books` | Book catalogue with category, rental price, author, and availability |
| `IssueStatus` | Records of books issued to customers |
| `ReturnStatus` | Records of books returned by customers |

### Relationships
- `Employee.Branch_No` → `Branch.Branch_No`
- `IssueStatus.CustomerID` → `Customer.CustomerID`
- `ReturnStatus.CustomerID` → `Customer.CustomerID`

---

##  Sample Data

Each table is pre-populated with realistic sample data:
- **5 branches** across South African locations (Durban, Cape Town)
- **11 employees** across roles: Manager, Librarian, Clerk, Assistant
- **10 customers** with registration dates spanning 2021–2022
- **16 books** across genres including Classic, History, Fantasy, Fiction, and Mystery
- **5 issue records** and **5 return records**

---

##  Queries Included

| Query | Description |
|---|---|
| Q7 | List all employees ordered by salary (descending) |
| Q8 | Count of books per category |
| Q9 | Employees earning more than R50,000 |
| Q10 | Books with "history" in the title (case-insensitive `LIKE`) |

---

##  Stored Procedures

| Procedure | Description |
|---|---|
| `GetBranchDetails` | Returns branch numbers and employee count for branches with more than 3 employees |
| `GetBookInfo` | Returns all issued book titles with their corresponding customer names (JOIN) |
| `GetCustomerInfo` | Lists customer names who borrowed books in June 2023 (JOIN + date filter) |
| `GetBookStatus @ISBN` | Updates a book's status to `'Yes'` given its ISBN using a `CASE` expression |

---

##  Views

| View | Description |
|---|---|
| `BookInformation` | Displays book title, category, and rental price |
| `CustomerInfo` | Lists customers registered before 2022 who have never borrowed a book |

---

##  How to Run

1. Open **SQL Server Management Studio (SSMS)**
2. Connect to your SQL Server instance
3. Open `Simphiwe_Khumalo.sql` and run the full script
4. Execute individual queries or stored procedures as needed

```sql
-- Run the branch details procedure
EXEC GetBranchDetails

-- Get all issued books with customer names
EXEC GetBookInfo

-- Get customers who borrowed books in June 2023
EXEC GetCustomerInfo

-- Update a book's status by ISBN
EXEC GetBookStatus '978-0-553-29698-2'

-- Query the BookInformation view
SELECT * FROM BookInformation

-- Query the CustomerInfo view
SELECT * FROM CustomerInfo
```

---

##  Tech Stack

- **Database:** Microsoft SQL Server
- **Language:** T-SQL (Transact-SQL)
- **Tool:** SQL Server Management Studio (SSMS)

---

##  Author

**Simphiwe Khumalo**  
Junior Data Analyst | BI Analyst  
Victor Daitz Big Data Analytics Programme — ORT South Africa  
[LinkedIn](https://www.linkedin.com/in/simphiwe-khumalo) | [GitHub](https://github.com/simphiwekhumalo)
