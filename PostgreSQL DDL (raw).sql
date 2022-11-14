
CREATE SCHEMA Audit;

CREATE SCHEMA Data;

CREATE SCHEMA dBlob;

CREATE SCHEMA DbSecurity;

CREATE SCHEMA dDatetime;

CREATE SCHEMA dGroupMidterm;

CREATE SCHEMA dNumber;

CREATE SCHEMA dString;

CREATE SCHEMA Example;

CREATE SCHEMA Hashing;

CREATE SCHEMA HumanResources;

CREATE SCHEMA JsonOutput;

CREATE SCHEMA Production;

CREATE SCHEMA RelationalCalculii;

CREATE SCHEMA RelationalCrossJoin;

CREATE SCHEMA Sales;

CREATE SCHEMA sdAddressString_AN;

CREATE SCHEMA sdAuditSysTime_AG;

CREATE SCHEMA sdContactNumber_AG;

CREATE SCHEMA sdFlagCharacter_JG;

CREATE SCHEMA sdIntegerNumber_JG;

CREATE SCHEMA sdKeyIntegerNumber_JG;

CREATE SCHEMA sdMiscellanousStrings_AG;

CREATE SCHEMA sdMoneyNumber_JG;

CREATE SCHEMA sdNameString_AG;

CREATE SCHEMA sdNanosecondPreciseDatetime_JG;

CREATE SCHEMA sdPositiveIntegerNumber_JG;

CREATE SCHEMA sdTitleString_JG;

CREATE SCHEMA sdYearMonthDay_AG;

CREATE SCHEMA Service;

CREATE SCHEMA SystemVersioned;

CREATE SCHEMA Temporal;

CREATE SCHEMA Triggered;

CREATE SCHEMA Udt;

CREATE SCHEMA Utils;

CREATE Domain sdAddressString_AN.addressline_AN
	AS VARCHAR(35) NULL
	CHECK %AttFieldName LIKE '%[A-Z0-9a-z\-]';

CREATE Domain sdAuditSysTime_AG.auditTriggeredTimestamp_WL
	AS TIMESTAMP NOT NULL
	CHECK [%AttFieldName]  > 0001-01-01 AND [%AttFieldName] < 9999-12-31 ;

CREATE Domain sdYearMonthDay_AG.birthDate_AG
	AS DATE NULL;

CREATE Domain sdAddressString_AN.city_WL
	AS VARCHAR(20) NULL;

CREATE Domain sdMiscellanousStrings_AG.classTime_AN
	AS CHAR(5) NULL
	CHECK %AttFieldName LIKE '[1-9]:[0-5][0-9]' OR %AttFieldName LIKE '[1-2][0-9]:[0-5][0-9]';

CREATE Domain sdNameString_AG.companyName_AG
	AS VARCHAR(60) NULL
	CHECK [%AttFieldName] like '[A-Z]%';

CREATE Domain sdTitleString_JG.contactTitle_JG
	AS VARCHAR(60) NULL
	CHECK %AttFieldName != '';

CREATE Domain sdAddressString_AN.country_AG
	AS CHAR(3) NULL
	CHECK [%AttFieldName] like '[A-Z][A-Z][A-Z]';

CREATE Domain sdMoneyNumber_JG.currency_JG
	AS MONEY NULL
	CHECK %AttFieldName > 0.000;

CREATE Domain sdYearMonthDay_AG.day_AG
	AS CHAR(2) NULL;

CREATE Domain dGroupMidterm.dBlob
	AS VARBINARY(MAX) NULL;

CREATE Domain dGroupMidterm.dDateTime
	AS TIMESTAMP NULL;

CREATE Domain departmentName_AN
	AS VARCHAR(25) NULL
	CHECK [%AttFieldName] like '[A-Z]%';

CREATE Domain dbo.dGroupMidtermProject
	AS CHAR(1) NULL;

CREATE Domain dGroupMidterm.dNumber
	AS INTEGER NULL;

CREATE Domain dGroupMidterm.dString
	AS CHAR(1) NULL;

CREATE Domain email_WL
	AS VARCHAR(40) NULL
	CHECK %AttFieldName LIKE '([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})';

CREATE Domain sdContactNumber_AG.faxNumber_AG
	AS CHAR(14) NULL;

CREATE Domain sdNameString_AG.firstName_AG
	AS VARCHAR(25) NULL
	CHECK [%AttFieldName] like '[A-Z]%';

CREATE Domain sdFlagCharacter_JG.flag_WL
	AS CHAR(1) NOT NULL
	CHECK %AttFieldName IN ('Y', 'N');

CREATE Domain fullAddress_AN
	AS VARCHAR(100) NULL;

CREATE Domain sdNameString_AG.fullName_AG
	AS VARCHAR(52) NULL
	CHECK [%AttFieldName] like '[A-Z]% [A-Z]%';

CREATE Domain sdPositiveIntegerNumber_JG.grade_JG
	AS INTEGER NULL
	CHECK %AttFieldName BETWEEN 0 AND 100;

CREATE Domain sdYearMonthDay_AG.hireDate_AG
	AS DATE NULL;

CREATE Domain sdNameString_AG.lastName_AG
	AS VARCHAR(25) NULL
	CHECK [%AttFieldName] like '[A-Z]%';

CREATE Domain sdYearMonthDay_AG.month_AG
	AS CHAR(2) NULL;

CREATE Domain sdMiscellanousStrings_AG.notes_WL
	AS VARCHAR(300) NULL;

CREATE Domain sdContactNumber_AG.phoneNumber_AN
	AS CHAR(14) NULL
	CHECK %AttFieldName LIKE '%[0-9\-]';

CREATE Domain sdAddressString_AN.postalCode_AN
	AS CHAR(5) NULL
	CHECK %AttFieldName LIKE '[0-9][0-9][0-9][0-9][0-9]';

CREATE Domain sdPositiveIntegerNumber_JG.quantity_WL
	AS INTEGER NOT NULL
	CHECK [%AttFieldName]  >= 0;

CREATE Domain sdAddressString_AN.region_AG
	AS VARCHAR(40) NULL;

CREATE Domain salary_AN
	AS INTEGER NULL
	CHECK %AttFieldName > 0;

CREATE Domain dString.sdAddressString_AN
	AS CHAR(1) NULL;

CREATE Domain dDatetime.sdAuditSysTime
	AS TIMESTAMP NULL;

CREATE Domain dString.sdContactInformation_AG
	AS CHAR(14) NULL;

CREATE Domain sdDateFormat
	AS TIMESTAMP NULL;

CREATE Domain dString.sdFlagCharacterString
	AS CHAR(1) NULL;

CREATE Domain dNumber.sdIntegerNumber_JG
	AS INTEGER NULL;

CREATE Domain sdPositiveIntegerNumber_JG.sdKeyIntegerNumber_JG
	AS INTEGER NULL
	CHECK %AttFieldName > 0;

CREATE Domain dString.sdMiscellanousStrings
	AS CHAR(1) NULL;

CREATE Domain dNumber.sdMoneyNumber_JG
	AS MONEY NULL;

CREATE Domain dString.sdNameString_AG
	AS CHAR(1) NULL
	CHECK [%AttFieldName] like '[A-Z]%';

CREATE Domain dDatetime.sdNanosecondPreciseDatetime_JG
	AS TIMESTAMP NULL
	CHECK TRY_CONVERT(datetime2, %AttFieldName) IS NOT NULL;

CREATE Domain sdIntegerNumber_JG.sdPositiveIntegerNumber_JG
	AS INTEGER NULL
	CHECK %AttFieldName > 0;

CREATE Domain dString.sdTitleString_JG
	AS CHAR(1) NULL
	CHECK %AttFieldName != '';

CREATE Domain dDatetime.sdYearMonthDay_AG
	AS DATE NULL;

CREATE Domain sdIntegerNumber_JG.sequenceNumber_JG
	AS INTEGER NOT NULL;

CREATE Domain sdAddressString_AN.state_AN
	AS CHAR(2) NULL;

CREATE Domain SurrogateKey_AN
	AS INTEGER NULL
	CHECK %AttFieldName > 0;

CREATE Domain sdKeyIntegerNumber_JG.surrogateKeyIdentity_JG
	AS INTEGER NOT NULL
	CHECK %AttFieldName > 0;

CREATE Domain sdAuditSysTime_AG.sysEnd_WL
	AS TIMESTAMP NOT NULL
	CHECK [%AttFieldName] > '0001-01-01';

CREATE Domain sdAuditSysTime_AG.sysStart_WL
	AS TIMESTAMP NOT NULL
	CHECK [%AttFieldName]  < '9999-12-31';

CREATE Domain sdNanosecondPreciseDatetime_JG.timeStamp_AN
	AS TIMESTAMP NULL
	CHECK %AttFieldName BETWEEN '1900-01-01' AND sysdatetime();

CREATE Domain sdTitleString_JG.titleOfCourtesy_AG
	AS CHAR(4) NULL
	CHECK [%AttFieldName]='Mr.' OR [%AttFieldName]='Ms.' OR [%AttFieldName]='Mrs.' OR [%AttFieldName]='Dr.' OR [%AttFieldName]='Jr.';

CREATE Domain sdFlagCharacter_JG.triggerOption_JG
	AS CHAR(1) NULL
	CHECK %AttFieldName IN ('U', 'D', 'I');

CREATE Domain sdMoneyNumber_JG.unitPrice_WL
	AS MONEY NOT NULL
	CHECK [%AttFieldName]  >= 0;

CREATE Domain sdYearMonthDay_AG.year_AG
	AS CHAR(4) NULL;

CREATE Domain YearMonthDay
	AS DATE NULL;

CREATE FUNCTION JsonOutput.MongoOrder() AS $$CREATE FUNCTION MongoOrder ()  
  
  
as RETURN
(
    select o.OrderId as OrderObjectId
         , o.OrderDate
         , o.RequiredDate
         , o.ShipToDate
         , o.Freight
         , o.ShipToName
         , o.ShipToAddress
         , o.ShipToCity
         , o.ShipToRegion
         , o.ShipToPostalCode
         , o.ShipToCountry
         , (
               select SalesCustomer.CustomerId          as 'CustomerObjectId'
                    , SalesCustomer.CustomerCompanyName as 'CustomerCompanyName'
                    , SalesCustomer.CustomerContactName as 'CustomerContactName'
                    , SalesCustomer.CustomerPhoneNumber as 'CustomerPhoneNumber'
                    , SalesCustomer.CustomerFaxNumber   as 'CustomerFaxNumber'
               from Sales.[Orders]            as o2
                   inner join Sales.Customer as SalesCustomer
                       on SalesCustomer.CustomerId = o.CustomerId
               where o.OrderId = o2.OrderId
               for json path, include_null_values
           )         as SalesCustomer
         , (
               select HumanResourcesEmployee.EmployeeId          as 'EmployeeObjectId'
                    , HumanResourcesEmployee.EmployeeLastName    as 'EmployeeLastName'
                    , HumanResourcesEmployee.EmployeeFirstName   as 'EmployeeFirstName'
                    , HumanResourcesEmployee.EmployeePhoneNumber as 'EmployeePhoneNumber'
                    , HumanResourcesEmployee.EmployeeManagerId   as 'EmployeeManagerId'
               from Sales.[Orders]                     as o2
                   inner join HumanResources.Employee as HumanResourcesEmployee
                       on HumanResourcesEmployee.EmployeeId = o2.EmployeeId
               where o.OrderId = o2.OrderId
               for json path, include_null_values
           )         as HumanResourcesEmployee
         , (
               select SalesShipper.ShipperId          as 'ShipperObjectId'
                    , SalesShipper.ShipperCompanyName as 'ShipperCompanyName'
                    , SalesShipper.PhoneNumber        as 'PhoneNumber'
               from Sales.[Orders]           as o2
                   inner join Sales.Shipper as SalesShipper
                       on SalesShipper.ShipperId = o2.ShipperId
               where o.OrderId = o2.OrderId
               for json path, include_null_values
           )         as SalesShipper
    from Sales.[Orders]                     as o
        inner join Sales.Customer          as SalesCustomer
            on SalesCustomer.CustomerId = o.CustomerId
        inner join HumanResources.Employee as HumanResourcesEmployee
            on HumanResourcesEmployee.EmployeeId = o.EmployeeId
        inner join Sales.Shipper           as SalesShipper
            on SalesShipper.ShipperId = o.ShipperId
);



$$
VOLATILE;

