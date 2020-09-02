/* If a column is marked as an identity column, then the values for this column are automatically
   generated, when you insert a new row into the table.
   
   
   Syntax:
   Create Table tblPerson1
   (
   PersonID int Identity(1,1) Primary Key,
   Name nvarchar(20) null
   )
   Note: default value for seed and increment is set to 1
  */

SELECT *FROM dbo.tblPerson1


-- Insert values in the new table(tblPerson1)
INSERT INTO dbo.tblPerson1 VALUES('Sachin Tendulkar')
INSERT INTO dbo.tblPerson1 VALUES('Sunil Gawaskar')
INSERT INTO dbo.tblPerson1 VALUES('Sarah')
INSERT INTO dbo.tblPerson1 VALUES('John')


-- Now I am trying to delete it

DELETE FROM dbo.tblPerson1 WHERE PersonID=2 --> An entry with PersonID 2 got deleted from the table
-- Now I want to use the PersonID = 2

INSERT INTO dbo.tblPerson1 VALUES(2, 'John') -- > This resulted in an error stating that it is an identity column
-- and we can't able to explicitly supply a value. So, to make this happen we have to set IDENTITY_INSERT ON

SET IDENTITY_INSERT tblPerson1 ON

-- Now If we insert a value to an identity column we can achieve it BUT WITH LITTLE CHANGE IN INSERT COMMAND
INSERT INTO dbo.tblPerson1 (PersonID, Name) VALUES(2, 'John')


--Note: IDENTITY_INSERT must be turned OFF when we done with our explicit inclusion of values at certain location

SET IDENTITY_INSERT tblPerson1 OFF

-- Now we can insert values like this
INSERT INTO dbo.tblPerson1 VALUES('Mike')



/* If you have deleted all the rows in and you want to reset the identity column value, use
   DBCC CHECKIDENT command.
*/

DELETE FROM dbo.tblPerson1 --> This will delete all values from the table
INSERT INTO dbo.tblPerson1 VALUES('Mike') --> PersonID will not start from 1
delete from tblPerson1 where PersonID=6

DBCC CHECKIDENT('tblPerson1',RESEED,0) --> This will reset the 

INSERT INTO dbo.tblPerson1 VALUES('Sarah')
INSERT INTO dbo.tblPerson1 VALUES('Mike')
INSERT INTO dbo.tblPerson1 VALUES('James')
INSERT INTO dbo.tblPerson1 VALUES('Jackie')
