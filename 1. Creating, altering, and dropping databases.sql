-- Creating  new database
Create Database sample
/* 
- In SSMS we have two types of databases:-
1. User Databases
	- sample1
	- sample2
2. System Defined Databases
	- master
	- model
	- msdb
	- tempdb

- locate the databases in the local directory:
Properties of database(sample1) > path(C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA)
	- file1.mdf (Master Data File): contains actual data
	- file2.ldf (Log Data File): Transaction Log file, used to recover the database
*/
-- To alter database:
Alter Database sample1 Modify name=sample_new

-- Using Stored Procedure
 Execute sp_renamedb 'sample2', 'sample3'

 -- Drop a database
 drop Database sample /* Mmake sure your database should not be used by some other */


 /* Example: 4 machines are connected with the single server. So, to delete the server, the server
 must be disconnected from all other instances. */
 Alter database sample Set Single_User With Rollback immediate
 drop Database sample 

 -- Note System databases cannot be deleted