CREATE FUNCTION JsonOutput.MongoOrderDetail() AS $$CREATE FUNCTION MongoOrderDetail ()  
  
  
as RETURN
(
    select OrderDetail.OrderId                                                                    as OrderObjectId
         , row_number() over (partition by OrderDetail.OrderId order by OrderDetail.OrderId)      as LineItemNumer
         , OrderDetail.UnitPrice
         , OrderDetail.Quantity
         , OrderDetail.DiscountPercentage
         , OrderDetail.UnitPrice * OrderDetail.Quantity                                           as TotalCost
         , (OrderDetail.UnitPrice * OrderDetail.Quantity) * (1. - OrderDetail.DiscountPercentage) as TotalDiscountedCost
         , OrderDetail.OrderId
         , (
               select distinct
                      ProductionProduct.ProductId    as 'ProductionProduct.ProductObjectId'
                    , ProductionProduct.ProductName  as 'ProductionProduct.ProductName'
                    , ProductionProduct.SupplierId   as 'ProductionProduct.SupplierId'
                    , ProductionProduct.CategoryId   as 'ProductionProduct.CategoryId'
                    , ProductionProduct.UnitPrice    as 'ProductionProduct.UnitPrice'
                    , ProductionProduct.Discontinued as 'ProductionProduct.Discontinued'
               from Production.Product            as ProductionProduct
                   inner join Production.Category as ProductionCategory
                       on ProductionCategory.CategoryId = ProductionProduct.CategoryId
                   inner join Production.Supplier as ProductionSupplier
                       on ProductionSupplier.SupplierId = ProductionProduct.SupplierId
                   inner join Sales.OrderDetail   as od
                       on OrderDetail.ProductId = ProductionProduct.ProductId
               where od.OrderId = OrderDetail.OrderId
               for json path, include_null_values
           )                                                                                      as ProductionProduct
         , (
               select distinct
                      ProductionCategory.CategoryId   as 'ProductionCategory.CategoryObjectId'
                    , ProductionCategory.CategoryName as 'ProductionCategory.CategoryName'
                    , ProductionCategory.Description  as 'ProductionCategory.Description'
               from Production.Product            as ProductionProduct
                   inner join Production.Category as ProductionCategory
                       on ProductionCategory.CategoryId = ProductionProduct.CategoryId
                   inner join Sales.OrderDetail   as od
                       on OrderDetail.ProductId = ProductionProduct.ProductId
               where od.OrderId = OrderDetail.OrderId
               for json path, include_null_values
           )                                                                                      as ProductionCategory
         , (
               select distinct
                      ProductionSupplier.SupplierId          as 'ProductionSupplier.SupplierObjectId'
                    , ProductionSupplier.SupplierCompanyName as 'ProductionSupplier.SupplierCompanyName'
                    , ProductionSupplier.SupplierContactName as 'ProductionSupplier.SupplierContactName'
                    , ProductionSupplier.SupplierPhoneNumber as 'ProductionSupplier.SupplierPhoneNumber'
                    , ProductionSupplier.SupplierFaxNumber   as 'ProductionSupplier.SupplierFaxNumber'
               from Production.Product            as ProductionProduct
                   inner join Production.Supplier as ProductionSupplier
                       on ProductionSupplier.SupplierId = ProductionProduct.SupplierId
                   inner join Sales.OrderDetail   as od
                       on OrderDetail.ProductId = ProductionProduct.ProductId
               where od.OrderId = OrderDetail.OrderId
               for json path, include_null_values
           )                                                                                      as ProductionSupplier
    from Production.Product            as ProductionProduct
        inner join Production.Category as ProductionCategory
            on ProductionCategory.CategoryId = ProductionProduct.CategoryId
        inner join Production.Supplier as ProductionSupplier
            on ProductionSupplier.SupplierId = ProductionProduct.SupplierId
        inner join Sales.OrderDetail   as OrderDetail
            on OrderDetail.ProductId = ProductionProduct.ProductId
    where OrderDetail.OrderId = @OrderId
);



$$
VOLATILE;

CREATE FUNCTION dbo.fn_diagramobjects() AS $$CREATE FUNCTION fn_diagramobjects ()  
  
  
AS BEGIN
		declare @id_upgraddiagrams		int
		declare @id_sysdiagrams			int
		declare @id_helpdiagrams		int
		declare @id_helpdiagramdefinition	int
		declare @id_creatediagram	int
		declare @id_renamediagram	int
		declare @id_alterdiagram 	int 
		declare @id_dropdiagram		int
		declare @InstalledObjects	int

		select @InstalledObjects = 0

		select 	@id_upgraddiagrams = object_id(N'dbo.sp_upgraddiagrams'),
			@id_sysdiagrams = object_id(N'dbo.sysdiagrams'),
			@id_helpdiagrams = object_id(N'dbo.sp_helpdiagrams'),
			@id_helpdiagramdefinition = object_id(N'dbo.sp_helpdiagramdefinition'),
			@id_creatediagram = object_id(N'dbo.sp_creatediagram'),
			@id_renamediagram = object_id(N'dbo.sp_renamediagram'),
			@id_alterdiagram = object_id(N'dbo.sp_alterdiagram'), 
			@id_dropdiagram = object_id(N'dbo.sp_dropdiagram')

		if @id_upgraddiagrams is not null
			select @InstalledObjects = @InstalledObjects + 1
		if @id_sysdiagrams is not null
			select @InstalledObjects = @InstalledObjects + 2
		if @id_helpdiagrams is not null
			select @InstalledObjects = @InstalledObjects + 4
		if @id_helpdiagramdefinition is not null
			select @InstalledObjects = @InstalledObjects + 8
		if @id_creatediagram is not null
			select @InstalledObjects = @InstalledObjects + 16
		if @id_renamediagram is not null
			select @InstalledObjects = @InstalledObjects + 32
		if @id_alterdiagram  is not null
			select @InstalledObjects = @InstalledObjects + 64
		if @id_dropdiagram is not null
			select @InstalledObjects = @InstalledObjects + 128
		
		return @InstalledObjects 
	END$$
VOLATILE;

CREATE FUNCTION Hashing.CreateRowSha2_256HashKey() AS $$CREATE FUNCTION CreateRowSha2_256HashKey ()  
  
  
AS BEGIN
    RETURN  HASHBYTES('SHA2_256', @ConcatenatedRowColumns)

END;$$
VOLATILE;

CREATE FUNCTION Hashing.CreateVarbinaryRowSha2_256HashKey() AS $$CREATE FUNCTION CreateVarbinaryRowSha2_256HashKey ()  
  
  
as BEGIN
    RETURN  HASHBYTES('SHA2_256', @ConcatenatedRowColumns)

END;$$
VOLATILE;

CREATE FUNCTION Hashing.CreateVarbinarySha2_256HashKey() AS $$CREATE FUNCTION CreateVarbinarySha2_256HashKey ()  
  
  
as BEGIN
    return  hashbytes('SHA2_256', @ConcatenatedColumns)

END;$$
VOLATILE;

CREATE FUNCTION Hashing.CreateVarcharHashKeySha2_256() AS $$CREATE FUNCTION CreateVarcharHashKeySha2_256 ()  
  
  
as BEGIN
    return case when @DisplayNumberOfBytes between 5 and 31 then substring(convert(varchar(32), hashbytes('SHA2_256', @ConcatenatedColumns), 2),1,@DisplayNumberOfBytes)
	else convert(varchar(32), hashbytes('SHA2_256', @ConcatenatedColumns), 2)
	end;

end;$$
VOLATILE;

CREATE FUNCTION Sales.utvf_FindAllCustomerOrder() AS $$CREATE FUNCTION utvf_FindAllCustomerOrder ()  
  
  
as RETURN
(
    select o.OrderId
         , o.OrderDate
         , o.RequiredDate
         , o.ShipToDate
         , o.EmployeeId
         , o.ShipperId
         , sh.ShipperCompanyName
         , p.ProductName
         , su.SupplierCompanyName
         , su.SupplierCountry
         , o.Freight
         , (od.Quantity * od.UnitPrice) * (1.0 - od.DiscountPercentage) as LineAmount
         , (od.Quantity * od.UnitPrice) * (1.0 - od.DiscountPercentage) as LineAmountDiscounted
         , od.Quantity
         , od.UnitPrice
         , od.DiscountPercentage
    from Sales.[Orders]                 as o
        inner join Sales.OrderDetail   as od
            on od.OrderId = o.OrderId
        inner join Production.Product  as p
            on p.ProductId = od.ProductId
        inner join Production.Supplier as su
            on su.SupplierId = p.SupplierId
        inner join Sales.Shipper       as sh
            on sh.ShipperId = o.ShipperId
    where o.CustomerId = @CustomerId
);



$$
VOLATILE;

CREATE FUNCTION Utils.CreateHashKeyMD5() AS $$CREATE FUNCTION CreateHashKeyMD5 ()  
  
  
as BEGIN
    return convert(varchar(32), hashbytes('md5', @AccountOrMeterNumber), 2);

end;$$
VOLATILE;

CREATE TABLE Triggered.AuditTriggeredEmployeeHistory
( 
	TriggeredEmployeeHistoryId integer  NOT NULL ,
	CONSTRAINT CHK_IntegerIsGreaterThanZero_JG_360563888 CHECK  ( TriggeredEmployeeHistoryId > 0 ) ,
	AuditDate            timestamp  NULL   DEFAULT  sysdatetime(),
	TransactionNumber    integer  NULL ,
	IsDeleted            char(1)  NULL ,
	CONSTRAINT CHK_YesNoFlag_WL_183201200 CHECK  ( IsDeleted IN ('Y', 'N') ) ,
	DBAction             char(1)  NULL ,
	CONSTRAINT CHK_TriggerOptionUpdateDelete_JG_1635856640 CHECK  ( DBAction IN ('U', 'D', 'I') ) ,
	SysStartTime         timestamp  NULL ,
	CONSTRAINT CHK_SysStart_WL_1721604136 CHECK  ( [SysStartTime]  < '9999-12-31' ) ,
	SysEndTime           timestamp  NULL ,
	CONSTRAINT CHK_SysEnd_WL_438888481 CHECK  ( [SysEndTime] > '0001-01-01' ) ,
	TimestampRowChanged  timestamp  NULL   DEFAULT  sysdatetime(),
	CONSTRAINT CHK_TimeStamp_AN_1497629324 CHECK  ( TimestampRowChanged BETWEEN '1900-01-01' AND sysdatetime() ) ,
	Notes                varchar(300)  NULL ,
	UserAuthenticatedKey integer  NULL ,
	CONSTRAINT CHK_IntegerIsGreaterThanZero_JG_729193813 CHECK  ( UserAuthenticatedKey > 0 ) ,
	EmployeeId           integer  NULL ,
	CONSTRAINT CHK_IntegerIsGreaterThanZero_JG_1212872962 CHECK  ( EmployeeId > 0 ) ,
	FullName             varchar(52)  NULL ,
	Department           varchar(25)  NULL ,
	CONSTRAINT CHK_StartwithCapitalLetter_AG_810692677 CHECK  ( [Department] like '[A-Z]%' ) ,
	Salary               integer  NULL ,
	BirthDate            date  NULL   DEFAULT  '19000101',
	HireDate             date  NULL   DEFAULT  CONVERT (date, SYSDATETIME()),
	PhoneNumber          char(14)  NULL ,
	CONSTRAINT CHK_PhoneNumber_AN_1744420262 CHECK  ( PhoneNumber LIKE '%[0-9\-]' ) ,
	FullAddress          varchar(100)  NULL ,
	DateAdded            date  NULL   DEFAULT  sysdatetime(),
	DateOfLastUpdate     timestamp  NULL   DEFAULT  sysdatetime()
);

ALTER TABLE Triggered.AuditTriggeredEmployeeHistory
	ADD CONSTRAINT PK_TriggeredEmployeeHistoryId PRIMARY KEY (TriggeredEmployeeHistoryId);

CREATE UNIQUE INDEX ix_Employees ON Triggered.AuditTriggeredEmployeeHistory
( 
	EmployeeId,
	TriggeredEmployeeHistoryId
);

CREATE TABLE Production.Category
( 
	CategoryId           integer  NOT NULL ,
	CategoryName         char(1)  NULL ,
	Description          char(1)  NULL ,
	UserAuthorizationId  integer  NULL ,
	DateAdded            timestamp  NULL ,
	DateOfLastUpdate     timestamp  NULL 
);

ALTER TABLE Production.Category
	ADD CONSTRAINT PK_Categories PRIMARY KEY (CategoryId);

CREATE TABLE Sales.Customer
( 
	CustomerId           integer  NOT NULL ,
	CustomerCompanyName  char(1)  NULL ,
	CustomerContactName  char(1)  NULL ,
	CustomerContactTitle char(1)  NULL ,
	CustomerAddress      char(1)  NULL ,
	CustomerCity         char(1)  NULL ,
	CustomerRegion       char(1)  NULL ,
	CustomerPostalCode   char(1)  NULL ,
	CustomerCountry      char(1)  NULL ,
	CustomerPhoneNumber  char(1)  NULL ,
	CustomerFaxNumber    char(1)  NULL ,
	UserAuthorizationId  integer  NULL ,
	DateAdded            timestamp  NULL ,
	DateOfLastUpdate     timestamp  NULL 
);

