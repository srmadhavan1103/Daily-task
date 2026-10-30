create database new1;
use new1;
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
