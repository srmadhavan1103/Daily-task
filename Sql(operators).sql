create database Operator;
use Operator;
create table Employees (E_Id int,E_Name varchar(50),E_Desg varchar(30),E_Age int,E_Salary int,E_City varchar(30));
create table Customer (C_Id int,C_Name varchar(50),C_City varchar(30),C_Phone varchar(15),C_Email varchar(50));
create table Student (S_Id int,S_Name VARCHAR(50),S_Dep VARCHAR(30),S_Age int,S_Mark int);
create table Staff (St_Id int,St_Name varchar(50),St_Role varchar(30),St_Age int,St_Salary int);
create table Product (P_Id int,P_Name varchar(50),P_Cat varchar(30),P_Stock int,P_Price int);


insert into Employees values
(1, 'Madhavan', 'IT', 23, 100000, 'Chennai'),
(2, 'Faizal', 'Developer', 22, 80000, 'Trichy'),
(3, 'Arun', 'Sales', 25, 50000, 'Madurai'),
(4, 'Ravi', 'IT', 28, 120000, 'Chennai'),
(5, 'Priya', 'HR', 26, 60000, 'Salem');

insert into Customer values
(101, 'Madhavan', 'Chennai', '9876543210', 'mad@gmail.com'),
(102, 'Faizal', 'Trichy', '9876543211', 'faizal@gmail.com'),
(103, 'Arun', 'Madurai', '9876543212', 'arun@gmail.com'),
(104, 'Priya', 'Chennai', '9876543213', 'priya@gmail.com'),
(105, 'Ravi', 'Salem', '9876543214', 'ravi@gmail.com');

insert into Student values
(1, 'Madhavan', 'MCA', 23, 92),
(2, 'Faizal', 'BE', 22, 85),
(3, 'Arun', 'BSc', 25, 75),
(4, 'Priya', 'MCA', 21, 100),
(5, 'Ravi', 'BCA', 24, 60);

insert into Staff values
(1, 'Madhavan', 'HOD', 42, 100000),
(2, 'Faizal', 'Professor', 35, 50000),
(3, 'Arun', 'Principal', 50, 150000),
(4, 'Priya', 'Clerk', 30, 30000),
(5, 'Ravi', 'Manager', 40, 80000);

insert into Product values
(1, 'Biscuit', 'Cookies', 23, 50),
(2, 'Milkshake', 'Shake', 22, 120),
(3, 'Burger', 'Sandwich', 25, 150),
(4, 'Pizza', 'FastFood', 10, 250),
(5, 'Juice', 'Drinks', 30, 80);

select S_Name, S_Mark + 5 from Student;
select S_Name, S_Mark - 5 from Student;
select S_Name, S_Mark * 2 from Student;
select S_Name, S_Mark / 2 from Student;
select S_Id, S_Id % 2 from Student;

select * from Employees where E_Salary = 100000;
select * from Employees where E_Salary != 50000;
select * from Employees where E_Salary <> 50000;
select * from Employees where E_Salary > 80000;
select * from Employees where E_Salary < 100000;
select * from Employees where E_Salary >= 100000;
select * from Employees where E_Salary <= 80000;

select * from Customer where C_City = 'Chennai' and C_Id > 101;
select * from Customer where C_City = 'Trichy' or C_City = 'Salem';
select * from Customer where not C_City = 'Chennai';


select * from Employees where E_Name like 'M%';
select * from Employees where E_Name like '%i';
select * from Employees where E_Name like '%a%';
select * from Employees where E_Name like '_____';

select * from Staff where St_Salary between 50000 and 100000;
select * from Staff where St_Role in ('HOD', 'Manager');
select * from Staff where St_Role not in ('HOD', 'Manager');
select * from Staff where St_Name like 'M%';
select * from Staff where St_Role is null;
select * from Staff where St_Role is not null;