ALTER TABLE Sales.Customer
	ADD CONSTRAINT PK_Customers PRIMARY KEY (CustomerId);

CREATE TABLE SystemVersioned.Employee
( 
	EmployeeId           integer  NOT NULL ,
	FullName             varchar(52)  NULL ,
	Department           varchar(25)  NULL ,
	Salary               integer  NULL ,
	Notes                varchar(300)  NULL ,
	SysStart             timestamp  NOT NULL ,
	SysEnd               timestamp  NOT NULL 
);

ALTER TABLE SystemVersioned.Employee
	ADD CONSTRAINT PK_EmployeeVersioned PRIMARY KEY (EmployeeId);

CREATE TABLE Triggered.Employee
( 
	EmployeeId           integer  NOT NULL ,
	CONSTRAINT CHK_IntegerIsGreaterThanZero_JG_175991849 CHECK  ( EmployeeId > 0 ) ,
	FullName             varchar(52)  NULL ,
	Department           varchar(25)  NULL ,
	CONSTRAINT CHK_StartwithCapitalLetter_AG_1552354697 CHECK  ( [Department] like '[A-Z]%' ) ,
	Salary               integer  NULL ,
	BirthDate            date  NULL   DEFAULT  '19000101',
	HireDate             date  NULL   DEFAULT  CONVERT (date, SYSDATETIME()),
	PhoneNumber          char(14)  NULL ,
	CONSTRAINT CHK_PhoneNumber_AN_1513665921 CHECK  ( PhoneNumber LIKE '%[0-9\-]' ) ,
	FullAddress          varchar(100)  NULL ,
	DateAdded            date  NULL   DEFAULT  sysdatetime(),
	DateOfLastUpdate     timestamp  NULL   DEFAULT  sysdatetime()
);

ALTER TABLE Triggered.Employee
	ADD CONSTRAINT PK_TriggeredEmployee PRIMARY KEY (EmployeeId);

CREATE INDEX ix_Employees ON Triggered.Employee
( 
	EmployeeId
);

CREATE TABLE HumanResources.Employee
( 
	EmployeeId           integer  NOT NULL ,
	CONSTRAINT CHK_IntegerIsGreaterThanZero_JG_175991849 CHECK  ( EmployeeId > 0 ) ,
	EmployeeLastName     varchar(25)  NULL ,
	CONSTRAINT CHK_StartwithCapitalLetter_AG_1413043674 CHECK  ( [EmployeeLastName] like '[A-Z]%' ) ,
	EmployeeFirstName    varchar(25)  NULL ,
	CONSTRAINT CHK_StartwithCapitalLetter_AG_1127309915 CHECK  ( [EmployeeFirstName] like '[A-Z]%' ) ,
	EmployeeTitle        varchar(60)  NULL ,
	CONSTRAINT CHK_StringIsNotEmpty_JG_509046343 CHECK  ( EmployeeTitle != '' ) ,
	EmployeeTitleOfCourtesy char(4)  NULL ,
	CONSTRAINT CHK_TitleOfCourtesy_AG_2125145303 CHECK  ( [EmployeeTitleOfCourtesy]='Mr.' OR [EmployeeTitleOfCourtesy]='Ms.' OR [EmployeeTitleOfCourtesy]='Mrs.' OR [EmployeeTitleOfCourtesy]='Dr.' OR [EmployeeTitleOfCourtesy]='Jr.' ) ,
	EmployeeBirthDate    date  NULL   DEFAULT  '19000101',
	EmployeeHireDate     date  NULL   DEFAULT  CONVERT (date, SYSDATETIME()),
	EmployeeDepartment   varchar(25)  NULL ,
	CONSTRAINT CHK_StartwithCapitalLetter_AG_775681119 CHECK  ( [EmployeeDepartment] like '[A-Z]%' ) ,
	EmployeeSalary       integer  NULL ,
	EmployeeAddress      varchar(35)  NULL ,
	CONSTRAINT CHK_ValidString_AN_958250698 CHECK  ( EmployeeAddress LIKE '%[A-Z0-9a-z\-]' ) ,
	EmployeeCity         varchar(20)  NULL ,
	EmployeeRegion       varchar(40)  NULL ,
	EmployeePostalCode   char(5)  NULL ,
	CONSTRAINT CHK_PostalCode_AN_283218698 CHECK  ( EmployeePostalCode LIKE '[0-9][0-9][0-9][0-9][0-9]' ) ,
	EmployeeCountry      char(3)  NULL   DEFAULT  'N/A',
	EmployeePhoneNumber  char(14)  NULL ,
	CONSTRAINT CHK_PhoneNumber_AN_1935860684 CHECK  ( EmployeePhoneNumber LIKE '%[0-9\-]' ) ,
	EmployeeManagerId    integer  NULL ,
	CONSTRAINT CHK_IntegerIsGreaterThanZero_JG_1181449331 CHECK  ( EmployeeManagerId > 0 ) ,
	UserAuthorizationId  integer  NULL ,
	CONSTRAINT CHK_IntegerIsGreaterThanZero_JG_1435665628 CHECK  ( UserAuthorizationId > 0 ) ,
	DateAdded            date  NULL   DEFAULT  sysdatetime(),
	DateOfLastUpdate     timestamp  NULL   DEFAULT  sysdatetime()
);

ALTER TABLE HumanResources.Employee
	ADD CONSTRAINT PK_Employees PRIMARY KEY (EmployeeId);

CREATE TABLE Service.Feedback
( 
	MemberID             integer  NOT NULL ,
	CONSTRAINT CHK_IntegerIsGreaterThanZero_JG_976391844 CHECK  ( MemberID > 0 ) ,
	Feedback             varchar(300)  NULL ,
	Rating               integer  NULL ,
	CONSTRAINT CHK_IntegerBetweenZeroAndOneHundred_JG_268904424 CHECK  ( Rating BETWEEN 0 AND 100 ) ,
	Received_On          timestamp  NULL   DEFAULT  sysdatetime(),
	CONSTRAINT CHK_TimeStamp_AN_179745409 CHECK  ( Received_On BETWEEN '1900-01-01' AND sysdatetime() ) 
);

ALTER TABLE Service.Feedback
	ADD CONSTRAINT PK__Feedback__0CF04B38E2275530 PRIMARY KEY (MemberID);

CREATE TABLE Data.Membership
( 
	MemberID             integer  NOT NULL ,
	CONSTRAINT CHK_IntegerIsGreaterThanZero_JG_1301638409 CHECK  ( MemberID > 0 ) ,
	FirstName            varchar(25)  NULL ,
	CONSTRAINT CHK_StartwithCapitalLetter_AG_1277830824 CHECK  ( [FirstName] like '[A-Z]%' ) ,
	LastName             varchar(25)  NULL ,
	CONSTRAINT CHK_StartwithCapitalLetter_AG_1370094161 CHECK  ( [LastName] like '[A-Z]%' ) ,
	Phone                char(14)  NULL   DEFAULT  '(000)-000-0000',
	CONSTRAINT CHK_PhoneNumber_AN_1496371262 CHECK  ( Phone LIKE '%[0-9\-]' ) ,
	Email                varchar(40)  NULL ,
	CONSTRAINT CK_Email_WL_1145602502 CHECK  ( Email LIKE '([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})' ) ,
	DiscountCode         integer  NULL ,
	BirthDay             date  NULL   DEFAULT  '19000101'
);

ALTER TABLE Data.Membership
	ADD CONSTRAINT PK__Membersh__0CF04B38AF0D3873 PRIMARY KEY (MemberID);

CREATE TABLE dbo.Nums
( 
	N                    integer  NOT NULL ,
	CONSTRAINT CHK_IntegerIsGreaterThanZero_JG_1615617432 CHECK  ( N > 0 ) 
);

ALTER TABLE dbo.Nums
	ADD CONSTRAINT PK_Nums PRIMARY KEY (N);

CREATE TABLE Sales.OrderDetail
( 
	UnitPrice            integer  NULL ,
	Quantity             char(1)  NULL ,
	DiscountPercentage   integer  NULL ,
	UserAuthorizationId  integer  NULL ,
	DateAdded            timestamp  NULL ,
	DateOfLastUpdate     timestamp  NULL ,
	OrderId              integer  NOT NULL ,
	ProductId            integer  NOT NULL 
);

ALTER TABLE Sales.OrderDetail
	ADD CONSTRAINT PK_OrderDetails PRIMARY KEY (OrderId,ProductId);

CREATE TABLE Sales.Orders
( 
	OrderId              integer  NOT NULL ,
	CustomerId           integer  NULL ,
	EmployeeId           integer  NULL ,
	CONSTRAINT CHK_IntegerIsGreaterThanZero_JG_1953408903 CHECK  ( EmployeeId > 0 ) ,
	ShipperId            integer  NULL ,
	OrderDate            timestamp  NULL ,
	RequiredDate         timestamp  NULL ,
	ShipToDate           timestamp  NULL ,
	Freight              integer  NULL ,
	ShipToName           char(1)  NULL ,
	ShipToAddress        char(1)  NULL ,
	ShipToCity           char(1)  NULL ,
	ShipToRegion         char(1)  NULL ,
	ShipToPostalCode     char(1)  NULL ,
	ShipToCountry        char(1)  NULL ,
	UserAuthorizationId  integer  NULL ,
	DateAdded            timestamp  NULL ,
	DateOfLastUpdate     timestamp  NULL 
);

ALTER TABLE Sales.Orders
	ADD CONSTRAINT PK_Orders PRIMARY KEY (OrderId);

CREATE TABLE Production.Product
( 
	ProductId            integer  NOT NULL ,
	ProductName          char(1)  NULL ,
	SupplierId           integer  NULL ,
	CategoryId           integer  NULL ,
	UnitPrice            integer  NULL ,
	Discontinued         varbinary(max)  NULL ,
	UserAuthorizationId  integer  NULL ,
	DateAdded            timestamp  NULL ,
	DateOfLastUpdate     timestamp  NULL 
);

ALTER TABLE Production.Product
	ADD CONSTRAINT PK_Products PRIMARY KEY (ProductId);

CREATE TABLE Sales.Shipper
( 
	ShipperId            integer  NOT NULL ,
	ShipperCompanyName   char(1)  NULL ,
	PhoneNumber          char(1)  NULL ,
	UserAuthorizationId  integer  NULL ,
	DateAdded            timestamp  NULL ,
	DateOfLastUpdate     timestamp  NULL 
);

ALTER TABLE Sales.Shipper
	ADD CONSTRAINT PK_Shippers PRIMARY KEY (ShipperId);

CREATE TABLE Production.Supplier
( 
	SupplierId           integer  NOT NULL ,
	CONSTRAINT CHK_IntegerIsGreaterThanZero_JG_444418579 CHECK  ( SupplierId > 0 ) ,
	SupplierCompanyName  varchar(60)  NULL ,
	CONSTRAINT CHK_StartwithCapitalLetter_AG_1236652122 CHECK  ( [SupplierCompanyName] like '[A-Z]%' ) ,
	SupplierContactName  varchar(52)  NULL ,
	CONSTRAINT CHK_FullName_AG_616556138 CHECK  ( [SupplierContactName] like '[A-Z]% [A-Z]%' ) ,
	SupplierContactTitle varchar(60)  NULL ,
	CONSTRAINT CHK_StringIsNotEmpty_JG_290565327 CHECK  ( SupplierContactTitle != '' ) ,
	SupplierAddress      varchar(35)  NULL ,
	CONSTRAINT CHK_ValidString_AN_689823968 CHECK  ( SupplierAddress LIKE '%[A-Z0-9a-z\-]' ) ,
	SupplierCity         varchar(20)  NULL ,
	SupplierRegion       varchar(40)  NULL ,
	SupplierPostalCode   char(5)  NULL ,
	CONSTRAINT CHK_PostalCode_AN_855081738 CHECK  ( SupplierPostalCode LIKE '[0-9][0-9][0-9][0-9][0-9]' ) ,
	SupplierCountry      char(3)  NULL   DEFAULT  'N/A',
	CONSTRAINT CHK_CountryCodes_AG_519964550 CHECK  ( [SupplierCountry] like '[A-Z][A-Z][A-Z]' ) ,
	SupplierPhoneNumber  char(14)  NULL   DEFAULT  '(000)-000-0000',
	CONSTRAINT CHK_PhoneNumber_AN_2090679882 CHECK  ( SupplierPhoneNumber LIKE '%[0-9\-]' ) ,
	SupplierFaxNumber    char(14)  NULL   DEFAULT  '(000)-000-0000',
	UserAuthorizationId  integer  NULL ,
	CONSTRAINT CHK_IntegerIsGreaterThanZero_JG_1434548708 CHECK  ( UserAuthorizationId > 0 ) ,
	DateAdded            timestamp  NULL   DEFAULT  sysdatetime(),
	CONSTRAINT CHK_TimeStamp_AN_3410218 CHECK  ( DateAdded BETWEEN '1900-01-01' AND sysdatetime() ) ,
	DateOfLastUpdate     timestamp  NULL   DEFAULT  sysdatetime(),
	CONSTRAINT CHK_TimeStamp_AN_2029929473 CHECK  ( DateOfLastUpdate BETWEEN '1900-01-01' AND sysdatetime() ) 
);

