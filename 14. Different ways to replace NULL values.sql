/* Replacing NULL values 
	Three ways to replace the NULL values - 
	1. ISNULL() Function
	2. CASE statement - It is used to return first normal value
	3. COALESCE() function
*/
select *from tblEmployee1

--> Performing left	 join and replacing NULL values
Select			E.Name as Employee, ISNULL(M.Name, 'No Manager')as Manager
from			tblEmployee1 as E
LEFT JOIN		tblEmployee1 as M
ON E.ManagerID = M.EmployeeID

Select			E.Name as Employee, COALESCE(M.Name, 'No Manager')as Manager
from			tblEmployee1 as E
LEFT JOIN		tblEmployee1 as M
ON E.ManagerID = M.EmployeeID