/*
	Joins in SQL server are used to retrieve data from 2 or more related tables. In general tables are related to each other using foreign key constraints.
	In SQL server, there are different types of JOINS
	1. INNER JOIN
	2. OUTER JOIN
	3. CROSS JOIN

	OUTER Joins are again divided into 
	1. Left Join or Left outer join - Left and common rows
	2. Righ Join or Right outer join - right and common rows
	3. Full Join or Full outer Join - complete join
*/

--> tblEmployee table
Create table tblEmployee
(
ID int identity(1,1) not null primary key,
Name nvarchar(20) not null,
Gender nvarchar(20) null,
Salary int not null,
DepartmentId int null
)
Insert into tblEmployee(Name, Gender, Salary, DepartmentId) 
Values ('Tom', 'Male', 4000, 1),
('Pam', 'Female', 3000, 3),
('John', 'Male', 3500, 1),
('Sam', 'Male', 4500, 2),
('Todd', 'Male', 2800, 2),
('Ben', 'Male', 7000, 1),
('Sara', 'Female', 4800, 3),
('Valarie', 'Female', 5500, 1),
('James', 'Male', 6500, NULL),
('Russell', 'Male', 8800, NULL)

--> tblDepartment table
Create table tblDepartment
(
Id int identity(1,1) not null primary key,
DepartmentName nvarchar(50) NOT NULL,
Location nvarchar(50) NOT NULL,
DepartmentHead nvarchar(50) NULL
)
Insert into tblDepartment
Values ('IT', 'London', 'Rick'),
('Payroll', 'Delhi', 'Ron'),
('HR', 'New York', 'Christine'),
('Other Department', 'Sydney', 'Cindrella')

Select *from tblEmployee
Select *from tblDepartment

--> Joining
-- Inner Join - default join
Select Name, Gender, Salary, DepartmentName
from tblEmployee
INNER JOIN tblDepartment
ON tblEmployee.DepartmentId = tblDepartment.Id

--> Left Outer Join
Select Name, Gender, Salary, DepartmentName
from tblEmployee
Left join tblDepartment
ON tblEmployee.DepartmentID = tblDepartment.Id

-- Right Outer join
Select Name, Gender, Salary, DepartmentName
from tblEmployee
right join tblDepartment
ON tblEmployee.DepartmentID = tblDepartment.Id

-- Full join
Select Name, Gender, Salary, DepartmentName
from tblEmployee
full outer join tblDepartment
ON tblEmployee.DepartmentID = tblDepartment.Id


/*
	CROSS JOIN, produces the cartesian product of the 2 tables involved in the join. For example, in the 
	Employees table we have 10 rows and in the Departments tables we have 4 rows. So, a cross join between
	these 2 tables produces 40 rows.

	Note: Cross Join dont have ON clause

	It will take each record from the right table and assosciate with each record on left table

*/
--> Cross Join
Select Name, Gender, Salary, DepartmentName
from tblEmployee
Cross join tblDepartment

	