ALTER TABLE Production.Supplier
	ADD CONSTRAINT PK_Suppliers PRIMARY KEY (SupplierId);

CREATE TABLE DbSecurity.UserAuthorization
( 
	UserAuthorizationId  integer  NOT NULL ,
	ClassTime            char(1)  NULL ,
	IndividualProject    char(1)  NULL ,
	GroupMemberLastName  char(1)  NULL ,
	GroupMemberFirstName char(1)  NULL ,
	GroupName            char(1)  NULL ,
	DateAdded            timestamp  NULL ,
	DateOfLastUpdate     timestamp  NULL 
);

ALTER TABLE DbSecurity.UserAuthorization
	ADD CONSTRAINT XPKUserAuthorization PRIMARY KEY (UserAuthorizationId);

CREATE TABLE Audit.VersionedEmployeeHistory
( 
	EmployeeId           integer  NOT NULL ,
	FullName             varchar(52)  NULL ,
	Department           varchar(25)  NULL ,
	Salary               integer  NULL ,
	Notes                varchar(300)  NULL ,
	SysStart             timestamp  NOT NULL ,
	SysEnd               timestamp  NOT NULL 
);

CREATE VIEW JsonOutput.uvw_HumanResourcesEmployee ( EmployeeObjectId,EmployeeLastName,EmployeeFirstName,EmployeeTitle,EmployeeTitleOfCourtesy,EmployeeBirthDate,HireDate,EmployeeAddress,EmployeeCity,EmployeeRegion,EmployeePostalCode,EmployeeCountry,EmployeePhoneNumber,EmployeeManagerId )
 AS 
	SELECT E.EmployeeId,E.EmployeeLastName,E.EmployeeFirstName,E.EmployeeTitle,E.EmployeeTitleOfCourtesy,E.EmployeeBirthDate,E.EmployeeHireDate,E.EmployeeAddress,E.EmployeeCity,E.EmployeeRegion,E.EmployeePostalCode,E.EmployeeCountry,E.EmployeePhoneNumber,E.EmployeeManagerId
		FROM HumanResources.Employee E;

CREATE VIEW JsonOutput.uvw_ProductionCategory ( CategoryObjectId,CategoryName,Description )
 AS 
	SELECT .CategoryId,.CategoryName,.Description
		FROM Production.Category ;

CREATE VIEW JsonOutput.uvw_ProductionProduct ( ProductObjectId,ProductName,SupplierId,CategoryId,UnitPrice,Discontinued,CategoryObjectId,CategoryName,Description,SupplierCompanyName,SupplierContactName,SupplierPhoneNumber,SupplierFaxNumber )
 AS 
	SELECT P.ProductId,P.ProductName,S.SupplierId,P.CategoryId,P.UnitPrice,P.Discontinued,C.CategoryId,C.CategoryName,C.Description,S.SupplierCompanyName,S.SupplierContactName,S.SupplierPhoneNumber,S.SupplierFaxNumber
		FROM Production.Supplier S,Production.Category C,Production.Product P;

CREATE VIEW JsonOutput.uvw_ProductionSupplier ( SupplierObjectId,SupplierCompanyName,SupplierContactName,SupplierContactTitle,SupplierAddress,SupplierCity,SupplierRegion,SupplierPostalCode,SupplierCountry,SupplierPhoneNumber,SupplierFaxNumber )
 AS 
	SELECT S.SupplierId,S.SupplierCompanyName,S.SupplierContactName,S.SupplierContactTitle,S.SupplierAddress,S.SupplierCity,S.SupplierRegion,S.SupplierPostalCode,S.SupplierCountry,S.SupplierPhoneNumber,S.SupplierFaxNumber
		FROM Production.Supplier S;

CREATE VIEW JsonOutput.uvw_SalesCustomer ( CustomerObjectId,CustomerCompanyName,CustomerContactName,CustomerContactTitle,CustomerAddress,CustomerCity,CustomerRegion,CustomerPostalCode,CustomerCountry,CustomerPhoneNumber,CustomerFaxNumber )
 AS 
	SELECT C.CustomerId,C.CustomerCompanyName,C.CustomerContactName,C.CustomerContactTitle,C.CustomerAddress,C.CustomerCity,C.CustomerRegion,C.CustomerPostalCode,C.CustomerCountry,C.CustomerPhoneNumber,C.CustomerFaxNumber
		FROM Sales.Customer C;

CREATE VIEW JsonOutput.uvw_SalesShipper ( ShipperObjectId,ShipperCompanyName,PhoneNumber )
 AS 
	SELECT S.ShipperId,S.ShipperCompanyName,S.PhoneNumber
		FROM Sales.Shipper S;

CREATE VIEW JsonOutput.uvw_Order ( OrderId,CustomerId,EmployeeId,ShipperId,OrderDate,RequiredDate,ShipToDate,Freight,ShipToName,ShipToAddress,ShipToCity,ShipToRegion,ShipToPostalCode,ShipToCountry )
 AS 
	SELECT O.OrderId,O.CustomerId,O.EmployeeId,O.ShipperId,O.OrderDate,O.RequiredDate,O.ShipToDate,O.Freight,O.ShipToName,O.ShipToAddress,O.ShipToCity,O.ShipToRegion,O.ShipToPostalCode,O.ShipToCountry
		FROM Sales.Orders O;

CREATE OR REPLACE VIEW Utils.uvw_FindColumnDefinitionPlusDefaultAndCheckConstraint AS 
CREATE VIEW [Utils].[uvw_FindColumnDefinitionPlusDefaultAndCheckConstraint] AS  SELECT  concat( tbl.TABLE_SCHEMA , '.' , tbl.TABLE_NAME )  AS FullyQualifiedTableName, tbl.TABLE_SCHEMA AS SchemaName, tbl.TABLE_NAME AS TableName, col.COLUMN_NAME AS ColumnName, col.ORDINAL_POSITION AS OrdinalPosition,  concat( col.DOMAIN_SCHEMA , '.' , col.DOMAIN_NAME )  AS FullyQualifiedDomainName, col.DOMAIN_NAME AS DomainName, CASE WHEN col.DATA_TYPE = 'varchar' THEN  concat( 'varchar(' , CHARACTER_MAXIMUM_LENGTH , ')' )  WHEN col.DATA_TYPE = 'char' THEN  concat( 'char(' , CHARACTER_MAXIMUM_LENGTH , ')' )  WHEN col.DATA_TYPE = 'nvarchar' THEN  concat( 'nvarchar(' , CHARACTER_MAXIMUM_LENGTH , ')' )  WHEN col.DATA_TYPE = 'nchar' THEN  concat( 'nchar(' , CHARACTER_MAXIMUM_LENGTH , ')' )  WHEN col.DATA_TYPE = 'numeric' THEN  concat( 'numeric(' , NUMERIC_PRECISION_RADIX , ', ' , NUMERIC_SCALE , ')' )  WHEN col.DATA_TYPE = 'decimal' THEN  concat( 'decimal(' , NUMERIC_PRECISION_RADIX , ', ' , NUMERIC_SCALE , ')' )  ELSE col.DATA_TYPE END AS DataType, col.IS_NULLABLE AS IsNullable, dcn.DefaultName, col.COLUMN_DEFAULT AS DefaultNameDefinition, cc.CONSTRAINT_NAME AS CheckConstraintRuleName, cc.CHECK_CLAUSE AS CheckConstraintRuleNameDefinition FROM (  SELECT TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, TABLE_TYPE FROM INFORMATION_SCHEMA.TABLES WHERE ( TABLE_TYPE = 'BASE TABLE' ) ) AS tbl    INNER JOIN   (  SELECT TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, ORDINAL_POSITION, COLUMN_DEFAULT, IS_NULLABLE, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH, CHARACTER_OCTET_LENGTH, NUMERIC_PRECISION, NUMERIC_PRECISION_RADIX, NUMERIC_SCALE, DATETIME_PRECISION, CHARACTER_SET_CATALOG, CHARACTER_SET_SCHEMA, CHARACTER_SET_NAME, COLLATION_CATALOG, COLLATION_SCHEMA, COLLATION_NAME, DOMAIN_CATALOG, DOMAIN_SCHEMA, DOMAIN_NAME FROM INFORMATION_SCHEMA.COLUMNS ) AS col  ON col.TABLE_CATALOG = tbl.TABLE_CATALOG AND col.TABLE_SCHEMA = tbl.TABLE_SCHEMA AND col.TABLE_NAME = tbl.TABLE_NAME   LEFT OUTER JOIN   (  SELECT t.name AS TableName,  schema_name( s.schema_id )  AS SchemaName, ac.name AS ColumnName, d.name AS DefaultName FROM sys.all_columns AS ac   INNER JOIN   sys.tables AS t ON ac.object_id = t.object_id   INNER JOIN   sys.schemas AS s ON t.schema_id = s.schema_id   INNER JOIN   sys.default_constraints AS d ON ac.default_object_id = d.object_id ) AS dcn  ON dcn.SchemaName = tbl.TABLE_SCHEMA AND dcn.TableName = tbl.TABLE_NAME AND dcn.ColumnName = col.COLUMN_NAME   LEFT OUTER JOIN   (  SELECT cu.TABLE_CATALOG, cu.TABLE_SCHEMA, cu.TABLE_NAME, cu.COLUMN_NAME, c.CONSTRAINT_CATALOG, c.CONSTRAINT_SCHEMA, c.CONSTRAINT_NAME, c.CHECK_CLAUSE FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE AS cu   INNER JOIN   INFORMATION_SCHEMA.CHECK_CONSTRAINTS AS c ON c.CONSTRAINT_NAME = cu.CONSTRAINT_NAME ) AS cc  ON cc.TABLE_SCHEMA = tbl.TABLE_SCHEMA AND cc.TABLE_NAME = tbl.TABLE_NAME AND cc.COLUMN_NAME = col.COLUMN_NAME;

CREATE VIEW Utils.uw_FindAllDatabaseColumnsOnTheServer ( FullyQualifiedTableName,SchemaName,ColumnName,OrdinalPosition,FullyQualifiedDomainName,DataType,IsNullable,DefaultName,DefaultNameDefinition,CheckConstraintRuleName,CheckConstraintRuleNameDefinition,Server_Name,Target_Database_Version,Instance_Name,Database_Name,Host_Name )
 AS 
	SELECT vw.FullyQualifiedTableName,vw.SchemaName,vw.ColumnName,vw.OrdinalPosition,vw.FullyQualifiedDomainName,vw.DataType,vw.IsNullable,vw.DefaultName,vw.DefaultNameDefinition,vw.CheckConstraintRuleName,vw.CheckConstraintRuleNameDefinition,@@servername,@@version,@@servicename,db_name(),host_name()
		FROM Utils.uvw_FindColumnDefinitionPlusDefaultAndCheckConstraint vw
		WHERE vw.SchemaName IN ('Sales' , 'Production' , 'HumanResources');


ALTER TABLE Production.Category
	ADD CONSTRAINT FK_Category_UserAuthorization FOREIGN KEY (UserAuthorizationId) REFERENCES DbSecurity.UserAuthorization(UserAuthorizationId)
		ON UPDATE SET NULL
		ON DELETE SET NULL;


ALTER TABLE Sales.Customer
	ADD CONSTRAINT FK_Customer_UserAuthorization FOREIGN KEY (UserAuthorizationId) REFERENCES DbSecurity.UserAuthorization(UserAuthorizationId)
		ON UPDATE SET NULL
		ON DELETE SET NULL;


ALTER TABLE HumanResources.Employee
	ADD CONSTRAINT FK_Employees_Employee FOREIGN KEY (EmployeeManagerId) REFERENCES HumanResources.Employee(EmployeeId)
		ON UPDATE NO ACTION
		ON DELETE NO ACTION;

ALTER TABLE HumanResources.Employee
	ADD CONSTRAINT FK_Employee_UserAuthorization FOREIGN KEY (UserAuthorizationId) REFERENCES DbSecurity.UserAuthorization(UserAuthorizationId)
		ON UPDATE SET NULL
		ON DELETE SET NULL;


