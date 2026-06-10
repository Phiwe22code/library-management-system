create database Library_Simphiwe
go

use Library_Simphiwe
go

--Q1
create table Branch(
Branch_No varchar(4) primary key not null,
Manager_id varchar(4),
Branch_Addr varchar(50),
Contact_No varchar(20)
);

insert into Branch values
('B001', 'M101', '1 Peter Mokaba Road', '+2719988676'),
('B002', 'M102', '6 Windemere Road', '+2719988677'),
('B003', 'M103', '7 Soldiers Way', '+27319988678'),
('B004', 'M104', '3 Miriam Makeba Ave', '+27212988679'),
('B005', 'M105', '9 Bulwer St', '+27873988680');

--Q2
create table Employee(
Emp_ID varchar(4) primary key not null,
Emp_Name varchar(20),
Branch_No varchar(4) foreign key references Branch(Branch_No),
Position varchar(15),
Salary decimal
);

insert into Employee values
('E101', 'John Craig', 'B002', 'Manager', 60000.00),
('E102', 'Mandla Mabaso', 'B001', 'Clerk', 45000.00),
('E103', 'Zama Dlamini', 'B003', 'Librarian', 55000.00),
('E104', 'Mlondi Nzama', 'B004', 'Assistant', 40000.00),
('E105', 'Sarah Brown', 'B001', 'Assistant', 42000.00),
('E106', 'Sasha Michael', 'B002', 'Assistant', 43000.00),
('E107', 'Michael Drewsbury', 'B001', 'Manager', 62000.00),
('E108', 'Asanda Ncube', 'B003', 'Clerk', 46000.00),
('E109', 'Ayanda Mbatha', 'B003', 'Librarian', 57000.00),
('E110', 'Sifiso Ndaba', 'B003', 'Assistant', 41000.00),
('E111', 'Buhle Nyaba', 'B003', 'Manager', 65000.00);

--Q3
create table Customer(
CustomerID varchar(4) primary key not null,
Customer_Name varchar(20),
Cust_Address varchar(50),
Reg_Date date
);

insert into Customer values
('C101', 'Mandla Dube', '123 Main St', '2021-05-15'),
('C102', 'Eddie Cross', '456 Elm St', '2021-06-20'),
('C103', 'Anele Malinga', '789 Oak St', '2021-07-10'),
('C104', 'Eric Don', '567 Pine St', '2021-08-05'),
('C105', 'Evans Murphy', '890 Maple St', '2021-09-25'),
('C106', 'Thobeka Jali', '234 Cedar St', '2021-10-15'),
('C107', 'Zandile Dlamini', '345 Walnut St', '2021-11-20'),
('C108', 'Thandeka Ndlovu', '456 Birch St', '2021-12-10'),
('C109', 'Ivy Brown', '567 Oak St', '2022-01-05'),
('C110', 'Jack Wilson', '678 Pine St', '2022-02-25');

--Q4
create table IssueStatus(
IssueID varchar(5) primary key not null,
CustomerID varchar(4) foreign key references Customer(CustomerID),
Issued_Book varchar(100),
Issue_Date date,
Isbn_book varchar(30)
);

insert into IssueStatus values
('IS101', 'C101', 'The Catcher in the Rye', '2023-05-01', '978-0-553-29698-2'),
('IS102', 'C102', 'The Da Vinci Code', '2023-05-02', '978-0-7432-4722-4'),
('IS103', 'C103', '1491: New Revelations of the Americas Before Columbus', '2023-05-03', '978-0-7432-7357-1'),
('IS104', 'C104', 'Sapiens: A Brief History of Humankind', '2023-05-04', '978-0-307-58837-1'),
('IS105', 'C105', 'The Diary of a Young Girl', '2023-05-05', '978-0-375-41398-8');

--Q5
create table ReturnStatus(
ReturnID varchar(5) primary key not null,
CustomerID varchar(4) foreign key references Customer(CustomerID),
ReturnBook_Name varchar(30),
Return_Date date,
Isbn_Book2 varchar(30)
);

insert into ReturnStatus values
('RS101', 'C101', 'The Catcher in the Rye', '2023-06-06', '978-0-553-29698-2'),
('RS102', 'C102', 'The Da Vinci Code', '2023-06-07', '978-0-7432-4722-4'),
('RS103', 'C105', 'The Diary of a Young Girl', '2023-06-08', '978-0-375-41398-8'),
('RS104', 'C108', 'The Histories', '2023-06-09', '978-0-14-044930-3'),
('RS105', 'C110', 'A Game of Thrones', '2023-06-10', '978-0-09-957807-9');

