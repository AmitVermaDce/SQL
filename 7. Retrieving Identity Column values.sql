/* I want to retrieve the last generated identity column
	- SELECT SCOPE_IDENTITY()
	- SELECT @@IDENTITY
*/
--> Table 1
SELECT *from dbo.Test1
--> Table 2
SELECT *from dbo.Test2

--> Inserting values
INSERT INTO Test1 Values('XX'),('XXX')


/* Trigger: whenever someone insert a value in table1, another row will automatically inserted in table2
		Triggers are for doing some processes automatically
*/

-->Trigger created for inserting 1 value to table2 for single insert in table1
Create Trigger trForInsert on Test1 for Insert
as
Begin
	Insert into Test2 Values ('YYY')
End




SELECT SCOPE_IDENTITY() --> Same session and same scope
SELECT @@IDENTITY --> Same Session and across any scope
SELECT IDENT_CURRENT('Test1') -->Specific table across any session and any scope