ALTER TABLE Sales.OrderDetail
	ADD CONSTRAINT FK_OrderDetail_Order FOREIGN KEY (OrderId) REFERENCES Sales.Orders(OrderId)
		ON UPDATE RESTRICT
		ON DELETE RESTRICT;

ALTER TABLE Sales.OrderDetail
	ADD CONSTRAINT FK_OrderDetail_Product FOREIGN KEY (ProductId) REFERENCES Production.Product(ProductId)
		ON UPDATE RESTRICT
		ON DELETE RESTRICT;

ALTER TABLE Sales.OrderDetail
	ADD CONSTRAINT FK_OrderDetail_UserAuthorization FOREIGN KEY (UserAuthorizationId) REFERENCES DbSecurity.UserAuthorization(UserAuthorizationId)
		ON UPDATE SET NULL
		ON DELETE SET NULL;


ALTER TABLE Sales.Orders
	ADD CONSTRAINT FK_Order_Customer FOREIGN KEY (CustomerId) REFERENCES Sales.Customer(CustomerId)
		ON UPDATE NO ACTION
		ON DELETE NO ACTION;

ALTER TABLE Sales.Orders
	ADD CONSTRAINT FK_Order_Employee FOREIGN KEY (EmployeeId) REFERENCES HumanResources.Employee(EmployeeId)
		ON UPDATE NO ACTION
		ON DELETE NO ACTION;

ALTER TABLE Sales.Orders
	ADD CONSTRAINT FK_Order_Shipper FOREIGN KEY (ShipperId) REFERENCES Sales.Shipper(ShipperId)
		ON UPDATE NO ACTION
		ON DELETE NO ACTION;

ALTER TABLE Sales.Orders
	ADD CONSTRAINT FK_Order_UserAuthorization FOREIGN KEY (UserAuthorizationId) REFERENCES DbSecurity.UserAuthorization(UserAuthorizationId)
		ON UPDATE SET NULL
		ON DELETE SET NULL;


ALTER TABLE Production.Product
	ADD CONSTRAINT FK_Product_Category FOREIGN KEY (CategoryId) REFERENCES Production.Category(CategoryId)
		ON UPDATE NO ACTION
		ON DELETE NO ACTION;

ALTER TABLE Production.Product
	ADD CONSTRAINT FK_Product_Supplier FOREIGN KEY (SupplierId) REFERENCES Production.Supplier(SupplierId)
		ON UPDATE NO ACTION
		ON DELETE NO ACTION;

ALTER TABLE Production.Product
	ADD CONSTRAINT FK_Product_UserAuthorization FOREIGN KEY (UserAuthorizationId) REFERENCES DbSecurity.UserAuthorization(UserAuthorizationId)
		ON UPDATE SET NULL
		ON DELETE SET NULL;


ALTER TABLE Sales.Shipper
	ADD CONSTRAINT FK_Shipper_UserAuthorization FOREIGN KEY (UserAuthorizationId) REFERENCES DbSecurity.UserAuthorization(UserAuthorizationId)
		ON UPDATE SET NULL
		ON DELETE SET NULL;


ALTER TABLE Production.Supplier
	ADD CONSTRAINT FK_Supplier_UserAuthorization FOREIGN KEY (UserAuthorizationId) REFERENCES DbSecurity.UserAuthorization(UserAuthorizationId)
		ON UPDATE SET NULL
		ON DELETE SET NULL;


CREATE OR REPLACE FUNCTION before_insert_tD_Category AFTER DELETE ON public."Category" for each row
EXECUTE PROCEDURE aft_delete_tD_Category();

CREATE  TRIGGER tI_Category BEFORE INSERT ON Category for each row
-- erwin Builtin Trigger
-- INSERT trigger on Category 
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* UserAuthorization authorizes Category on child insert set null */
    /* ERWIN_RELATION CHECKSUM="000122ac", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Category"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Category_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
    UPDATE Category
      SET
        /* %SetFK(Category,NULL) */
        Category.UserAuthorizationId = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM UserAuthorization
            WHERE
              /* %JoinFKPK( %New,UserAuthorization," = "," AND")() 
RETURNS trigger AS
$$

RAISE EXCEPTION 'Cannot DELETE Category because Product exists.';
    END IF;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE  TRIGGER  tD_Category AFTER DELETE ON public."Category" for each row
EXECUTE PROCEDURE aft_delete_tD_Categor;

CREATE  TRIGGER tI_Category BEFORE INSERT ON Category for each row
-- erwin Builtin Trigger
-- INSERT trigger on Category 
DECLARE NUMROWS INTEGER;
BEGIN
     * erwin Builtin Trigger * 
     * UserAuthorization authorizes Category on child insert set null * 
     * ERWIN_RELATION CHECKSUM="000122ac", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Category"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Category_UserAuthorization", FK_COLUMNS="UserAuthorizationId" * 
    UPDATE Category
      SET
         * %SetFK(Category,NULL) * 
        Category.UserAuthorizationId = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM UserAuthorization
            WHERE
               * %JoinFKPK( %New,UserAuthorization," = "," AND") * 
               new.UserAuthorizationId = UserAuthorization.UserAuthorizationId
        ) 
         * %JoinPKPK(Category, %New," = "," AND") * 
        Category.CategoryId =  new.CategoryId;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION public."aft_delete_tD_Category() 
RETURNS trigger AS
$$
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* Category is of a Product on parent delete no action */
    /* ERWIN_RELATION CHECKSUM="0000e5ff", PARENT_OWNER="", PARENT_TABLE="Category"
    CHILD_OWNER="", CHILD_TABLE="Product"
    P2C_VERB_PHRASE="is of a", C2P_VERB_PHRASE="belongs to a", 
    FK_CONSTRAINT="FK_Product_Category", FK_COLUMNS="CategoryId" */
    SELECT count(*) INTO NUMROWS
      FROM Product
      WHERE
        /*  %JoinFKPK(Product, %Old," = "," AND") */
        Product.CategoryId =  old.CategoryId;
    IF (NUMROWS > 0)
    THEN
RAISE EXCEPTION 'Cannot DELETE Category because Product exists.';
    END IF;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE  TRIGGER  tD_Category AFTER DELETE ON public."Category"" for each row
EXECUTE PROCEDURE before_insert_tD_Category AFTER DELETE ON public."Category" for each row
EXECUTE PROCEDURE aft_delete_tD_Category();

CREATE  TRIGGER tI_Category BEFORE INSERT ON Category for each row
-- erwin Builtin Trigger
-- INSERT trigger on Category 
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* UserAuthorization authorizes Category on child insert set null */
    /* ERWIN_RELATION CHECKSUM="000122ac", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Category"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Category_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
    UPDATE Category
      SET
        /* %SetFK(Category,NULL) */
        Category.UserAuthorizationId = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM UserAuthorization
            WHERE
              /* %JoinFKPK( %New,UserAuthorization," = "," AND")();



CREATE OR REPLACE FUNCTION before_insert_tD_Customer AFTER DELETE ON public."Customer" for each row
EXECUTE PROCEDURE aft_delete_tD_Customer();

CREATE  TRIGGER tI_Customer BEFORE INSERT ON Customer for each row
-- erwin Builtin Trigger
-- INSERT trigger on Customer 
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* UserAuthorization authorizes Customer on child insert set null */
    /* ERWIN_RELATION CHECKSUM="00013219", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Customer"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Customer_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
    UPDATE Customer
      SET
        /* %SetFK(Customer,NULL) */
        Customer.UserAuthorizationId = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM UserAuthorization
            WHERE
              /* %JoinFKPK( %New,UserAuthorization," = ","() 
RETURNS trigger AS
$$

RAISE EXCEPTION 'Cannot DELETE Customer because Orders exists.';
    END IF;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE  TRIGGER  tD_Customer AFTER DELETE ON public."Customer" for each row
EXECUTE PROCEDURE aft_delete_tD_Custome;

CREATE  TRIGGER tI_Customer BEFORE INSERT ON Customer for each row
-- erwin Builtin Trigger
-- INSERT trigger on Customer 
DECLARE NUMROWS INTEGER;
BEGIN
     * erwin Builtin Trigger * 
     * UserAuthorization authorizes Customer on child insert set null * 
     * ERWIN_RELATION CHECKSUM="00013219", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Customer"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Customer_UserAuthorization", FK_COLUMNS="UserAuthorizationId" * 
    UPDATE Customer
      SET
         * %SetFK(Customer,NULL) * 
        Customer.UserAuthorizationId = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM UserAuthorization
            WHERE
               * %JoinFKPK( %New,UserAuthorization," = "," AND") * 
               new.UserAuthorizationId = UserAuthorization.UserAuthorizationId
        ) 
         * %JoinPKPK(Customer, %New," = "," AND") * 
        Customer.CustomerId =  new.CustomerId;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION public."aft_delete_tD_Customer() 
RETURNS trigger AS
$$
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* Customer makes an Orders on parent delete no action */
    /* ERWIN_RELATION CHECKSUM="0000dc9e", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Orders"
    P2C_VERB_PHRASE="makes an", C2P_VERB_PHRASE="is made by a", 
    FK_CONSTRAINT="FK_Order_Customer", FK_COLUMNS="CustomerId" */
    SELECT count(*) INTO NUMROWS
      FROM Orders
      WHERE
        /*  %JoinFKPK(Orders, %Old," = "," AND") */
        Orders.CustomerId =  old.CustomerId;
    IF (NUMROWS > 0)
    THEN
RAISE EXCEPTION 'Cannot DELETE Customer because Orders exists.';
    END IF;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE  TRIGGER  tD_Customer AFTER DELETE ON public."Customer"" for each row
EXECUTE PROCEDURE before_insert_tD_Customer AFTER DELETE ON public."Customer" for each row
EXECUTE PROCEDURE aft_delete_tD_Customer();

CREATE  TRIGGER tI_Customer BEFORE INSERT ON Customer for each row
-- erwin Builtin Trigger
-- INSERT trigger on Customer 
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* UserAuthorization authorizes Customer on child insert set null */
    /* ERWIN_RELATION CHECKSUM="00013219", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Customer"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Customer_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
    UPDATE Customer
      SET
        /* %SetFK(Customer,NULL) */
        Customer.UserAuthorizationId = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM UserAuthorization
            WHERE
              /* %JoinFKPK( %New,UserAuthorization," = ","();



CREATE OR REPLACE FUNCTION aft_delete_tD_Employee() 
RETURNS trigger AS
$$
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* Employee manages a Employee on parent delete no action */
    /* ERWIN_RELATION CHECKSUM="0001f46d", PARENT_OWNER="", PARENT_TABLE="Employee"
    CHILD_OWNER="", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="manages a", C2P_VERB_PHRASE="is managed by a", 
    FK_CONSTRAINT="FK_Employees_Employee", FK_COLUMNS="EmployeeManagerId" */
    SELECT count(*) INTO NUMROWS
      FROM Employee
      WHERE
        /*  %JoinFKPK(Employee, %Old," = "," AND") */
        Employee.EmployeeManagerId =  old.EmployeeId;
    IF (NUMROWS > 0)
    THEN
RAISE EXCEPTION 'Cannot DELETE Employee because Employee exists.';
    END IF;

     * erwin Builtin Trigger * 
     * Employee processes an Orders on parent delete no action * 
     * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Employee"
    CHILD_OWNER="", CHILD_TABLE="Orders"
    P2C_VERB_PHRASE="processes an", C2P_VERB_PHRASE="is processed by an", 
    FK_CONSTRAINT="FK_Order_Employee", FK_COLUMNS="EmployeeId" * 
    SELECT count(*) INTO NUMROWS
      FROM Orders
      WHERE
         *  %JoinFKPK(Orders, %Old," = "," AND") * 
        Orders.EmployeeId =  old.EmployeeId;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot DELETE Employee because Orders exists.'
      );
    END IF;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE  TRIGGER  tD_Employee AFTER DELETE ON public."Employee" for each row
EXECUTE PROCEDURE aft_delete_tD_Employee();


CREATE OR REPLACE FUNCTION aft_update_U_Employee() 
RETURNS trigger AS
$$
DECLARE NUMROWS INTEGER;
BEGIN
  /* erwin Builtin Trigger */
  /* Employee manages a Employee on parent update no action */
  /* ERWIN_RELATION CHECKSUM="0003cdd0", PARENT_OWNER="", PARENT_TABLE="Employee"
    CHILD_OWNER="", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="manages a", C2P_VERB_PHRASE="is managed by a", 
    FK_CONSTRAINT="FK_Employees_Employee", FK_COLUMNS="EmployeeManagerId" */
  IF
    /* %JoinPKPK( %Old, %New," <> "," OR ") */
     old.EmployeeId <>  new.EmployeeId
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Employee
      WHERE
        /*  %JoinFKPK(Employee, %Old," = "," AND") */
        Employee.EmployeeManagerId =  old.EmployeeId;
    IF (NUMROWS > 0)
    THEN
