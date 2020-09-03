/*
Group by: Group by clause is used to group a selected set of rows into a set of summary rows by the values of one
or more columns or expressions. It is always used in conjunction with one or more aggregate functions.

Aggregate functions are many like { SUM, MIN, AVG, etc}
*/

Create table tblEmployee
(
ID int identity(1,1) not null primary key,
Name nvarchar(20) not null,
Gender nvarchar(20) null,
Salary int not null,
City nvarchar(50) null
)

Select *from tblEmployee
Insert into tblEmployee(Name, Gender, Salary, City) 
Values ('Tom', 'Male', 4000, 'London'),
('Pam', 'Female', 3000, 'New York'),
('John', 'Male', 3500, 'London'),
('Sam', 'Male', 4500, 'London'),
('Todd', 'Male', 2800, 'Sydney'),
('Ben', 'Male', 7000, 'New York'),
('Sara', 'Female', 4800, 'Sydney'),
('Valarie', 'Female', 5500, 'New York'),
('James', 'Male', 6500, 'London'),
('Russell', 'Male', 8800, 'London')


--> Use of aggregate function
Select SUM(Salary) from tblEmployee
Select MIN(Salary) from tblEmployee
Select MAX(Salary) from tblEmployee

/* Grouping by multiple columns */
--> Group by using single column
Select City, SUM(Salary) as TotalSalary
from tblEmployee
Group by City

--> Group by multiple columns
Select City, Gender, SUM(Salary) as TotalSalary
from tblEmployee
Group by City, Gender
Order by City

--> Total No of Employees
Select COUNT(*) from tblEmployee 
Select COUNT(ID) from tblEmployee --> For performance reason always use column name instead of *

Select City, SUM(Salary) as TotalSalary, COUNT(ID) as TotalEmployee
from tblEmployee
group by Gender, City

/*
filtering Groups:
	WHERE clause is used to filter rows before aggregation, where as HAVING clause is used to filter groups after aggregations.
	
	Note: From a performance standpoint, you cannot say that one method is less efficient than the other.
	SQL server optimizer analyzes each statement and selects an efficient way of executing it. As a best practice, use the syntax
	that clearly describes the desired result. Try to eliminate rows that you wouldn't need, as early as possible.

*/
--> Using where clause (Here aggregation will done after filtering
Select City, Gender, SUM(Salary) as TotalSalary, COUNT(ID) as TotalEmployee
from tblEmployee
Where Gender = 'Male'
group by Gender, City

--> Using having clause (aggregation done then filtering)
Select City, Gender, SUM(Salary) as TotalSalary, COUNT(ID) as TotalEmployee
from tblEmployee
group by Gender, City
having Gender = 'Female'


/*
	- Difference between WHERE and HAVING clause?
	1. WHERE clause can be used with - SELECT, INSERT, and UPDATE statements, where as HAVING clause can only be used with the SELECT statement.
	2. WHERE filters rows before aggregation (GROUPING), where as, HAVING filters groups, after the aggregations are performed.
	3. Aggregate functions cannot be used in the WHERE clause, unless it is in a sub query contained in the HAVING clause, whereas, aggregate functions
	can be used in HAVING clause.

*/
Select City, Gender, SUM(Salary) as TotalSalary, COUNT(ID) as TotalEmployee
from tblEmployee
group by Gender, City
having SUM(Salary)>4000

