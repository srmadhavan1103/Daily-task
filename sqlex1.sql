use sample;
create table Employees(E_Id int,E_Name varchar(20),E_Desg varchar(30),E_Age int,E_salary int);
create table Customer(C_Id int,C_Name varchar(20),C_City varchar(30),C_Phone int,E_Email varchar(20));
create table Student(S_Id int,S_Name varchar(20),S_Dep varchar(30),S_Age int,E_Mark int);
create table Staff(St_Id int,St_Name varchar(20),St_Role varchar(30),St_Age int,St_salary int);
create table Product(P_Id int,P_Name varchar(20),P_cat varchar(30),P_Stack int,P_Price int);

alter table Employees add email varchar(30);
alter table Employees modify E_Name varchar(50);
alter table Employees drop column email;

alter table Customer add email varchar(30);
alter table Customer modify C_Name varchar(50);
alter table Customer drop column email;

alter table Student add email varchar(30);
alter table Student modify S_Name varchar(50);
alter table Student drop column email;

alter table Staff add email varchar(30);
alter table Staff modify St_Name varchar(50);
alter table Staff drop column email;

alter table Product add brand varchar(30);
alter table Product modify P_Name varchar(50);
alter table Product drop column brand;

rename table Employees to Employee_details;
rename table Employee_details to Employees;

rename table Customer to Customer_details;
rename table Customer_details to Customer;

rename table Student to Student_details;
rename table Student_details to Student;

rename table Staff to Staff_details;
rename table Staff_details to Staff;

rename table Product to Product_details;
rename table Product_details to Product;

insert into Employees values
(1,"Madhavan","IT",23,100000),
(2,"Faizal","Developer",22,100000),
(3,"Arun","Sales",25,50000);

insert into Customer values
(101,"Madhavan","Chennai",2798530794,"hifjdj8@gmail.com"),
(201,"Faizal","Trichy",9879053644,"jbfjkh63@gmail.com"),
(301,"Arun","Madurai",8745778584,"nbsjhfv56@gmail.com");

insert into Student values
(1,"Madhavan","MCA",23,92),
(2,"Faizal","BE",22,100),
(3,"Arun","Bsc",25,75);

insert into Staff values
(1,"Madhavan","HOD",42,100000),
(2,"Faizal","Profeser",35,50000),
(3,"Arun","Principal",50,150000);

insert into Product values
(1,"Biscut","Cokkeis",23,50),
(2,"Milkshake","Shake",22,120),
(3,"Burger","Sandwitch",25,150);

select * from Employees;
select * from Customer;
select * from Student;
select * from Staff;
select * from Product;

update Employees
set E_salary =200000 
where E_Id = 1;

update Customer
set C_city = 'Chennai'
where C_Id = 101;

update Student
set S_marks = 100
where S_Id = 1;

update Staff
set St_salary = 48000
where St_Id = 1;

update Product
set P_Price = 60
where P_Id = 1;

select * from Employees;
select * from Customer;
select * from Student;
select * from Staff;
select * from Product;
