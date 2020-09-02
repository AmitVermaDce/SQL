/* 
Check Constraint: is used to limit the range of the values, that can be entered for a column.
Example: Age column should accept values from min to max values.
Values can neither be negative and nor infinite. It should be in max-min range.

Select table or column and Press Alt+f1: data types of all/one column/s.

*/

Select *from tblPerson
select *from tblGender

-- New column added in tblPerson
Alter table tblPerson
add Age int NULL default NULL

-- Inserting a negative value into tblPerson
Insert into tblPerson(ID, Name, EMail, GenderID, Age) 
Values (9, 'Pratham Verma','pratham@gmail.com',1,-970)
/* 
In above command I inserted a value which is a negative int number. 
So, to prevent this from happenwe we use check constraint.
Check constraint is just a boolen value (True/False)

Add constraint
Syntax: 
ALTER TABLE {TABLE NAME}
ADD CONSTRAINT {CONSTRAINT_NAME} CHECK (BOOLEAN_EXPRESSION)

If the BOOLEAN_EXPRESSION returns true, then check constraint allow the value, otherwise it doesn't.
Since, AGE is a nullable column, its possible to pass NULL for this column, when insering a row.
When you pass NULL for the Age column, the boolean expression evaluates to UNKNOWN, and allows the value.

Drop constraint
ALTER TABLE {TABLE NAME}
DROP CONSTRAINT {Constraint Name}

*/
-- First remove all the rows where age value is conflicting the check constraint
delete from tblPerson where ID=9

-- Create a check constraint
ALTER TABLE tblPerson
ADD CONSTRAINT CK_tblPerson_Age CHECK (Age>0 and Age<150)

-- Now check the constraint by insering values
Insert into tblPerson(ID, Name, EMail, GenderID, Age) 
Values (6, 'Himanshu Singh','hsingh@gmail.com',1,-10) --> this will produce an error

Insert into tblPerson(ID, Name, EMail, GenderID, Age) 
Values (6, 'Himanshu Singh','hsingh@gmail.com',1, 25) --> successfully updated the table