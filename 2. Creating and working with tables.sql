Use [sample]
Go

-- Create a Person table
create table tblPerson(
ID int Primary Key NOT NULL,
Name nvarchar(20) NOT NULL,
Email nvarchar(20) NOT NULL,
GenderID int
)
-- Create a Gender table
Create Table tblGender(
ID int NOT NULL Primary Key,
Gender nvarchar(50) NOT NULL
)

-- Adding Foreign constraint
Alter table tblPerson add constraint tblPerson_GenderID_FK
Foreign Key (GenderID) references tblGender(ID)