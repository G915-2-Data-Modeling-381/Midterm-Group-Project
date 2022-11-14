CREATE OR ALTER TRIGGER %ProcedureOwner(.)%TriggerName ON %TableOwner(.)%TableName
%SQLServerWithOptions %Fire %Actions(",")
%ProcedureProps
AS
/* Customized Erwin Builtin Trigger */
/* %Actions(",") trigger on %TableOwner(.)%TableName */
/* default body fox %ProcedureOwner(.)%TriggerName */

BEGIN
/*
	Update Trigger with upfront intialization for the variables to be inserted into
	the trigger history table
*/
--
--  https://stackoverflow.com/questions/884334/tsql-try-catch-transaction-in-trigger
--

set xact_abort OFF;

BEGIN TRY


    DECLARE I_HumanResources_Employee_Cursor CURSOR FOR

    SELECT EmployeeId FROM Inserted

    DECLARE @cursorID int

    OPEN I_HumanResources_Employee_Cursor;

    FETCH NEXT FROM I_HumanResources_Employee_Cursor INTO @cursorID

    WHILE @@FETCH_STATUS = 0

    BEGIN
        
        IF (EXISTS (SELECT * FROM Inserted))

                ----------------------------------
                -------- Trigger code ------------
                ----------------------------------

                UPDATE 
                    [%TableOwner].[%TableName]
                SET 
                    DateOfLastUpdate = SYSDATETIME()
                FROM 
                    [%TableOwner].[%TableName] as c
                INNER JOIN 
                    Inserted i 
                ON c.%TableNameId = i.%TableNameId

                ----------------------------------
                ------- End Last Updated ---------
                ----------------------------------

                insert into Triggered.Employee
                (
                    EmployeeId,
                    FullName,
                    Department,
                    Salary,
                    BirthDate,
                    HireDate,
                    PhoneNumber,
                    FullAddress,
                    DateAdded,
                    DateOfLastUpdate
                )
                select
                    EmployeeId,
                    CONCAT(EmployeeLastName, ', ', EmployeeFirstName),
                    EmployeeDepartment,
                    EmployeeSalary,
                    EmployeeBirthDate,
                    EmployeeHireDate,
                    EmployeePhoneNumber,
                    CONCAT(EmployeeAddress, ', ', EmployeeCity, ', ', EmployeePostalCode),
                    DateAdded,
                    DateOfLastUpdate

                from Inserted where EmployeeId = @cursorId


                PRINT 'Row Inserted. TableId: ' + CONVERT(varchar(10), @cursorID)

                ----------------------------------
                -------- Trigger  End ------------
                ----------------------------------

        FETCH NEXT FROM I_HumanResources_Employee_Cursor INTO @cursorID


    END;

    CLOSE I_HumanResources_Employee_Cursor;

    DEALLOCATE I_HumanResources_Employee_Cursor;


END TRY
BEGIN CATCH
   SELECT ERROR_MESSAGE() AS [Error Message]
         ,ERROR_LINE() AS ErrorLine
         ,ERROR_NUMBER() AS [Error Number]  
         ,ERROR_SEVERITY() AS [Error Severity]  
         ,ERROR_STATE() AS [Error State]  
END CATCH

END;

%DBMSDelim

ENABLE TRIGGER %ProcedureOwner(.)%TriggerName ON %TableOwner(.)%TableName

%DBMSDelim