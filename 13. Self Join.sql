/* Self Join: Joining a table with itself is called a Self Join
	It can be classified under any type of JOIN:
	- INNER
	- OUTER
	- CROSS

 */

 CREATE Table tblEmployee1
 (
 EmployeeID int Identity(1,1) Primary key Not null,
 Name nvarchar(20) not null,
 ManagerID int null
 )
 Insert into tblEmployee1
 Values ('Mike', 3),('Rob', 1),('Todd', NULL),('Ben', 1),('Mike', 1)
 
 Select *from tblEmployee1

 --> Left Join
 Select E.Name as Employee, M.Name as Manager
 from tblEmployee1 as E
 LEFT JOIN tblEmployee1 as M
 ON E.ManagerID = M.EmployeeID

 
 --> Inner Join
Select E.Name as Employee, M.Name as Manager
 from tblEmployee1 as E
 INNER JOIN tblEmployee1 as M
 ON E.ManagerID = M.EmployeeID

 
 --> Cross Join
 Select E.Name as Employee, M.Name as Manager
 from tblEmployee1 as E
 CROSS JOIN tblEmployee1 as M
