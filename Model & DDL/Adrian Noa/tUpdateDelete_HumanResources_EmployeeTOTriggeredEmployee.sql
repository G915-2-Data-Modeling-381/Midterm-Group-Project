

CREATE OR ALTER TRIGGER %ProcedureOwner(.)%TriggerName ON %TableOwner(.)%TableName
%SQLServerWithOptions %Fire %Actions(",")
%ProcedureProps
AS

BEGIN

set xact_abort OFF;

BEGIN TRY




    DECLARE TrigTempUpdate_Cursor CURSOR FOR

    SELECT EmployeeId FROM Deleted

    DECLARE @cursorID int

    OPEN TrigTempUpdate_Cursor;

    FETCH NEXT FROM TrigTempUpdate_Cursor INTO @cursorID

    WHILE @@FETCH_STATUS = 0

    BEGIN

        ----------------------------------
        ----- Variable Declaration -------
        ----------------------------------

        IF (EXISTS (SELECT * FROM Inserted) AND EXISTS (SELECT * FROM Deleted))
        BEGIN
            UPDATE Triggered.Employee SET
            Employee.FullName = CONCAT(i.EmployeeLastName, ', ', i.EmployeeFirstName),
            Employee.Department = i.EmployeeDepartment,
            Employee.Salary = i.EmployeeSalary,
            Employee.BirthDate = i.EmployeeBirthDate,
            Employee.HireDate = i.EmployeeHireDate,
            Employee.PhoneNumber = i.EmployeePhoneNumber,
            Employee.FullAddress = CONCAT(i.EmployeeAddress, ', ', i.EmployeeCity, ', ', i.EmployeePostalCode),
            Employee.DateAdded = i.DateAdded,
            Employee.DateOfLastUpdate = i.DateOfLastUpdate
            FROM INSERTED as i
            WHERE i.EmployeeId = @cursorID
        END;


        ELSE IF (EXISTS (SELECT * FROM Deleted))
        BEGIN

            DELETE FROM Triggered.Employee WHERE EmployeeId = @cursorID


        END;

        ----------------------------------
        -------- Trigger  End ------------
        ----------------------------------



        FETCH NEXT FROM TrigTempUpdate_Cursor INTO @cursorID


    END;

    CLOSE TrigTempUpdate_Cursor;

    DEALLOCATE TrigTempUpdate_Cursor;











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