/* Trigger Testing
by Adrian Noa
*/

-------STEP 1: execute first to create database------------
use master

DECLARE @DBNAME VARCHAR(15) set @DBNAME =		'Midterm'

		DECLARE @Sql varchar(max) = 
		'DROP DATABASE IF EXISTS ' + @DBNAME
		+ 
		' CREATE DATABASE ' + @DBNAME + ' ALTER DATABASE ' + @DBNAME + ' SET MULTI_USER WITH ROLLBACK  IMMEDIATE '


EXECUTE(@Sql)
--------------------------------------------------------------


---------STEP 2: forward engineer model from erwin on to TriggerTest database--------------------

/* the Forward Engineering "errors" are Delete and Drop sql statements. Ignore them and continue */

---------------------------- then execute next line -----------------------------------------------
use Midterm;
--------------------------------------------------------------------------------------------------



---------STEP 3: Look at data in target and Audit tables --------------------




INSERT INTO HumanResources.Employee
(EmployeeLastName, EmployeeFirstName, EmployeeTitle, EmployeeTitleOfCourtesy, EmployeeBirthDate, EmployeeHireDate, EmployeeDepartment, EmployeeSalary, EmployeeAddress, EmployeeCity, EmployeePostalCode, EmployeePhoneNumber)
VALUES
('Noa', 'Adrian', 'Jr. Engineer', 'Mr.', '1996-11-11', '2022-8-26', 'Human Resources', 230000, '123 Street', 'Manhattan', '01200', '237-555-5555');

update HumanResources.Employee set EmployeeFirstName = 'TESTING 1', EmployeeLastName = 'Testing 1' where EmployeeId = 1;

update HumanResources.Employee set EmployeeFirstName = 'TESTING 2', EmployeeLastName = 'Testing 2' where EmployeeId = 1;

DELETE FROM HumanResources.Employee WHERE EmployeeId = 1;

------------------------------------------------------------------------

select * from HumanResources.Employee;

SELECT * FROM Triggered.Employee;

select * from Triggered.AuditTriggeredEmployeeHistory;

select * from SystemVersioned.Employee;

select * from Audit.VersionedEmployeeHistory;

------------------------------------------------------------------------


insert into HumanResources.Employee(EmployeeFirstName, EmployeeLastName, EmployeeSalary) values ('Adrian', 'Noa', 230000);


insert into HumanResources.Employee(EmployeeFirstName, EmployeeLastName, EmployeeSalary) values ('Adrian', 'Noa', '230000');

Insert into SystemVersioned.Employee (EmployeeId, FullName) values (2, 's');






insert into SystemVersioned.Employee(EmployeeId) values (1);



update SystemVersioned.Employee set FullName = 'Some Name 2' where EmployeeId = 2;








insert into Triggered.AuditTriggeredEmployeeHistory
(
    EmployeeId , FullName , Department , Salary , BirthDate , HireDate , PhoneNumber , FullAddress , DateAdded , DateOfLastUpdate 

    ,Notes
    ,IsDeleted
    ,TransactionNumber
    ,SysStartTime
    ,SysEndTime
    ,TimestampRowChanged
    ,DBAction
    ,AuditDate
)
values(

4,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null

);
    










DROP TRIGGER IF EXISTS [HumanResources].[test];

CREATE TRIGGER [test] ON [HumanResources].[Employee]
    AFTER INSERT,UPDATE 
  
  AS

  print 'updated trigger start'  


  UPDATE 
      [HumanResources].[Employee]
  SET 
      DateOfLastUpdate = SYSDATETIME()
  FROM 
      [HumanResources].[Employee] as c
  INNER JOIN 
      Inserted i 
  ON c.EmployeeId = i.EmployeeId;

--------------------------------------------




-----------------STEP 4: execute this sql to add data to test table--------------------------------------
insert into Utils.testTable(Employeefullname, Department , Salary ) values 
('Adrian', 'CompSci', '95000'),
('Emilio', 'Front-end Dev', 11100),
('Gerar', 'Mucisian', '11134'),
('Cat', 'Couch Surfer', 9999);
insert into Utils.testTable(Employeefullname, Department , Salary ) values 
('Test1', 'Department 1', '11111'),
('Test2', 'Department XYZ', 22222),
('Test3', 'Pianist', '33333'),
('Test4', 'Architect', 444444);
update Utils.TestTable set EmployeeFullName = 'Light Update 1', Salary = 111 where tableid >= 5 and tableid <= 6
update Utils.TestTable set EmployeeFullName = 'Light Update 2', Salary = 222 where tableid >= 5 and tableid <= 6
update Utils.TestTable set EmployeeFullName = 'Light Update 3', Salary = 333 where tableid >= 5 and tableid <= 6
update Utils.TestTable set EmployeeFullName = 'Bulk Update 1', Salary = 777777 where tableid >= 5 and tableid <= 8
update Utils.TestTable set EmployeeFullName = 'Light Update 4', Salary = 444 where tableid >= 5 and tableid <= 6
update Utils.TestTable set EmployeeFullName = 'Bulk Update 2', Salary = 8888888 where tableid >= 5 and tableid <= 8
delete from utils.TestTable where tableid = 6
update Utils.TestTable set EmployeeFullName = 'Bulk Update 3', Salary = 9999999 where tableid >= 5 and tableid <= 8
update Utils.TestTable set EmployeeFullName = 'Light Update 5', Salary = 555 where tableid >= 5 and tableid <= 6
delete from utils.TestTable where tableid = 7
----------------------------------------------------------------------------------------------



---------------------- STEP 5: select queries to view data in Audit ----------------------------------------
--------------------- change table id ->  1 .... 8


select * from audit.testtable_history where tableid = 8