RAISE EXCEPTION 'Cannot update Employee because Employee exists.';
    END IF;
  END IF;

   * erwin Builtin Trigger * 
   * Employee processes an Orders on parent update no action * 
   * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Employee"
    CHILD_OWNER="", CHILD_TABLE="Orders"
    P2C_VERB_PHRASE="processes an", C2P_VERB_PHRASE="is processed by an", 
    FK_CONSTRAINT="FK_Order_Employee", FK_COLUMNS="EmployeeId" * 
  IF
     * %JoinPKPK( %Old, %New," <> "," OR ") * 
     old.EmployeeId <>  new.EmployeeId
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Orders
      WHERE
         *  %JoinFKPK(Orders, %Old," = "," AND") * 
        Orders.EmployeeId =  old.EmployeeId;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Employee because Orders exists.'
      );
    END IF;
  END IF;

     * erwin Builtin Trigger * 
     * UserAuthorization authorizes Employee on child update set null * 
     * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Employee_UserAuthorization", FK_COLUMNS="UserAuthorizationId" * 
     * Not Implemented due to an ORA-04091 Mutating Table Issue * 
    NULL;

     * erwin Builtin Trigger * 
     * Employee manages a Employee on child update set null * 
     * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Employee"
    CHILD_OWNER="", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="manages a", C2P_VERB_PHRASE="is managed by a", 
    FK_CONSTRAINT="FK_Employees_Employee", FK_COLUMNS="EmployeeManagerId" * 
     * Not Implemented due to an ORA-04091 Mutating Table Issue * 
    NULL;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE  TRIGGER tU_Employee AFTER UPDATE ON public."Employee" for each row
EXECUTE PROCEDURE aft_update_U_Employee();



