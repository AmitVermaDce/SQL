/* UNION and UNION ALL operators in SQL Server, are used to combine the result-set of two or more queries */
 Create Table tblIndiaCustomers
 (
 Id int NOT NULL PRIMARY KEY IDENTITY(1,1),
 Name nvarchar(20) NOT NULL,
 Email nvarchar(20) NOT NULL
 )

 Create Table tblUKCustomers
 (
 Id int NOT NULL PRIMARY KEY IDENTITY(1,1),
 Name nvarchar(20) NOT NULL,
 Email nvarchar(20) NOT NULL
 )
 Insert into tblUKCustomers
 Values('Ben', 'B@B.com'), ('Sam','S@S.com')


 --> Using UNION ALL 
 Select *from tblIndiaCustomers
 UNION ALL  --> Combining all rows from two tables
 Select *from tblUKCustomers

  --> Using UNION  
 Select *from tblIndiaCustomers
 UNION --> Combining all rows and removing duplicates
 Select *from tblUKCustomers

 /* 
	Difference between UNION and UNION ALL
	1. UNION removes duplicate rows, where as UNION ALL does not
	2. UNION has to perform distinct sort to remove duplicates, which make it less faster than UNION ALL

Note: For UNION and UNION ALL to work, the number, Data types, and the order of the columns in the select statements should be same.  

*/

Select ID, Name, Email from tblIndiaCustomers
UNION
Select ID, Name, Email from tblUKCustomers

/* Difference between UNION and JOIN
	UNION combine the result set of two or more select queries into a single result set which includes all the rows from all
	the queries in the UNION, whereas JOINS, retrieves data from two or more tables based on logical relationships between the tables.

	In short, UNION combines rows from 2 or more tables, whereas JOIN combines columns from 2 or more table.

*/
