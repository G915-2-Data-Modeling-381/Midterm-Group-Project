

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




    DECLARE UD_Audit_Employee_Cursor CURSOR FOR

    SELECT EmployeeId FROM Deleted

    DECLARE @cursorID int

    OPEN UD_Audit_Employee_Cursor;

    FETCH NEXT FROM UD_Audit_Employee_Cursor INTO @cursorID

    WHILE @@FETCH_STATUS = 0

    BEGIN

        ----------------------------------
        ----- Variable Declaration -------
        ----------------------------------

        DECLARE 
        @DBAction CHAR(1)
        ,@IsDeleted CHAR(1)
        ,@Note CHAR(200)
        -- ,@AuditDateTimeStamp DATETIME2 = @DateTime2Now
        -- ,@TimestampRowChanged DATETIME2 = @DateTime2Now
        ,@SysEnd_as_StartTime DATETIME2
        ,@NumberOfRows INT
        -- ,@nullcnt INT
        -- ,@validcnt INT
        -- ,@errno INT
        -- ,@severity INT
        -- ,@state INT
        -- ,@errmsg VARCHAR(255);
        
        --	The Trigger determines DBAction 
        --  The only actions that we will deal with are Update and Delete.  Inserts are ignored

        DECLARE @tnum integer

        DECLARE @DateTime2Now DATETIME2;
        SET @DateTime2Now = SYSDATETIME();






        IF (EXISTS (SELECT * FROM Inserted) AND EXISTS (SELECT * FROM Deleted))
        BEGIN
            SELECT TOP(1)
                @tnum = TransactionNumber + 1
                ,@SysEnd_as_StartTime = SysEndTime
                
            FROM Triggered.AuditTriggeredEmployeeHistory WHERE EmployeeId = @cursorID ORDER BY TransactionNumber DESC

            SET @Note = CONCAT('Row Updated. Transaction number: ', @tnum)
            SET @DBAction = 'U'
            SET @IsDeleted = 'N'




            UPDATE SystemVersioned.Employee SET
                Employee.FullName = i.FullName,
                Employee.Department = i.Department,
                Employee.Salary = i.Salary,
                Employee.Notes = @Note

            from Inserted as i where Employee.EmployeeId = @cursorID




        END;


        ELSE IF (EXISTS (SELECT * FROM Deleted))
        BEGIN
            SELECT TOP(1)
                @tnum = TransactionNumber + 1
                ,@SysEnd_as_StartTime = SysEndTime
                
            FROM Triggered.AuditTriggeredEmployeeHistory WHERE EmployeeId = @cursorID ORDER BY TransactionNumber DESC

            SET @Note = CONCAT('Record Deleted from database. Transaction number: ', @tnum)
            SET @DBAction = 'D'
            SET @IsDeleted = 'Y'

            DELETE FROM SystemVersioned.Employee where Employee.EmployeeId = @cursorID



        END;

        SELECT @NumberOfRows = @@rowcount

                ----------------------------------
                -------- Trigger code ------------
                ----------------------------------
                    PRINT 'Processing ID: ' + CONVERT(varchar(10), @cursorID)
                    PRINT ' some mesage here'


                    insert into Triggered.AuditTriggeredEmployeeHistory
                (
                    %ForEachColumn(Parent, ",") { %ColName }

                    ,Notes
                    ,IsDeleted
                    ,TransactionNumber
                    -- ,UserAuthenticatedKey
                    ,SysStartTime
                    ,SysEndTime
                    ,TimestampRowChanged
                    ,DBAction
                    ,AuditDate
                )
                select
                    %ForEachColumn(Parent, ", ") { %ColName }

                    ,@Note
                    ,@IsDeleted
                    ,@tnum
                    -- ,1
                    ,@SysEnd_as_StartTime
                    ,@DateTime2Now
                    ,@DateTime2Now
                    ,@DBAction
                    ,@DateTime2Now

                    from Deleted where EmployeeId = @cursorID 

                ----------------------------------
                -------- Trigger  End ------------
                ----------------------------------


        FETCH NEXT FROM UD_Audit_Employee_Cursor INTO @cursorID


    END;

    CLOSE UD_Audit_Employee_Cursor;

    DEALLOCATE UD_Audit_Employee_Cursor;











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