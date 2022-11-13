CREATE %TLX(@if(IsPropertyTrue("Use_Alter_Syntax")) {"OR ALTER "})TRIGGER TI_%TableOwner_%TableName_LastUpdated ON %TableOwner(.)[%TableName]
   %SQLServerWithOptions %Fire %Actions(",") 
 %ProcedureProps 
  AS

  UPDATE 
      [%TableOwner](.)[%TableName]
  SET 
      DateOfLastUpdate = GETDATE()
  FROM 
      [%TableOwner](.)[%TableName] as c
  INNER JOIN 
      Inserted i 
  ON c.%TableNameId = i.%TableNameId





%DBMSDelim

ENABLE TRIGGER TI_%TableOwner_%TableName_LastUpdated ON %TableOwner(.)[%TableName]

%DBMSDelim