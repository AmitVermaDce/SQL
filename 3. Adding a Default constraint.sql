-- Select database sample
Use [sample]
Go
-- Display all data in a particular table
Select *from tblPerson
Select *from tblGender

-- Insert a value in table(tblPerson)
Insert into tblPerson(ID, Name, EMail) Values(5, 'Dheeraj Verma', 'idheerajkumar@gmail.com')
Insert into tblPerson(ID, Name, EMail, GenderID) Values (8, 'Shah rukh','shah@gmail.com',NULL)


/* In second insert command, GenderID is provided with a NULL value */
-- Default constraint: To allow default values to be inserted if value is not provided
Alter table tblPerson
add constraint DF_tblPerson_GenderID
Default 3 for GenderID 

-- Adding a new column with default value, to an existing table
ALTER TABLE tblPerson
Add dummy int NOT NULL
Constraint DF_tblPerson_dummy default 3

-- Removing a column from table 
Alter table tblPerson
drop column dummy

-- Dropping a constraint
ALTER table tblPerson
drop constraint DF_tblPerson_dummy
