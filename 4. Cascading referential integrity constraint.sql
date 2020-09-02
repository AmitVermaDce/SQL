/* 

Cascading referential integrity constraint allows to define the actions Microsoft SQL Server
should take when a user attempts to delete or update a key to which an existing foreign key points.

For example: If you delete row with ID = 1 from tblGender table, then row with ID=3 from tblPerson table becomes
an ophan record. You will not be able to tell the Gender for this row. So, cascading referential integrity constraint
can be used to define actions Microsoft SQl Server should take when this happens. 
By default, we get an error and the DELETE or UPDATE statement is rolled back.

*/
use [sample]
Go

SELECT *FROM tblGender
SELECT *FROM tblPerson

DELETE FROM tblGender where ID = 2 -- an error will occur (The DELETE statement conflicted with the REFERENCE constraint "tblPerson_GenderID_FK")

/* Options when setting up cascading referential integrity constriant:

1. No Action: This is the default behaviour. No action specifies that if an attempt is made to delete or update a row with
a key referenced by foreign keys in existing rows in other tables, an error is raised and the DELETE or UPDATE is rolled 
back.

2. Cascade: Specifies that if an attempt is made to delete or update a row with a key referenced by foreign keys in existing
rows in other tables, all rows containing those foreign keys are also deleted or updated.

3. Set NULL: Specifies that if an attempt is made to delete or update a row with a key referenced by foreign keys in existing
rows in other tables, all rows containing those foreign keys are set to NULL.

4. Set Default: Specifies that if an attempt is made to delete or update a row with a key referenced by foreign keys in existing
rows in other tables, all rows containing those foreign keys are set to default values.

*/

-- Go to tblPerson_GenderID_FK > Modify > Update and delete settings