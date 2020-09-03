/* Perform advanced or intelligent Joins
- Left join excluding inner
- Right join excluding inner
- full join excluding inner
*/
Select *from tblEmployee
Select *from tblDepartment

--> Left Join excluding inner
Select Name, Gender, Salary, DepartmentName
from tblEmployee
LEFT JOIN tblDepartment
On tblEmployee.DepartmentId = tblDepartment.Id
Where tblEmployee.DepartmentId is NULL

--> Right Join excluding inner
Select Name, Gender, Salary, DepartmentName
from tblEmployee
Right Join tblDepartment
ON tblEmployee.DepartmentId = tblDepartment.Id
Where tblEmployee.DepartmentId is NULL


--> Full join excluding inner
Select Name, Gender, Salary, DepartmentName
from tblEmployee
Full Join tblDepartment
On tblEmployee.DepartmentId = tblDepartment.Id
Where tblEmployee.DepartmentId is null
Or tblDepartment.Id is Null