CREATE OR REPLACE FUNCTION before_insert_I_OrderDetail () 
RETURNS trigger AS
$$
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* UserAuthorization authorizes OrderDetail on child insert set null */
    /* ERWIN_RELATION CHECKSUM="00036420", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="OrderDetail"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_OrderDetail_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
    UPDATE OrderDetail
      SET
        /* %SetFK(OrderDetail,NULL) */
        OrderDetail.UserAuthorizationId = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM UserAuthorization
            WHERE
              /* %JoinFKPK( %New,UserAuthorization," = "," AND") */
               new.UserAuthorizationId = UserAuthorization.UserAuthorizationId
        ) 
        /* %JoinPKPK(OrderDetail, %New," = "," AND") */
        OrderDetail.OrderId =  new.OrderId AND
        OrderDetail.ProductId =  new.ProductId;

    /* erwin Builtin Trigger */
    /* Product has an OrderDetail on child insert restrict */
    /* ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Product"
    CHILD_OWNER="", CHILD_TABLE="OrderDetail"
    P2C_VERB_PHRASE="has an", C2P_VERB_PHRASE="belongs to a", 
    FK_CONSTRAINT="FK_OrderDetail_Product", FK_COLUMNS="ProductId" */
    SELECT count(*) INTO NUMROWS
      FROM Product
      WHERE
        /* %JoinFKPK( %New,Product," = "," AND") */
         new.ProductId = Product.ProductId;
    IF (
      /* %NotnullFK( %New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
RAISE EXCEPTION 'Cannot insert OrderDetail because Product does not exist.';
    END IF;

     * erwin Builtin Trigger * 
     * Orders has an OrderDetail on child insert restrict * 
     * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Orders"
    CHILD_OWNER="", CHILD_TABLE="OrderDetail"
    P2C_VERB_PHRASE="has an", C2P_VERB_PHRASE="belongs to an", 
    FK_CONSTRAINT="FK_OrderDetail_Order", FK_COLUMNS="OrderId" * 
    SELECT count(*) INTO NUMROWS
      FROM Orders
      WHERE
         * %JoinFKPK( %New,Orders," = "," AND") * 
         new.OrderId = Orders.OrderId;
    IF (
       * %NotnullFK( %New," IS NOT NULL AND") * 
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert OrderDetail because Orders does not exist.'
      );
    END IF;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE  TRIGGER tI_OrderDetail BEFORE INSERT ON public."OrderDetail" for each row
EXECUTE PROCEDURE before_insert_I_OrderDetail ();



CREATE OR REPLACE FUNCTION before_insert_tD_Orders AFTER DELETE ON public."Orders" for each row
EXECUTE PROCEDURE aft_delete_tD_Orders();

CREATE  TRIGGER tI_Orders BEFORE INSERT ON Orders for each row
-- erwin Builtin Trigger
-- INSERT trigger on Orders 
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* UserAuthorization authorizes Orders on child insert set null */
    /* ERWIN_RELATION CHECKSUM="00045519", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Orders"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Order_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
    UPDATE Orders
      SET
        /* %SetFK(Orders,NULL) */
        Orders.UserAuthorizationId = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM UserAuthorization
            WHERE
              /* %JoinFKPK( %New,UserAuthorization," = "," AND") */
               new.() 
RETURNS trigger AS
$$
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* Orders has an OrderDetail on parent delete restrict */
    /* ERWIN_RELATION CHECKSUM="0000e8af", PARENT_OWNER="", PARENT_TABLE="Orders"
    CHILD_OWNER="", CHILD_TABLE="OrderDetail"
    P2C_VERB_PHRASE="has an", C2P_VERB_PHRASE="belongs to an", 
    FK_CONSTRAINT="FK_OrderDetail_Order", FK_COLUMNS="OrderId" */
    SELECT count(*) INTO NUMROWS
      FROM OrderDetail
      WHERE
        /*  %JoinFKPK(OrderDetail, %Old," = "," AND") */
        OrderDetail.OrderId =  old.OrderId;
    IF (NUMROWS > 0)
    THEN
RAISE EXCEPTION 'Cannot delete Orders because OrderDetail exists.';
    END IF;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE  TRIGGER  tD_Orders AFTER DELETE ON public."Orders" for each row
EXECUTE PROCEDURE aft_delete_tD_Orders();

CREATE  TRIGGER tI_Orders BEFORE INSERT ON Orders for each row
-- erwin Builtin Trigger
-- INSERT trigger on Orders 
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* UserAuthorization authorizes Orders on child insert set null */
    /* ERWIN_RELATION CHECKSUM="00045519", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Orders"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Order_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
    UPDATE Orders
      SET
        /* %SetFK(Orders,NULL) */
        Orders.UserAuthorizationId = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM UserAuthorization
            WHERE
              /* %JoinFKPK( %New,UserAuthorization," = "," AND") */
               new.UserAuthorizationId = UserAuthorization.UserAuthorizationId
        ) 
        /* %JoinPKPK(Orders, %New," = "," AND") */
        Orders.OrderId =  new.OrderId;

    /* erwin Builtin Trigger */
    /* Shipper ships an Orders on child insert restrict */
    /* ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Shipper"
    CHILD_OWNER="", CHILD_TABLE="Orders"
    P2C_VERB_PHRASE="ships an", C2P_VERB_PHRASE="is shipped by a", 
    FK_CONSTRAINT="FK_Order_Shipper", FK_COLUMNS="ShipperId" */
    SELECT count(*) INTO NUMROWS
      FROM Shipper
      WHERE
        /* %JoinFKPK( %New,Shipper," = "," AND") */
         new.ShipperId = Shipper.ShipperId;
    IF (
      /* %NotnullFK( %New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
RAISE EXCEPTION 'Cannot insert Orders because Shipper does not exist.';

CREATE  TRIGGER tI_Orders BEFORE INSERT ON Orders for each row
-- erwin Builtin Trigger
-- INSERT trigger on Orders 
DECLARE NUMROWS INTEGER;
BEGIN
     * erwin Builtin Trigger * 
     * UserAuthorization authorizes Orders on child insert set null * 
     * ERWIN_RELATION CHECKSUM="00045519", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Orders"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Order_UserAuthorization", FK_COLUMNS="UserAuthorizationId" * 
    UPDATE Orders
      SET
         * %SetFK(Orders,NULL) * 
        Orders.UserAuthorizationId = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM UserAuthorization
            WHERE
               * %JoinFKPK( %New,UserAuthorization," = "," AND") * 
               new.UserAuthorizationId = UserAuthorization.UserAuthorizationId
        ) 
         * %JoinPKPK(Orders, %New," = "," AND") * 
        Orders.OrderId =  new.OrderId;

     * erwin Builtin Trigger * 
     * Shipper ships an Orders on child insert restrict * 
     * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Shipper"
    CHILD_OWNER="", CHILD_TABLE="Orders"
    P2C_VERB_PHRASE="ships an", C2P_VERB_PHRASE="is shipped by a", 
    FK_CONSTRAINT="FK_Order_Shipper", FK_COLUMNS="ShipperId" * 
    SELECT count(*) INTO NUMROWS
      FROM Shipper
      WHERE
         * %JoinFKPK( %New,Shipper," = "," AND") * 
         new.ShipperId = Shipper.ShipperId;
    IF (
       * %NotnullFK( %New," IS NOT NULL AND") * 
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Orders because Shipper does not exist.'
      );
    END IF;

     * erwin Builtin Trigger * 
     * Employee processes an Orders on child insert restrict * 
     * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Employee"
    CHILD_OWNER="", CHILD_TABLE="Orders"
    P2C_VERB_PHRASE="processes an", C2P_VERB_PHRASE="is processed by an", 
    FK_CONSTRAINT="FK_Order_Employee", FK_COLUMNS="EmployeeId" * 
    SELECT count(*) INTO NUMROWS
      FROM Employee
      WHERE
         * %JoinFKPK( %New,Employee," = "," AND") * 
         new.EmployeeId = Employee.EmployeeId;
    IF (
       * %NotnullFK( %New," IS NOT NULL AND") * 
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Orders because Employee does not exist.'
      );
    END IF;

     * erwin Builtin Trigger * 
     * Customer makes an Orders on child insert set null * 
     * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Orders"
    P2C_VERB_PHRASE="makes an", C2P_VERB_PHRASE="is made by a", 
    FK_CONSTRAINT="FK_Order_Customer", FK_COLUMNS="CustomerId" * 
    UPDATE Orders
      SET
         * %SetFK(Orders,NULL) * 
        Orders.CustomerId = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM Customer
            WHERE
               * %JoinFKPK( %New,Customer," = "," AND") * 
               new.CustomerId = Customer.CustomerId
        ) 
         * %JoinPKPK(Orders, %New," = "," AND") * 
        Orders.OrderId =  new.OrderId;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION public."aft_delete_tD_Orders() 
RETURNS trigger AS
$$
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* Orders has an OrderDetail on parent delete restrict */
    /* ERWIN_RELATION CHECKSUM="0000e8af", PARENT_OWNER="", PARENT_TABLE="Orders"
    CHILD_OWNER="", CHILD_TABLE="OrderDetail"
    P2C_VERB_PHRASE="has an", C2P_VERB_PHRASE="belongs to an", 
    FK_CONSTRAINT="FK_OrderDetail_Order", FK_COLUMNS="OrderId" */
    SELECT count(*) INTO NUMROWS
      FROM OrderDetail
      WHERE
        /*  %JoinFKPK(OrderDetail, %Old," = "," AND") */
        OrderDetail.OrderId =  old.OrderId;
    IF (NUMROWS > 0)
    THEN
RAISE EXCEPTION 'Cannot delete Orders because OrderDetail exists.';
    END IF;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE  TRIGGER  tD_Orders AFTER DELETE ON public."Orders"" for each row
EXECUTE PROCEDURE before_insert_tD_Orders AFTER DELETE ON public."Orders" for each row
EXECUTE PROCEDURE aft_delete_tD_Orders();

CREATE  TRIGGER tI_Orders BEFORE INSERT ON Orders for each row
-- erwin Builtin Trigger
-- INSERT trigger on Orders 
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* UserAuthorization authorizes Orders on child insert set null */
    /* ERWIN_RELATION CHECKSUM="00045519", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Orders"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Order_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
    UPDATE Orders
      SET
        /* %SetFK(Orders,NULL) */
        Orders.UserAuthorizationId = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM UserAuthorization
            WHERE
              /* %JoinFKPK( %New,UserAuthorization," = "," AND") */
               new.();



CREATE OR REPLACE FUNCTION before_insert_tD_Product AFTER DELETE ON public."Product" for each row
EXECUTE PROCEDURE aft_delete_tD_Product();

CREATE  TRIGGER tI_Product BEFORE INSERT ON Product for each row
-- erwin Builtin Trigger
-- INSERT trigger on Product 
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* UserAuthorization authorizes Product on child insert set null */
    /* ERWIN_RELATION CHECKSUM="000359fc", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Product"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Product_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
    UPDATE Product
      SET
        /* %SetFK(Product,NULL) */
        Product.UserAuthorizationId = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM UserAuthorization
            WHERE
              /* %JoinFKPK( %New,UserAuthorization," = "," AND") */
               new.Us() 
RETURNS trigger AS
$$
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* Product has an OrderDetail on parent delete restrict */
    /* ERWIN_RELATION CHECKSUM="0000ec32", PARENT_OWNER="", PARENT_TABLE="Product"
    CHILD_OWNER="", CHILD_TABLE="OrderDetail"
    P2C_VERB_PHRASE="has an", C2P_VERB_PHRASE="belongs to a", 
    FK_CONSTRAINT="FK_OrderDetail_Product", FK_COLUMNS="ProductId" */
    SELECT count(*) INTO NUMROWS
      FROM OrderDetail
      WHERE
        /*  %JoinFKPK(OrderDetail, %Old," = "," AND") */
        OrderDetail.ProductId =  old.ProductId;
    IF (NUMROWS > 0)
    THEN
RAISE EXCEPTION 'Cannot delete Product because OrderDetail exists.';
    END IF;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE  TRIGGER  tD_Product AFTER DELETE ON public."Product" for each row
EXECUTE PROCEDURE aft_delete_tD_Product();

CREATE  TRIGGER tI_Product BEFORE INSERT ON Product for each row
-- erwin Builtin Trigger
-- INSERT trigger on Product 
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* UserAuthorization authorizes Product on child insert set null */
    /* ERWIN_RELATION CHECKSUM="000359fc", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Product"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Product_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
    UPDATE Product
      SET
        /* %SetFK(Product,NULL) */
        Product.UserAuthorizationId = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM UserAuthorization
            WHERE
              /* %JoinFKPK( %New,UserAuthorization," = "," AND") */
               new.UserAuthorizationId = UserAuthorization.UserAuthorizationId
        ) 
        /* %JoinPKPK(Product, %New," = "," AND") */
        Product.ProductId =  new.ProductId;

    /* erwin Builtin Trigger */
    /* Supplier supplies a Product on child insert restrict */
    /* ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Supplier"
    CHILD_OWNER="", CHILD_TABLE="Product"
    P2C_VERB_PHRASE="supplies a", C2P_VERB_PHRASE="is supplied by a", 
    FK_CONSTRAINT="FK_Product_Supplier", FK_COLUMNS="SupplierId" */
    SELECT count(*) INTO NUMROWS
      FROM Supplier
      WHERE
        /* %JoinFKPK( %New,Supplier," = "," AND") */
         new.SupplierId = Supplier.SupplierId;
    IF (
      /* %NotnullFK( %New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
RAISE EXCEPTION 'Cannot insert Product because Supplier does not exist.';

CREATE  TRIGGER tI_Product BEFORE INSERT ON Product for each row
-- erwin Builtin Trigger
-- INSERT trigger on Product 
DECLARE NUMROWS INTEGER;
BEGIN
     * erwin Builtin Trigger * 
     * UserAuthorization authorizes Product on child insert set null * 
     * ERWIN_RELATION CHECKSUM="000359fc", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Product"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Product_UserAuthorization", FK_COLUMNS="UserAuthorizationId" * 
    UPDATE Product
      SET
         * %SetFK(Product,NULL) * 
        Product.UserAuthorizationId = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM UserAuthorization
            WHERE
               * %JoinFKPK( %New,UserAuthorization," = "," AND") * 
               new.UserAuthorizationId = UserAuthorization.UserAuthorizationId
        ) 
         * %JoinPKPK(Product, %New," = "," AND") * 
        Product.ProductId =  new.ProductId;

     * erwin Builtin Trigger * 
     * Supplier supplies a Product on child insert restrict * 
     * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Supplier"
    CHILD_OWNER="", CHILD_TABLE="Product"
    P2C_VERB_PHRASE="supplies a", C2P_VERB_PHRASE="is supplied by a", 
    FK_CONSTRAINT="FK_Product_Supplier", FK_COLUMNS="SupplierId" * 
    SELECT count(*) INTO NUMROWS
      FROM Supplier
      WHERE
         * %JoinFKPK( %New,Supplier," = "," AND") * 
         new.SupplierId = Supplier.SupplierId;
    IF (
       * %NotnullFK( %New," IS NOT NULL AND") * 
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Product because Supplier does not exist.'
      );
    END IF;

     * erwin Builtin Trigger * 
     * Category is of a Product on child insert restrict * 
     * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Category"
    CHILD_OWNER="", CHILD_TABLE="Product"
    P2C_VERB_PHRASE="is of a", C2P_VERB_PHRASE="belongs to a", 
    FK_CONSTRAINT="FK_Product_Category", FK_COLUMNS="CategoryId" * 
    SELECT count(*) INTO NUMROWS
      FROM Category
      WHERE
         * %JoinFKPK( %New,Category," = "," AND") * 
         new.CategoryId = Category.CategoryId;
    IF (
       * %NotnullFK( %New," IS NOT NULL AND") * 
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Product because Category does not exist.'
      );
    END IF;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION public."aft_delete_tD_Product() 
RETURNS trigger AS
$$
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* Product has an OrderDetail on parent delete restrict */
    /* ERWIN_RELATION CHECKSUM="0000ec32", PARENT_OWNER="", PARENT_TABLE="Product"
    CHILD_OWNER="", CHILD_TABLE="OrderDetail"
    P2C_VERB_PHRASE="has an", C2P_VERB_PHRASE="belongs to a", 
    FK_CONSTRAINT="FK_OrderDetail_Product", FK_COLUMNS="ProductId" */
    SELECT count(*) INTO NUMROWS
      FROM OrderDetail
      WHERE
        /*  %JoinFKPK(OrderDetail, %Old," = "," AND") */
        OrderDetail.ProductId =  old.ProductId;
    IF (NUMROWS > 0)
    THEN
RAISE EXCEPTION 'Cannot delete Product because OrderDetail exists.';
    END IF;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE  TRIGGER  tD_Product AFTER DELETE ON public."Product"" for each row
EXECUTE PROCEDURE before_insert_tD_Product AFTER DELETE ON public."Product" for each row
EXECUTE PROCEDURE aft_delete_tD_Product();

CREATE  TRIGGER tI_Product BEFORE INSERT ON Product for each row
-- erwin Builtin Trigger
-- INSERT trigger on Product 
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* UserAuthorization authorizes Product on child insert set null */
    /* ERWIN_RELATION CHECKSUM="000359fc", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Product"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Product_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
    UPDATE Product
      SET
        /* %SetFK(Product,NULL) */
        Product.UserAuthorizationId = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM UserAuthorization
            WHERE
              /* %JoinFKPK( %New,UserAuthorization," = "," AND") */
               new.Us();



CREATE OR REPLACE FUNCTION before_insert_tD_Shipper AFTER DELETE ON public."Shipper" for each row
EXECUTE PROCEDURE aft_delete_tD_Shipper();

CREATE  TRIGGER tI_Shipper BEFORE INSERT ON Shipper for each row
-- erwin Builtin Trigger
-- INSERT trigger on Shipper 
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* UserAuthorization authorizes Shipper on child insert set null */
    /* ERWIN_RELATION CHECKSUM="00012b25", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Shipper"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Shipper_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
    UPDATE Shipper
      SET
        /* %SetFK(Shipper,NULL) */
        Shipper.UserAuthorizationId = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM UserAuthorization
            WHERE
              /* %JoinFKPK( %New,UserAuthorization," = "," AN() 
RETURNS trigger AS
$$

RAISE EXCEPTION 'Cannot DELETE Shipper because Orders exists.';
    END IF;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE  TRIGGER  tD_Shipper AFTER DELETE ON public."Shipper" for each row
EXECUTE PROCEDURE aft_delete_tD_Shippe;

CREATE  TRIGGER tI_Shipper BEFORE INSERT ON Shipper for each row
-- erwin Builtin Trigger
-- INSERT trigger on Shipper 
DECLARE NUMROWS INTEGER;
BEGIN
     * erwin Builtin Trigger * 
     * UserAuthorization authorizes Shipper on child insert set null * 
     * ERWIN_RELATION CHECKSUM="00012b25", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Shipper"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Shipper_UserAuthorization", FK_COLUMNS="UserAuthorizationId" * 
    UPDATE Shipper
      SET
         * %SetFK(Shipper,NULL) * 
        Shipper.UserAuthorizationId = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM UserAuthorization
            WHERE
               * %JoinFKPK( %New,UserAuthorization," = "," AND") * 
               new.UserAuthorizationId = UserAuthorization.UserAuthorizationId
        ) 
         * %JoinPKPK(Shipper, %New," = "," AND") * 
        Shipper.ShipperId =  new.ShipperId;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION public."aft_delete_tD_Shipper() 
RETURNS trigger AS
$$
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* Shipper ships an Orders on parent delete no action */
    /* ERWIN_RELATION CHECKSUM="0000e1af", PARENT_OWNER="", PARENT_TABLE="Shipper"
    CHILD_OWNER="", CHILD_TABLE="Orders"
    P2C_VERB_PHRASE="ships an", C2P_VERB_PHRASE="is shipped by a", 
    FK_CONSTRAINT="FK_Order_Shipper", FK_COLUMNS="ShipperId" */
    SELECT count(*) INTO NUMROWS
      FROM Orders
      WHERE
        /*  %JoinFKPK(Orders, %Old," = "," AND") */
        Orders.ShipperId =  old.ShipperId;
    IF (NUMROWS > 0)
    THEN
RAISE EXCEPTION 'Cannot DELETE Shipper because Orders exists.';
    END IF;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE  TRIGGER  tD_Shipper AFTER DELETE ON public."Shipper"" for each row
EXECUTE PROCEDURE before_insert_tD_Shipper AFTER DELETE ON public."Shipper" for each row
EXECUTE PROCEDURE aft_delete_tD_Shipper();

CREATE  TRIGGER tI_Shipper BEFORE INSERT ON Shipper for each row
-- erwin Builtin Trigger
-- INSERT trigger on Shipper 
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* UserAuthorization authorizes Shipper on child insert set null */
    /* ERWIN_RELATION CHECKSUM="00012b25", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Shipper"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Shipper_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
    UPDATE Shipper
      SET
        /* %SetFK(Shipper,NULL) */
        Shipper.UserAuthorizationId = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM UserAuthorization
            WHERE
              /* %JoinFKPK( %New,UserAuthorization," = "," AN();


CREATE OR REPLACE FUNCTION aft_update_U_Shipper() 
RETURNS trigger AS
$$
DECLARE NUMROWS INTEGER;
BEGIN
  /* erwin Builtin Trigger */
  /* Shipper ships an Orders on parent update no action */
  /* ERWIN_RELATION CHECKSUM="0001cb39", PARENT_OWNER="", PARENT_TABLE="Shipper"
    CHILD_OWNER="", CHILD_TABLE="Orders"
    P2C_VERB_PHRASE="ships an", C2P_VERB_PHRASE="is shipped by a", 
    FK_CONSTRAINT="FK_Order_Shipper", FK_COLUMNS="ShipperId" */
  IF
    /* %JoinPKPK( %Old, %New," <> "," OR ") */
     old.ShipperId <>  new.ShipperId
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Orders
      WHERE
        /*  %JoinFKPK(Orders, %Old," = "," AND") */
        Orders.ShipperId =  old.ShipperId;
    IF (NUMROWS > 0)
    THEN
RAISE EXCEPTION 'Cannot update Shipper because Orders exists.';
    END IF;
  END IF;

     * erwin Builtin Trigger * 
     * UserAuthorization authorizes Shipper on child update set null * 
     * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Shipper"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Shipper_UserAuthorization", FK_COLUMNS="UserAuthorizationId" * 
     * Not Implemented due to an ORA-04091 Mutating Table Issue * 
    NULL;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE  TRIGGER tU_Shipper AFTER UPDATE ON public."Shipper" for each row
EXECUTE PROCEDURE aft_update_U_Shipper();



CREATE OR REPLACE FUNCTION before_insert_tD_Supplier AFTER DELETE ON public."Supplier" for each row
EXECUTE PROCEDURE aft_delete_tD_Supplier();

CREATE  TRIGGER tI_Supplier BEFORE INSERT ON Supplier for each row
-- erwin Builtin Trigger
-- INSERT trigger on Supplier 
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* UserAuthorization authorizes Supplier on child insert set null */
    /* ERWIN_RELATION CHECKSUM="00011b56", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Supplier"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Supplier_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
    UPDATE Supplier
      SET
        /* %SetFK(Supplier,NULL) */
        Supplier.UserAuthorizationId = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM UserAuthorization
            WHERE
              /* %JoinFKPK( %New,UserAuthorization," = "," AND") */
      () 
RETURNS trigger AS
$$

RAISE EXCEPTION 'Cannot DELETE Supplier because Product exists.';
    END IF;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE  TRIGGER  tD_Supplier AFTER DELETE ON public."Supplier" for each row
EXECUTE PROCEDURE aft_delete_tD_Supplie;

CREATE  TRIGGER tI_Supplier BEFORE INSERT ON Supplier for each row
-- erwin Builtin Trigger
-- INSERT trigger on Supplier 
DECLARE NUMROWS INTEGER;
BEGIN
     * erwin Builtin Trigger * 
     * UserAuthorization authorizes Supplier on child insert set null * 
     * ERWIN_RELATION CHECKSUM="00011b56", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Supplier"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Supplier_UserAuthorization", FK_COLUMNS="UserAuthorizationId" * 
    UPDATE Supplier
      SET
         * %SetFK(Supplier,NULL) * 
        Supplier.UserAuthorizationId = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM UserAuthorization
            WHERE
               * %JoinFKPK( %New,UserAuthorization," = "," AND") * 
               new.UserAuthorizationId = UserAuthorization.UserAuthorizationId
        ) 
         * %JoinPKPK(Supplier, %New," = "," AND") * 
        Supplier.SupplierId =  new.SupplierId;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION public."aft_delete_tD_Supplier() 
