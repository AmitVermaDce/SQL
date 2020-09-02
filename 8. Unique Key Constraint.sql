/*

We use UNIQUE KEY constraint to enforce uniqueness of a column i.e. the column shouldn't allow any
duplicate values. We can add a UNIQUE constraint through the designer or using a query.

Syntax: 
ALTER TABLE TABLE_NAME
ADD constraint Constraint_name UNIQUE(Column_Name)


 Difference between PRIMARY KEY constraint and UNIQUE KEY constraint?
 Ans. 
 1. A table can have only one primary key, but more than one unique key.
 2. primary Key does not allow nulls, where as unique key allows one null.


 Note:
 Both PRIMARY KEY and UNIQUE KEY are used to enforce, the uniqueness of a column.
 So, when do you choose one over the other?
 A table can have one Primary Key. If you want to enforce uniqueness on 2 or more columns, then 
 we use unique key constraint.

 */

 SELECT *FROM tblPerson

 --> Adding Unique constraint
 ALTER TABLE tblPerson
 ADD constraint UQ_tblPerson_Email UNIQUE(EMail)

 --> Trying to insert a row
 INSERT INTO tblPerson Values(8, 'Yammi Verma', 'amitverma.dce@gmail.com', 2, 1)  --> Violation of Unique constraint


--> Deleting Unique constraint
ALTER TABLE tblPerson
DROP CONSTRAINT UQ_tblPerson_EMail 
