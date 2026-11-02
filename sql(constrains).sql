create database new2;
use new2;
create table Department (
    Dept_Id int primary key,
    Dept_Name varchar(50) not null unique,
    Location varchar(50) default 'Chennai'
);
create table Employees (
    Emp_Id int primary key,
    Emp_Name varchar(50) not null,
    Email varchar(100) unique,
    Age int check (Age >= 18),
    Salary int default 25000,
    Dept_Id int,
    foreign key (Dept_Id) references Department(Dept_Id)
);

create table Projects (
    Project_Id int primary key,
    Project_Name varchar(50) not null,
    Budget int check (Budget > 0),
    Dept_Id int,
    foreign key (Dept_Id) references Department(Dept_Id)
);

insert into Department values
(1, 'IT', 'Chennai'),
(2, 'HR', 'Trichy'),
(3, 'Sales', default);

insert into Employees
(Emp_Id, Emp_Name, Email, Age, Salary, Dept_Id)
values
(101, 'Madhavan', 'mad@gmail.com', 23, 40000, 1),
(102, 'Arun', 'arun@gmail.com', 25, 35000, 2),
(103, 'Ravi', 'ravi@gmail.com', 28, default, 3);

insert into Projects values
(201, 'Website Development', 50000, 1),
(202, 'Recruitment System', 30000, 2),
(203, 'Sales Management', 40000, 3);

insert into Employees(Emp_Id, Emp_Name) values (104, null);
insert into Employees values(104, 'Kumar', 'mad@gmail.com', 24, 30000, 1);
insert into Employees values (101, 'Kumar', 'kumar@gmail.com', 24, 30000, 1);
insert into Employees values (104, 'Kumar', 'kumar@gmail.com', 24, 30000, 10);
insert into Employees values (104, 'Kumar', 'kumar@gmail.com', 15, 30000, 1);
insert into Employees(Emp_Id, Emp_Name, Dept_Id)values (104, 'Kumar', 1);


select * from Department;
select * from Employees;
select * from Projects;