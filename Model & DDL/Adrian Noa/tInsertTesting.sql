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




    DECLARE TriggerTemp_Insert_Cursor CURSOR FOR

    SELECT EmployeeId FROM Inserted

    DECLARE @cursorID int

    OPEN TriggerTemp_Insert_Cursor;

    FETCH NEXT FROM TriggerTemp_Insert_Cursor INTO @cursorID

    WHILE @@FETCH_STATUS = 0

    BEGIN

        ----------------------------------
        ----- Variable Declaration -------
        ----------------------------------
        
        DECLARE @DateTime2Now DATETIME2 =  SYSDATETIME();

        DECLARE 
        @DBAction CHAR(1)
        ,@IsDeleted CHAR(1)
        ,@Note CHAR(200)
        ,@NumberOfRows INT
        -- ,@nullcnt INT
        -- ,@validcnt INT
        -- ,@errno INT
        -- ,@severity INT
        -- ,@state INT
        -- ,@errmsg VARCHAR(255);

        IF (EXISTS (SELECT * FROM Inserted))

        BEGIN
            SET @Note = 'Database Row Added. transaction number: 1'
            SET @DBAction = 'I'
            SET @IsDeleted = 'N'
        END;

        SELECT @NumberOfRows = @@rowcount

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


                PRINT 'Row Inserted. TableId: ' + CONVERT(varchar(10), @cursorID) + 'at' +  CONVERT(varchar(18), @DateTime2Now)

                ----------------------------------
                -------- Trigger  End ------------
                ----------------------------------

        FETCH NEXT FROM TriggerTemp_Insert_Cursor INTO @cursorID


    END;

    CLOSE TriggerTemp_Insert_Cursor;

    DEALLOCATE TriggerTemp_Insert_Cursor;











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