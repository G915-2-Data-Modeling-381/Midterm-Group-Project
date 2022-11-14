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

        print ' trying to insert here'

                ----------------------------------
                -------- Trigger code ------------
                ----------------------------------

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
                    ,1
                    -- ,1
                    ,@DateTime2Now
                    ,@DateTime2Now
                    ,@DateTime2Now
                    ,@DBAction
                    ,@DateTime2Now

                from Inserted


                insert into SystemVersioned.Employee
                (
                    EmployeeId,
                    FullName,
                    Department,
                    Salary,
                    Notes
                )
                select
                    EmployeeId,
                    FullName,
                    Department,
                    Salary,
                    @Note

                from Inserted


                PRINT 'Row Inserted. '

                ----------------------------------
                -------- Trigger  End ------------
                ----------------------------------


    END;




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