--Q6
create table Books(
ISBN varchar(30) primary key not null,
Book_Title varchar(100),
Category varchar(20),
Rental_Price decimal,
Book_Status varchar(10),
Author varchar(50),
Publisher varchar(50)
);

insert into Books values
('978-0-553-29698-2', 'The Catcher in the Rye', 'Classic', 7.00, 'yes', 'J.D. Salinger', 'Little, Brown and Company'),
('978-0-330-25864-8', 'Animal Farm', 'Classic', 5.50, 'yes', 'George Orwell', 'Penguin Books'),
('978-0-14-118776-1', 'One Hundred Years of Solitude', 'Literary Fiction', 6.50, 'yes', 'Gabriel Garcia Marquez', 'Penguin Books'),
('978-0-525-47535-5', 'The Great Gatsby', 'Classic', 8.00, 'yes', 'F. Scott Fitzgerald', 'Scribner'),
('978-0-141-44171-6', 'Jane Eyre', 'Classic', 4.00, 'yes', 'Charlotte Bronte', 'Penguin Classics'),
('978-0-307-37840-1', 'The Alchemist', 'Fiction', 2.50, 'yes', 'Paulo Coelho', 'HarperOne'),
('978-0-679-76489-8', 'Harry Potter and the Sorcerers Stone', 'Fantasy', 7.00, 'yes', 'J.K. Rowling', 'Scholastic'),
('978-0-7432-4722-4', 'The Da Vinci Code', 'Mystery', 8.00, 'yes', 'Dan Brown', 'Doubleday'),
('978-0-09-957807-9', 'A Game of Thrones', 'Fantasy', 7.50, 'yes', 'George R.R. Martin', 'Bantam'),
('978-0-393-05081-8', 'A Peoples History of the United States', 'History', 9.00, 'yes', 'Howard Zinn', 'Harper Perennial'),
('978-0-19-280551-1', 'The Guns of August', 'History', 7.00, 'yes', 'Barbara W. Tuchman', 'Oxford University Press'),
('978-0-307-58837-1', 'Sapiens: A Brief History of Humankind', 'History', 8.00, 'yes', 'Yuval Noah Harari', 'Harper Perennial'),
('978-0-375-41398-8', 'The Diary of a Young Girl', 'History', 6.50, 'yes', 'Anne Frank', 'Bantam'),
('978-0-14-044930-3', 'The Histories', 'History', 5.50, 'yes', 'Herodotus', 'Penguin Classics'),
('978-0-393-91257-8', 'Guns, Germs, and Steel: The Fates of Human Societies', 'History', 7.00, 'yes', 'Jared Diamond', 'W. W. Norton & Company'),
('978-0-7432-7357-1', '1491: New Revelations of the Americas Before Columbus', 'History', 6.50, 'yes', 'Charles C. Mann', 'Vintage Books');

--Q7
select Emp_Name, Salary
from Employee
order by Salary desc;

--Q8
select Category, count(ISBN) as Total_Books
from Books
group by Category;

--Q9
select Emp_Name, Position
from Employee
where Salary > 50000.00;

--Q10
select Book_Title
from Books
where Book_Title like '%history%';

--Q11
create procedure GetBranchDetails
as
select b.Branch_No, count(e.Emp_ID) as Employee_Count
from Employee e
join Branch b on e.Branch_No = b.Branch_No
group by b.Branch_No
having count(e.Emp_ID) > 3
go

exec GetBranchDetails

--Q12
create view BookInformation as
select Book_Title, Category, Rental_Price
from Books;

--Q13
create procedure GetBookInfo
as
select i.Issued_Book, c.Customer_Name
from IssueStatus i
join Customer c on i.CustomerID = c.CustomerID
go

exec GetBookInfo

--Q14
create procedure GetCustomerInfo
as
select c.Customer_Name, i.Issue_Date
from IssueStatus i
join Customer c on i.CustomerID = c.CustomerID
where month(i.Issue_Date) = 6
and year(i.Issue_Date) = 2023
go

exec GetCustomerInfo

--Q15
create procedure GetBookStatus @ISBN varchar(30)
as
update Books
set Book_Status = case
    when ISBN = @ISBN then 'Yes'
    else Book_Status
end
go

exec GetBookStatus '978-0-553-29698-2'

--Q16
create view CustomerInfo as
select c.Customer_Name
from Customer c
where c.Reg_Date < '2022-01-01'
and c.CustomerID not in (select i.CustomerID from IssueStatus i)
