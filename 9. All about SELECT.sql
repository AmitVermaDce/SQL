/* Displaying all rows and columns */
--> Method - 1
SELECT *FROM tblPerson

--> Method - 2: Selecting specific or all columns
SELECT [ID]
      ,[Name]
      ,[EMail]
      ,[GenderID]
      ,[Age]
	  ,[City]
  FROM [sample].[dbo].[tblPerson]
GO

--> Get distinct values
SELECT DISTINCT City from tblPerson --> City column with distinct values

SELECT DISTINCT Name, City from tblPerson --> Name and City column with distinct values across each row

SELECT *FROM tblPerson WHERE City='London' --> All rows with value London in City column

SELECT *FROM tblPerson WHERE City <> 'London' --> All rows with value not equal to London in City Column
SELECT *FROM tblPerson WHERE City != 'London' --> Do the same thing
 
--> Specify a list of values
SELECT *FROM tblPerson WHERE Age = 27 or Age = 28 or Age = 19 --> Specify row with Age is 27,28 or 19
SELECT *FROM tblPerson WHERE Age IN (28, 19,27) --> Do the same thing

--> Specify a range
SELECT *FROM tblPerson WHERE Age BETWEEN 19 AND 28 --> All rows between range 20 to 28 (inclusive)

/* Wild Cards

% : Specifies zero or more characters
_ : Specifies exactly one character
[] : Any character within the bracket
[^] : Not any character within the brackets

*/

--> Specify a pattern
SELECT *FROM tblPerson WHERE City LIKE 'H%' --> rows with City column having H initially
SELECT *FROM tblPerson WHERE EMail LIKE '%@%' --> rows with EMail column having @ in between a value
SELECT *FROM tblPerson WHERE EMail NOT LIKE '%@%' --> rows with EMail column doesnot contain @ in a value

Select *from tblPerson where Name LIKE '[AND]%' --> Specifies all the rows in which Name starts with A,N,D
Select *from tblPerson where Name LIKE '[^AND]%' --> Specifies all the rows in which Name does not starts with A,N,D

--> Conditional Statements using AND, OR operators
Select *from tblPerson where (City ='London' or City = 'New Delhi') and Age>20

--> Order by
Select *from tblPerson order by Name --> Default sort order is ascending
Select *from tblPerson order by Age DESC
Select *from tblPerson order by Name DESC, Age ASC

--> Select only top 10 rows
Select top 2 *from tblPerson --> 2 rows from all the columns 
Select top 3 Name, Age from tblPerson --> top 3 rows of Name and Age column
Select top 50 percent* from tblPerson

--> I want to find out the oldest person in my table
Select top 1* from tblPerson 
order by Age DESC