RETURNS trigger AS
$$
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* Supplier supplies a Product on parent delete no action */
    /* ERWIN_RELATION CHECKSUM="0000eb89", PARENT_OWNER="", PARENT_TABLE="Supplier"
    CHILD_OWNER="", CHILD_TABLE="Product"
    P2C_VERB_PHRASE="supplies a", C2P_VERB_PHRASE="is supplied by a", 
    FK_CONSTRAINT="FK_Product_Supplier", FK_COLUMNS="SupplierId" */
    SELECT count(*) INTO NUMROWS
      FROM Product
      WHERE
        /*  %JoinFKPK(Product, %Old," = "," AND") */
        Product.SupplierId =  old.SupplierId;
    IF (NUMROWS > 0)
    THEN
RAISE EXCEPTION 'Cannot DELETE Supplier because Product exists.';
    END IF;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE  TRIGGER  tD_Supplier AFTER DELETE ON public."Supplier"" for each row
EXECUTE PROCEDURE before_insert_tD_Supplier AFTER DELETE ON public."Supplier" for each row
EXECUTE PROCEDURE aft_delete_tD_Supplier();

CREATE  TRIGGER tI_Supplier BEFORE INSERT ON Supplier for each row
-- erwin Builtin Trigger
-- INSERT trigger on Supplier 
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* UserAuthorization authorizes Supplier on child insert set null */
    /* ERWIN_RELATION CHECKSUM="00011b56", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Supplier"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Supplier_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
    UPDATE Supplier
      SET
        /* %SetFK(Supplier,NULL) */
        Supplier.UserAuthorizationId = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM UserAuthorization
            WHERE
              /* %JoinFKPK( %New,UserAuthorization," = "," AND") */
      ();



CREATE OR REPLACE FUNCTION aft_delete_tD_UserAuthorization() 
RETURNS trigger AS
$$

RAISE EXCEPTION ;ECLARE NUMROWS INTEGER;
BEGIN
     * erwin Builtin Trigger * 
     * UserAuthorization authorizes OrderDetail on parent delete set null * 
     * ERWIN_RELATION CHECKSUM="0007ee97", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="OrderDetail"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_OrderDetail_UserAuthorization", FK_COLUMNS="UserAuthorizationId" * 
    UPDATE OrderDetail
      SET
         * %SetFK(OrderDetail,NULL) * 
        OrderDetail.UserAuthorizationId = NULL
      WHERE
         * %JoinFKPK(OrderDetail, %Old," = "," AND") * 
        OrderDetail.UserAuthorizationId =  old.UserAuthorizationId;

     * erwin Builtin Trigger * 
     * UserAuthorization authorizes Category on parent delete set null * 
     * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Category"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Category_UserAuthorization", FK_COLUMNS="UserAuthorizationId" * 
    UPDATE Category
      SET
         * %SetFK(Category,NULL) * 
        Category.UserAuthorizationId = NULL
      WHERE
         * %JoinFKPK(Category, %Old," = "," AND") * 
        Category.UserAuthorizationId =  old.UserAuthorizationId;

     * erwin Builtin Trigger * 
     * UserAuthorization authorizes Orders on parent delete set null * 
     * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Orders"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Order_UserAuthorization", FK_COLUMNS="UserAuthorizationId" * 
    UPDATE Orders
      SET
         * %SetFK(Orders,NULL) * 
        Orders.UserAuthorizationId = NULL
      WHERE
         * %JoinFKPK(Orders, %Old," = "," AND") * 
        Orders.UserAuthorizationId =  old.UserAuthorizationId;

     * erwin Builtin Trigger * 
     * UserAuthorization authorizes Customer on parent delete set null * 
     * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Customer"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Customer_UserAuthorization", FK_COLUMNS="UserAuthorizationId" * 
    UPDATE Customer
      SET
         * %SetFK(Customer,NULL) * 
        Customer.UserAuthorizationId = NULL
      WHERE
         * %JoinFKPK(Customer, %Old," = "," AND") * 
        Customer.UserAuthorizationId =  old.UserAuthorizationId;

     * erwin Builtin Trigger * 
     * UserAuthorization authorizes Employee on parent delete set null * 
     * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Employee_UserAuthorization", FK_COLUMNS="UserAuthorizationId" * 
    UPDATE Employee
      SET
         * %SetFK(Employee,NULL) * 
        Employee.UserAuthorizationId = NULL
      WHERE
         * %JoinFKPK(Employee, %Old," = "," AND") * 
        Employee.UserAuthorizationId =  old.UserAuthorizationId;

     * erwin Builtin Trigger * 
     * UserAuthorization authorizes Supplier on parent delete set null * 
     * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Supplier"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Supplier_UserAuthorization", FK_COLUMNS="UserAuthorizationId" * 
    UPDATE Supplier
      SET
         * %SetFK(Supplier,NULL) * 
        Supplier.UserAuthorizationId = NULL
      WHERE
         * %JoinFKPK(Supplier, %Old," = "," AND") * 
        Supplier.UserAuthorizationId =  old.UserAuthorizationId;

     * erwin Builtin Trigger * 
     * UserAuthorization authorizes Product on parent delete set null * 
     * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Product"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Product_UserAuthorization", FK_COLUMNS="UserAuthorizationId" * 
    UPDATE Product
      SET
         * %SetFK(Product,NULL) * 
        Product.UserAuthorizationId = NULL
      WHERE
         * %JoinFKPK(Product, %Old," = "," AND") * 
        Product.UserAuthorizationId =  old.UserAuthorizationId;

     * erwin Builtin Trigger * 
     * UserAuthorization authorizes Shipper on parent delete set null * 
     * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Shipper"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Shipper_UserAuthorization", FK_COLUMNS="UserAuthorizationId" * 
    UPDATE Shipper
      SET
         * %SetFK(Shipper,NULL) * 
        Shipper.UserAuthorizationId = NULL
      WHERE
         * %JoinFKPK(Shipper, %Old," = "," AND") * 
        Shipper.UserAuthorizationId =  old.UserAuthorizationId;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE  TRIGGER  tD_UserAuthorization AFTER DELETE ON public."UserAuthorization" for each row
EXECUTE PROCEDURE aft_delete_tD_UserAuthorization();


CREATE OR REPLACE FUNCTION aft_update_U_UserAuthorization() 
RETURNS trigger AS
$$

RAISE EXCEPTION ;ECLARE NUMROWS INTEGER;
BEGIN
   * UserAuthorization authorizes OrderDetail on parent update set null * 
   * ERWIN_RELATION CHECKSUM="00091632", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="OrderDetail"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_OrderDetail_UserAuthorization", FK_COLUMNS="UserAuthorizationId" * 
  IF
     * %JoinPKPK( %Old, %New," <> "," OR ") * 
     old.UserAuthorizationId <>  new.UserAuthorizationId
  THEN
    UPDATE OrderDetail
      SET
         * %SetFK(OrderDetail,NULL) * 
        OrderDetail.UserAuthorizationId = NULL
      WHERE
         * %JoinFKPK(OrderDetail, %Old," = ",",") * 
        OrderDetail.UserAuthorizationId =  old.UserAuthorizationId;
  END IF;

   * UserAuthorization authorizes Category on parent update set null * 
   * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Category"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Category_UserAuthorization", FK_COLUMNS="UserAuthorizationId" * 
  IF
     * %JoinPKPK( %Old, %New," <> "," OR ") * 
     old.UserAuthorizationId <>  new.UserAuthorizationId
  THEN
    UPDATE Category
      SET
         * %SetFK(Category,NULL) * 
        Category.UserAuthorizationId = NULL
      WHERE
         * %JoinFKPK(Category, %Old," = ",",") * 
        Category.UserAuthorizationId =  old.UserAuthorizationId;
  END IF;

   * UserAuthorization authorizes Orders on parent update set null * 
   * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Orders"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Order_UserAuthorization", FK_COLUMNS="UserAuthorizationId" * 
  IF
     * %JoinPKPK( %Old, %New," <> "," OR ") * 
     old.UserAuthorizationId <>  new.UserAuthorizationId
  THEN
    UPDATE Orders
      SET
         * %SetFK(Orders,NULL) * 
        Orders.UserAuthorizationId = NULL
      WHERE
         * %JoinFKPK(Orders, %Old," = ",",") * 
        Orders.UserAuthorizationId =  old.UserAuthorizationId;
  END IF;

   * UserAuthorization authorizes Customer on parent update set null * 
   * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Customer"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Customer_UserAuthorization", FK_COLUMNS="UserAuthorizationId" * 
  IF
     * %JoinPKPK( %Old, %New," <> "," OR ") * 
     old.UserAuthorizationId <>  new.UserAuthorizationId
  THEN
    UPDATE Customer
      SET
         * %SetFK(Customer,NULL) * 
        Customer.UserAuthorizationId = NULL
      WHERE
         * %JoinFKPK(Customer, %Old," = ",",") * 
        Customer.UserAuthorizationId =  old.UserAuthorizationId;
  END IF;

   * UserAuthorization authorizes Employee on parent update set null * 
   * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Employee_UserAuthorization", FK_COLUMNS="UserAuthorizationId" * 
  IF
     * %JoinPKPK( %Old, %New," <> "," OR ") * 
     old.UserAuthorizationId <>  new.UserAuthorizationId
  THEN
    UPDATE Employee
      SET
         * %SetFK(Employee,NULL) * 
        Employee.UserAuthorizationId = NULL
      WHERE
         * %JoinFKPK(Employee, %Old," = ",",") * 
        Employee.UserAuthorizationId =  old.UserAuthorizationId;
  END IF;

   * UserAuthorization authorizes Supplier on parent update set null * 
   * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Supplier"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Supplier_UserAuthorization", FK_COLUMNS="UserAuthorizationId" * 
  IF
     * %JoinPKPK( %Old, %New," <> "," OR ") * 
     old.UserAuthorizationId <>  new.UserAuthorizationId
  THEN
    UPDATE Supplier
      SET
         * %SetFK(Supplier,NULL) * 
        Supplier.UserAuthorizationId = NULL
      WHERE
         * %JoinFKPK(Supplier, %Old," = ",",") * 
        Supplier.UserAuthorizationId =  old.UserAuthorizationId;
  END IF;

   * UserAuthorization authorizes Product on parent update set null * 
   * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Product"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Product_UserAuthorization", FK_COLUMNS="UserAuthorizationId" * 
  IF
     * %JoinPKPK( %Old, %New," <> "," OR ") * 
     old.UserAuthorizationId <>  new.UserAuthorizationId
  THEN
    UPDATE Product
      SET
         * %SetFK(Product,NULL) * 
        Product.UserAuthorizationId = NULL
      WHERE
         * %JoinFKPK(Product, %Old," = ",",") * 
        Product.UserAuthorizationId =  old.UserAuthorizationId;
  END IF;

   * UserAuthorization authorizes Shipper on parent update set null * 
   * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Shipper"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Shipper_UserAuthorization", FK_COLUMNS="UserAuthorizationId" * 
  IF
     * %JoinPKPK( %Old, %New," <> "," OR ") * 
     old.UserAuthorizationId <>  new.UserAuthorizationId
  THEN
    UPDATE Shipper
      SET
         * %SetFK(Shipper,NULL) * 
        Shipper.UserAuthorizationId = NULL
      WHERE
         * %JoinFKPK(Shipper, %Old," = ",",") * 
        Shipper.UserAuthorizationId =  old.UserAuthorizationId;
  END IF;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE  TRIGGER tU_UserAuthorization AFTER UPDATE ON public."UserAuthorization" for each row
EXECUTE PROCEDURE aft_update_U_UserAuthorization();

