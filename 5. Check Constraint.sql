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
add Age int NOT NULL default 0

-- Inserting a negative value into tblPerson
Insert into tblPerson(ID, Name, EMail, GenderID, Age) 
Values (9, 'Pratham Verma','pratham@gmail.com',1,-970)

