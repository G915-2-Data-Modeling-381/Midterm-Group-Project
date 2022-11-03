

set quoted_identifier on
go

CREATE SCHEMA "Audit" AUTHORIZATION "dbo"
go

CREATE SCHEMA "Example" AUTHORIZATION "dbo"
go

CREATE SCHEMA "HumanResources" AUTHORIZATION "dbo"
go

CREATE SCHEMA "JsonOutput" AUTHORIZATION "dbo"
go

CREATE SCHEMA "Production" AUTHORIZATION "dbo"
go

CREATE SCHEMA "RelationalCalculii" AUTHORIZATION "dbo"
go

CREATE SCHEMA "RelationalCrossJoin" AUTHORIZATION "dbo"
go

CREATE SCHEMA "Sales" AUTHORIZATION "dbo"
go

CREATE SCHEMA "SystemVersioned" AUTHORIZATION "dbo"
go

CREATE SCHEMA "Temporal" AUTHORIZATION "dbo"
go

CREATE SCHEMA "Triggered" AUTHORIZATION "dbo"
go

CREATE SCHEMA "Udt" AUTHORIZATION "dbo"
go

CREATE SCHEMA "Utils" AUTHORIZATION "dbo"
go

CREATE SCHEMA "DbSecurity"
go

CREATE TYPE "Udt"."sdAddressString"
	FROM NVARCHAR(60) NULL
go

CREATE TYPE "Udt"."BlobDefinition"
	FROM VARBINARY(MAX) NULL
go

CREATE TYPE "Udt"."CategoryName"
	FROM NVARCHAR(15) NULL
go

CREATE TYPE "Udt"."City"
	FROM NVARCHAR(15) NULL
go

CREATE TYPE "Udt"."CompanyName"
	FROM NVARCHAR(40) NULL
go

CREATE TYPE "Udt"."ContactName"
	FROM NVARCHAR(30) NULL
go

CREATE TYPE "Udt"."ContactTitle"
	FROM NVARCHAR(30) NULL
go

CREATE TYPE "Udt"."Country"
	FROM NVARCHAR(15) NULL
go

CREATE TYPE "Udt"."Currency"
	FROM MONEY NULL
go

CREATE TYPE "Udt"."DateYYYYMMDD"
	FROM DATE NOT NULL
go

CREATE TYPE "Udt"."sdDescriptionString"
	FROM NVARCHAR(200) NULL
go

CREATE TYPE "Udt"."FirstName"
	FROM NVARCHAR(25) NULL
go

CREATE TYPE "Udt"."FlagBit"
	FROM BIT NULL
go

CREATE TYPE "Udt"."Grade"
	FROM TINYINT NULL
go

CREATE TYPE "Udt"."LastName"
	FROM NVARCHAR(25) NULL
go

CREATE TYPE "Udt"."sdNameString"
	FROM NVARCHAR(80) NULL
go

CREATE TYPE "Udt"."Note"
	FROM NVARCHAR(200) NULL
go

CREATE TYPE "Udt"."Percentage"
	FROM NUMERIC(4,3) NULL
go

CREATE TYPE "Udt"."PostalCode"
	FROM NVARCHAR(10) NULL
go

CREATE TYPE "Udt"."ProductName"
	FROM NVARCHAR(80) NULL
go

CREATE TYPE "Udt"."QuantitySmall"
	FROM SMALLINT NULL
go

CREATE TYPE "Udt"."Region"
	FROM NVARCHAR(15) NULL
go

CREATE TYPE "Udt"."Score"
	FROM TINYINT NOT NULL
go

CREATE TYPE "Udt"."SequenceNumber"
	FROM INT NULL
go

CREATE TYPE "Udt"."ShortDescription"
	FROM NVARCHAR(15) NULL
go

CREATE TYPE "Udt"."StateName"
	FROM NVARCHAR(15) NOT NULL
go

CREATE TYPE "Udt"."StudentIdentification"
	FROM VARCHAR(10) NULL
go

CREATE TYPE "Udt"."SurrogateKeyInt"
	FROM INT NOT NULL
go

CREATE TYPE "Udt"."TelephoneNumber"
	FROM NVARCHAR(24) NULL
go

CREATE TYPE "Udt"."sdTextKeyVarchar10String"
	FROM VARCHAR(10) NOT NULL
go

CREATE TYPE "Udt"."sdTitleString"
	FROM NVARCHAR(30) NOT NULL
go

CREATE TYPE "Udt"."TitleOfCourtesy"
	FROM NVARCHAR(5) NOT NULL
go

CREATE TYPE "Udt"."Version"
	FROM INT NULL
go

CREATE TYPE "Udt"."TimeStampNow"
	FROM DATETIME2(7) NULL
go

CREATE TYPE "Udt"."TriggerOption"
	FROM CHAR(1) NOT NULL
go

CREATE TYPE "Udt"."IsDeletion"
	FROM CHAR(1) NOT NULL
go

CREATE TYPE "Udt"."sdFlagCharacterString"
	FROM CHAR(1) NOT NULL
go

CREATE TYPE "MidtermDataModelingCSCI381"
	FROM CHAR(18) NULL
go

CREATE TYPE "dBlob"
	FROM VARBINARY(MAX) NULL
go

CREATE TYPE "dNumber"
	FROM INT NULL
go

CREATE TYPE "dString"
	FROM NVARCHAR(MAX) NULL
go

CREATE TYPE "dDatetime"
	FROM DATETIME NULL
go

CREATE TYPE "sdDateDatetime"
	FROM DATE NULL
go

CREATE TYPE "sdDatetimeString"
	FROM NCHAR(30) NULL
go

CREATE TYPE "YYYY"
	FROM NCHAR(4) NULL
go

CREATE TYPE "sdNanosecondPreciseDatetime"
	FROM DATETIME2 NULL
go

CREATE TYPE "sdIntegerNumber"
	FROM INT NULL
go

CREATE TYPE "sdDecimalNumber"
	FROM DECIMAL(4,3) NULL
go

CREATE TYPE "sdPositiveIntegerNumber"
	FROM INT NULL
go

CREATE TYPE "hh:mmTime"
	FROM NCHAR(5) NULL
go

CREATE TYPE "Description"
	FROM NVARCHAR(200) NULL
go

CREATE TYPE "sdMoneyNumber"
	FROM MONEY NULL
go

CREATE TYPE "MediumDescription"
	FROM NVARCHAR(60) NULL
go

CREATE TYPE "sdNumberString"
	FROM NVARCHAR(MAX) NULL
go

CREATE TYPE "sdPersonNameString"
	FROM NVARCHAR(80) NULL
go

CREATE TYPE "Address"
	FROM NVARCHAR(60) NULL
go

CREATE TYPE "Title"
	FROM NVARCHAR(30) NOT NULL
go

CREATE TYPE "GroupName"
	FROM NVARCHAR(20) NULL
go

CREATE TYPE "FullName"
	FROM NVARCHAR(40) NULL
go

CREATE TYPE "DepartmentName"
	FROM NVARCHAR(80) NULL
go

CREATE TYPE "EmployeeTitle"
	FROM NVARCHAR(30) NOT NULL
go

CREATE TYPE "sdBusinessNameString"
	FROM NVARCHAR(80) NULL
go

CREATE TABLE "Triggered"."AuditTriggeredEmployeeHistory"
( 
	"TriggeredEmployeeHistoryId" "Udt"."SurrogateKeyInt"  IDENTITY ( 1,1 )  NOT NULL ,
	"AuditTriggeredEmployeeHistoryTimestamp" "Udt"."TimeStampNow"  NULL ,
	"TriggerOption"      "Udt"."TriggerOption"  NULL 
	CONSTRAINT "CK_dString_sdFlagCharacterString_TriggerOption_485517867"
		CHECK  ( [TriggerOption]='U' OR [TriggerOption]='D' ),
	"EmployeeId"         "Udt"."SurrogateKeyInt"  NOT NULL ,
	"EmployeeFullName"   "FullName"  NOT NULL 
	CONSTRAINT "CK_dString_sdNameString_157130278"
		CHECK  ( EmployeeFullName != '' ),
	"Department"         "DepartmentName"  NOT NULL 
	CONSTRAINT "DF_dString_sdNameString_sdBusinessNameString_DepartmentName_1142890269"
		 DEFAULT  'Department Name'
	CONSTRAINT "CK_dString_sdNameString_404636527"
		CHECK  ( Department != '' ),
	"Salary"             "Udt"."Currency"  NOT NULL 
	CONSTRAINT "DF_dNumber_sdMoneyNumber_Currency_1495995922"
		 DEFAULT  0.000
	CONSTRAINT "CK_dNumber_sdMoneyNumber_Currency_1412109843"
		CHECK  ( Salary >= 0.000 ),
	"Notes"              "Udt"."Note"  NOT NULL 
	CONSTRAINT "DF_dString_sdDescriptionString_Note_393474224"
		 DEFAULT  'Insert Note here.'
	CONSTRAINT "CK_dString_sdDescriptionString_1936057441"
		CHECK  ( LEN(Notes) > 10 ),
	"IsDeleted"          "Udt"."IsDeletion"  NULL 
	CONSTRAINT "DF_Triggered_IsDeleted_349095933"
		 DEFAULT  'N'
	CONSTRAINT "CK_IsDeleted_1648018929"
		CHECK  ( [IsDeleted]='Y' OR [IsDeleted]='N' ),
	"TransactionNumber"  "Udt"."SequenceNumber"  NULL 
	CONSTRAINT "CK_AuditTriggeredEmployeeHistory_TransactionNumber_204509526"
		CHECK  ( TransactionNumber >= 0 ),
	"UserAuthenticatedKey" "Udt"."SurrogateKeyInt"  NULL 
	CONSTRAINT "DF_AuditTriggeredEmployeeHistory_UserAuthenticatedKey"
		 DEFAULT  37,
	"SysStartTime"       "Udt"."TimeStampNow"  NULL 
	CONSTRAINT "DFT_Employees_SysStart_1300122177"
		 DEFAULT  '19000101',
	"SysEndTime"         "Udt"."TimeStampNow"  NULL 
	CONSTRAINT "DFT_Employees_SysEnd_1345980678"
		 DEFAULT  '99991231 23:59:59',
	"TimestampRowChanged" "Udt"."TimeStampNow"  NULL ,
	"UserAuthorizationId" "Udt"."SurrogateKeyInt" ,
	"DateAdded"          "Udt"."TimeStampNow" 
	CONSTRAINT "DF_dDatetime_sdNanosecondPreciseDatetime_TimeStampNow_729286469"
		 DEFAULT  sysdatetime(),
	"DateOfLastUpdate"   "Udt"."TimeStampNow" 
	CONSTRAINT "DF_dDatetime_sdNanosecondPreciseDatetime_TimeStampNow_973804692"
		 DEFAULT  sysdatetime()
)
go

CREATE TABLE "Production"."Category"
( 
	"CategoryId"         "Udt"."SurrogateKeyInt"  IDENTITY ( 1,1 )  NOT NULL ,
	"CategoryName"       "Udt"."CategoryName"  NOT NULL 
	CONSTRAINT "DF_dString_sdNameString_sdBusinessNameString_CategoryName_1050480570"
		 DEFAULT  'Category Name'
	CONSTRAINT "CK_dString_sdNameString_1138506409"
		CHECK  ( CategoryName != '' ),
	"Description"        "Description"  NOT NULL 
	CONSTRAINT "DF_dString_sdDescriptionString_248136984"
		 DEFAULT  'Insert description here.'
	CONSTRAINT "CK_dString_sdDescriptionString_248137235"
		CHECK  ( LEN(Description) > 10 ),
	"UserAuthorizationId" "Udt"."SurrogateKeyInt"  NOT NULL ,
	"DateAdded"          "Udt"."TimeStampNow" 
	CONSTRAINT "DF_dDatetime_sdNanosecondPreciseDatetime_TimeStampNow_1289631773"
		 DEFAULT  sysdatetime()
	CONSTRAINT "CK_SarbanesOxleyRetentionPeriod_1505421547"
		CHECK  ( DATEDIFF(year, DateAdded, sysdatetime()) < 7 ),
	"DateOfLastUpdate"   "Udt"."TimeStampNow" 
	CONSTRAINT "DF_dDatetime_sdNanosecondPreciseDatetime_TimeStampNow_1642704483"
		 DEFAULT  sysdatetime()
	CONSTRAINT "CK_SarbanesOxleyRetentionPeriod_1077581747"
		CHECK  ( DATEDIFF(year, DateOfLastUpdate, sysdatetime()) < 7 )
)
go

CREATE TABLE "Sales"."Customer"
( 
	"CustomerId"         "Udt"."SurrogateKeyInt"  IDENTITY ( 1,1 )  NOT NULL ,
	"CustomerCompanyName" "Udt"."CompanyName"  NOT NULL 
	CONSTRAINT "DF_dString_sdNameString_sdBusinessNameString_CompanyName_498371554"
		 DEFAULT  'Company Name'
	CONSTRAINT "CK_dString_sdNameString_516203391"
		CHECK  ( CustomerCompanyName != '' ),
	"CustomerContactName" "Udt"."ContactName"  NOT NULL 
	CONSTRAINT "DF_dString_sdNameString_sdPersonName_ContactName_534635003"
		 DEFAULT  'Contact Name'
	CONSTRAINT "CK_dString_sdNameString_449356660"
		CHECK  ( CustomerContactName != '' ),
	"CustomerContactTitle" "Udt"."ContactTitle"  NOT NULL 
	CONSTRAINT "DF_dString_sdTitleString_1118675572"
		 DEFAULT  'Insert Title here.'
	CONSTRAINT "CK_dString_sdTitleString_1135125108"
		CHECK  ( CustomerContactTitle != '' ),
	"CustomerAddress"    "Address"  NOT NULL 
	CONSTRAINT "DF_dString_sdAddressString_Address_357386616"
		 DEFAULT  'Insert Address here.'
	CONSTRAINT "CK_dString_sdAddressString_420208054"
		CHECK  ( CustomerAddress != '' ),
	"CustomerCity"       "Udt"."City"  NOT NULL 
	CONSTRAINT "DF_dString_sdAddressString_City_212945018"
		 DEFAULT  'City.'
	CONSTRAINT "CK_dString_sdAddressString_1580644648"
		CHECK  ( CustomerCity != '' ),
	"CustomerRegion"     "Udt"."Region"  NULL 
	CONSTRAINT "DF_dString_sdAddressString_Region_1131142539"
		 DEFAULT  'Region.'
	CONSTRAINT "CK_dString_sdAddressString_1558464800"
		CHECK  ( CustomerRegion != '' ),
	"CustomerPostalCode" "Udt"."PostalCode"  NULL 
	CONSTRAINT "DF_dString_sdAddressString_PostalCode_221945672"
		 DEFAULT  'Post Code.'
	CONSTRAINT "CK_dString_sdAddressString_142014886"
		CHECK  ( CustomerPostalCode != '' ),
	"CustomerCountry"    "Udt"."Country"  NOT NULL 
	CONSTRAINT "DF_dString_sdAddressString_Country_254100304"
		 DEFAULT  'Country.'
	CONSTRAINT "CK_dString_sdAddressString_589486535"
		CHECK  ( CustomerCountry != '' ),
	"CustomerPhoneNumber" "Udt"."TelephoneNumber"  NOT NULL 
	CONSTRAINT "CK_dString_sdNumberString_882607792"
		CHECK  ( ISNUMERIC(CustomerPhoneNumber) = 1 ),
	"CustomerFaxNumber"  "Udt"."TelephoneNumber"  NULL 
	CONSTRAINT "CK_dString_sdNumberString_637270981"
		CHECK  ( ISNUMERIC(CustomerFaxNumber) = 1 ),
	"UserAuthorizationId" "Udt"."SurrogateKeyInt" ,
	"DateAdded"          "Udt"."TimeStampNow" 
	CONSTRAINT "DF_dDatetime_sdNanosecondPreciseDatetime_TimeStampNow_1523986443"
		 DEFAULT  sysdatetime()
	CONSTRAINT "CK_SarbanesOxleyRetentionPeriod_1640815347"
		CHECK  ( DATEDIFF(year, DateAdded, sysdatetime()) < 7 ),
	"DateOfLastUpdate"   "Udt"."TimeStampNow" 
	CONSTRAINT "DF_dDatetime_sdNanosecondPreciseDatetime_TimeStampNow_1943778923"
		 DEFAULT  sysdatetime()
	CONSTRAINT "CK_SarbanesOxleyRetentionPeriod_1212328357"
		CHECK  ( DATEDIFF(year, DateOfLastUpdate, sysdatetime()) < 7 )
)
go

CREATE TABLE "HumanResources"."Employee"
( 
	"EmployeeId"         "Udt"."SurrogateKeyInt"  IDENTITY ( 1,1 )  NOT NULL ,
	"EmployeeLastName"   "Udt"."LastName"  NOT NULL 
	CONSTRAINT "DF_dString_sdNameString_sdPersonName_LastName_1762977878"
		 DEFAULT  'Last Name'
	CONSTRAINT "CK_dString_sdNameString_1640183814"
		CHECK  ( EmployeeLastName != '' ),
	"EmployeeFirstName"  "Udt"."FirstName"  NOT NULL 
	CONSTRAINT "DF_dString_sdNameString_sdPersonName_FirstName_669568246"
		 DEFAULT  'First Name'
	CONSTRAINT "CK_dString_sdNameString_1430407438"
		CHECK  ( EmployeeFirstName != '' ),
	"EmployeeTitle"      "EmployeeTitle"  NOT NULL 
	CONSTRAINT "DF_dString_sdTitleString_2140836684"
		 DEFAULT  'Insert Title here.'
	CONSTRAINT "CK_dString_sdTitleString_2137681076"
		CHECK  ( EmployeeTitle != '' ),
	"EmployeeTitleOfCourtesy" "Udt"."TitleOfCourtesy"  NOT NULL 
	CONSTRAINT "DF_dString_sdTitleString_289262595"
		 DEFAULT  'Insert Title here.'
	CONSTRAINT "CK_dString_sdTitleString_TitleOfCourtesy_1814991415"
		CHECK  ( [EmployeeTitleOfCourtesy]='Mr.' OR [EmployeeTitleOfCourtesy]='Ms.' OR [EmployeeTitleOfCourtesy]='Mx.' OR [EmployeeTitleOfCourtesy]='Mrs.' OR [EmployeeTitleOfCourtesy]='Dr.' OR [EmployeeTitleOfCourtesy]='Other' ),
	"BirthDate"          "Udt"."DateYYYYMMDD"  NOT NULL 
	CONSTRAINT "DF_dDatetime_sdDateDatetime_BirthDate"
		 DEFAULT  '19000101',
	"HireDate"           "Udt"."DateYYYYMMDD"  NOT NULL 
	CONSTRAINT "DF_dDatetime_sdDateDatetime_926249839"
		 DEFAULT  '19000101',
	"EmployeeAddress"    "Address"  NOT NULL 
	CONSTRAINT "DF_dString_sdAddressString_Address_223572852"
		 DEFAULT  'Insert Address here.'
	CONSTRAINT "CK_dString_sdAddressString_554021818"
		CHECK  ( EmployeeAddress != '' ),
	"EmployeeCity"       "Udt"."City"  NULL 
	CONSTRAINT "DF_dString_sdAddressString_City_491433869"
		 DEFAULT  'City.'
	CONSTRAINT "CK_dString_sdAddressString_1684059424"
		CHECK  ( EmployeeCity != '' ),
	"EmployeeRegion"     "Udt"."Region"  NULL 
	CONSTRAINT "DF_dString_sdAddressString_Region_426763653"
		 DEFAULT  'Region.'
	CONSTRAINT "CK_dString_sdAddressString_1490833226"
		CHECK  ( EmployeeRegion != '' ),
	"EmployeePostalCode" "Udt"."PostalCode"  NULL 
	CONSTRAINT "DF_dString_sdAddressString_PostalCode_482433215"
		 DEFAULT  'Post Code.'
	CONSTRAINT "CK_dString_sdAddressString_74383312"
		CHECK  ( EmployeePostalCode != '' ),
	"EmployeeCountry"    "Udt"."Country"  NOT NULL 
	CONSTRAINT "DF_dString_sdAddressString_Country_120286540"
		 DEFAULT  'Country.'
	CONSTRAINT "CK_dString_sdAddressString_723300299"
		CHECK  ( EmployeeCountry != '' ),
	"EmployeePhoneNumber" "Udt"."TelephoneNumber"  NOT NULL 
	CONSTRAINT "CK_dString_sdNumberString_814976218"
		CHECK  ( ISNUMERIC(EmployeePhoneNumber) = 1 ),
	"EmployeeManagerId"  "Udt"."SurrogateKeyInt"  NULL ,
	"UserAuthorizationId" "Udt"."SurrogateKeyInt" ,
	"DateAdded"          "Udt"."TimeStampNow" 
	CONSTRAINT "DF_dDatetime_sdNanosecondPreciseDatetime_TimeStampNow_1575693831"
		 DEFAULT  sysdatetime()
	CONSTRAINT "CK_SarbanesOxleyRetentionPeriod_1674631134"
		CHECK  ( DATEDIFF(year, DateAdded, sysdatetime()) < 7 ),
	"DateOfLastUpdate"   "Udt"."TimeStampNow" 
	CONSTRAINT "DF_dDatetime_sdNanosecondPreciseDatetime_TimeStampNow_2010685805"
		 DEFAULT  sysdatetime()
	CONSTRAINT "CK_SarbanesOxleyRetentionPeriod_860138914"
		CHECK  ( DATEDIFF(year, DateOfLastUpdate, sysdatetime()) < 7 )
)
go

ALTER TABLE "HumanResources"."Employee"
	 WITH CHECK ADD CONSTRAINT "CK_BirthDate" CHECK  ( BirthDate <= CONVERT([date],sysdatetime()) )
go

CREATE TABLE "Triggered"."Employee"
( 
	"EmployeeId"         "Udt"."SurrogateKeyInt"  NOT NULL ,
	"EmployeeFullName"   "FullName"  NOT NULL 
	CONSTRAINT "CK_dString_sdNameString_1774789645"
		CHECK  ( EmployeeFullName != '' ),
	"Department"         "DepartmentName"  NOT NULL 
	CONSTRAINT "DF_dString_sdNameString_sdBusinessNameString_DepartmentName_106009156"
		 DEFAULT  'Department Name'
	CONSTRAINT "CK_dString_sdNameString_1441517640"
		CHECK  ( Department != '' ),
	"Salary"             "Udt"."Currency"  NOT NULL 
	CONSTRAINT "DF_dNumber_sdMoneyNumber_Currency_867051452"
		 DEFAULT  0.000
	CONSTRAINT "CK_dNumber_sdMoneyNumber_Currency_950937531"
		CHECK  ( Salary >= 0.000 ),
	"Notes"              "Udt"."Note"  NOT NULL 
	CONSTRAINT "DF_dString_sdDescriptionString_Note_1043735331"
		 DEFAULT  'Insert Note here.'
	CONSTRAINT "CK_dString_sdDescriptionString_426989933"
		CHECK  ( LEN(Notes) > 10 ),
	"IsDeleted"          "Udt"."IsDeletion"  NULL 
	CONSTRAINT "DF_Triggered_IsDeleted_1582823990"
		 DEFAULT  'N',
	"TransactionNumber"  "Udt"."SequenceNumber"  NULL ,
	"UserAuthenticatedKey" "Udt"."SurrogateKeyInt"  NULL 
	CONSTRAINT "DF_Employee_UserAuthenticatedKey"
		 DEFAULT  37,
	"SysStartTime"       "Udt"."TimeStampNow"  NULL ,
	"SysEndTime"         "Udt"."TimeStampNow"  NULL ,
	"TimestampRowChanged" "Udt"."TimeStampNow"  NULL ,
	"UserAuthorizationId" "Udt"."SurrogateKeyInt" ,
	"DateAdded"          "Udt"."TimeStampNow" 
	CONSTRAINT "DF_sdDatetime_sdNanosecondPreciseDatetime_TimeStampNow_1456790531"
		 DEFAULT  sysdatetime(),
	"DateOfLastUpdate"   "Udt"."TimeStampNow" 
	CONSTRAINT "DF_dDatetime_sdNanosecondPreciseDatetime_TimeStampNow_2010685805"
		 DEFAULT  sysdatetime()
)
go

CREATE TABLE "dbo"."Nums"
( 
	"N"                  "Udt"."SurrogateKeyInt"  NOT NULL 
)
go

CREATE TABLE "Sales"."Order"
( 
	"OrderId"            "Udt"."SurrogateKeyInt"  IDENTITY ( 1,1 )  NOT NULL ,
	"CustomerId"         "Udt"."SurrogateKeyInt"  NOT NULL ,
	"EmployeeId"         "Udt"."SurrogateKeyInt"  NOT NULL ,
	"ShipperId"          "Udt"."SurrogateKeyInt"  NOT NULL ,
	"OrderDate"          "Udt"."DateYYYYMMDD"  NOT NULL 
	CONSTRAINT "DF_dDatetime_sdDateDatetime_979106192"
		 DEFAULT  '19000101',
	"RequiredDate"       "Udt"."DateYYYYMMDD"  NOT NULL 
	CONSTRAINT "DF_dDatetime_sdDateDatetime_754677894"
		 DEFAULT  '19000101',
	"ShipToDate"         "Udt"."DateYYYYMMDD"  NULL 
	CONSTRAINT "DF_dDatetime_sdDateDatetime_845386141"
		 DEFAULT  '19000101',
	"Freight"            "Udt"."Currency"  NOT NULL 
	CONSTRAINT "DFT_Orders_freight"
		 DEFAULT  0
	CONSTRAINT "CK_dNumber_sdMoneyNumber_Currency_628270500"
		CHECK  ( Freight >= 0.000 ),
	"ShipToName"         "Udt"."ContactName"  NOT NULL 
	CONSTRAINT "DF_dString_sdNameString_sdPersonName_ContactName_1392155742"
		 DEFAULT  'Contact Name'
	CONSTRAINT "CK_dString_sdNameString_1034564875"
		CHECK  ( ShipToName != '' ),
	"ShipToAddress"      "Address"  NOT NULL 
	CONSTRAINT "DF_dString_sdAddressString_Address_1461396722"
		 DEFAULT  'Insert Address here.'
	CONSTRAINT "CK_dString_sdAddressString_2055975905"
		CHECK  ( ShipToAddress != '' ),
	"ShipToCity"         "Udt"."City"  NOT NULL 
	CONSTRAINT "DF_dString_sdAddressString_City_2065347810"
		 DEFAULT  'City.'
	CONSTRAINT "CK_dString_sdAddressString_171421765"
		CHECK  ( ShipToCity != '' ),
	"ShipToRegion"       "Udt"."Region"  NULL 
	CONSTRAINT "DF_dString_sdAddressString_Region_1311421965"
		 DEFAULT  'Region.'
	CONSTRAINT "CK_dString_sdAddressString_210247503"
		CHECK  ( ShipToRegion != '' ),
	"ShipToPostalCode"   "Udt"."PostalCode"  NULL 
	CONSTRAINT "DF_dString_sdAddressString_PostalCode_2074348464"
		 DEFAULT  'Post Code.'
	CONSTRAINT "CK_dString_sdAddressString_1626697417"
		CHECK  ( ShipToPostalCode != '' ),
	"ShipToCountry"      "Udt"."Country"  NOT NULL 
	CONSTRAINT "DF_dString_sdAddressString_Country_1564683034"
		 DEFAULT  'Country.'
	CONSTRAINT "CK_dString_sdAddressString_1886697424"
		CHECK  ( ShipToCountry != '' ),
	"UserAuthenticationId" "Udt"."SurrogateKeyInt"  NOT NULL ,
	"DateAdded"          "Udt"."TimeStampNow"  NULL 
	CONSTRAINT "DF_dDatetime_sdNanosecondPreciseDatetime_TimeStampNow_839159671"
		 DEFAULT  sysdatetime()
	CONSTRAINT "CK_SarbanesOxleyRetentionPeriod_558786510"
		CHECK  ( DATEDIFF(year, DateAdded, sysdatetime()) < 7 ),
	"DateOfLastUpdate"   "Udt"."TimeStampNow"  NULL 
	CONSTRAINT "DF_dDatetime_sdNanosecondPreciseDatetime_TimeStampNow_177696470"
		 DEFAULT  sysdatetime()
	CONSTRAINT "CK_SarbanesOxleyRetentionPeriod_587344690"
		CHECK  ( DATEDIFF(year, DateOfLastUpdate, sysdatetime()) < 7 )
)
go

CREATE TABLE "Sales"."OrderDetail"
( 
	"OrderId"            "Udt"."SurrogateKeyInt"  NOT NULL ,
	"ProductId"          "Udt"."SurrogateKeyInt"  NOT NULL ,
	"UnitPrice"          "Udt"."Currency"  NOT NULL 
	CONSTRAINT "DFT_OrderDetails_UnitPrice"
		 DEFAULT  0
	CONSTRAINT "CK_Product_UnitPrice_34273099"
		CHECK  ( UnitPrice >= 0 ),
	"Quantity"           "Udt"."QuantitySmall"  NOT NULL 
	CONSTRAINT "DFT_OrderDetails_Quantity"
		 DEFAULT  1,
	"DiscountPercentage" "Udt"."Percentage"  NOT NULL 
	CONSTRAINT "DFT_OrderDetails_DiscountPercentage"
		 DEFAULT  0
	CONSTRAINT "CK_DiscountPercentage"
		CHECK  ( DiscountPercentage BETWEEN 0 AND 1 ),
	"DateAdded"          "Udt"."TimeStampNow" 
	CONSTRAINT "DF_dDatetime_sdNanosecondPreciseDatetime_TimeStampNow_327616715"
		 DEFAULT  sysdatetime()
	CONSTRAINT "CK_SarbanesOxleyRetentionPeriod_1995627966"
		CHECK  ( DATEDIFF(year, DateAdded, sysdatetime()) < 7 ),
	"DateOfLastUpdate"   "Udt"."TimeStampNow" 
	CONSTRAINT "DF_dDatetime_sdNanosecondPreciseDatetime_TimeStampNow_1272773230"
		 DEFAULT  sysdatetime()
	CONSTRAINT "CK_SarbanesOxleyRetentionPeriod_1754666516"
		CHECK  ( DATEDIFF(year, DateOfLastUpdate, sysdatetime()) < 7 ),
	"UserAuthorizationId" "Udt"."SurrogateKeyInt" 
)
go

ALTER TABLE "Sales"."OrderDetail"
	 WITH CHECK ADD CONSTRAINT "CK_Quantity" CHECK  ( Quantity >= 0 )
go

CREATE TABLE "Production"."Product"
( 
	"ProductId"          "Udt"."SurrogateKeyInt"  IDENTITY ( 1,1 )  NOT NULL ,
	"ProductName"        "Udt"."ProductName"  NOT NULL 
	CONSTRAINT "DF_dString_sdNameString_sdBusinessNameString_ProductName_469072896"
		 DEFAULT  'Product Name'
	CONSTRAINT "CK_dString_sdNameString_1070515063"
		CHECK  ( ProductName != '' ),
	"SupplierId"         "Udt"."SurrogateKeyInt"  NOT NULL ,
	"CategoryId"         "Udt"."SurrogateKeyInt"  NOT NULL ,
	"UnitPrice"          "Udt"."Currency"  NOT NULL 
	CONSTRAINT "DFT_Products_unitprice"
		 DEFAULT  0,
	"Discontinued"       "Udt"."FlagBit"  NOT NULL 
	CONSTRAINT "DFT_Products_Discontinued"
		 DEFAULT  0
	CONSTRAINT "CK_dNumber_sdIntegerNumber_sdPositiveIntegerNumber_FlagBit_792257007"
		CHECK  ( [Discontinued]=0 OR [Discontinued]=1 ),
	"UserAuthorizationId" "Udt"."SurrogateKeyInt" ,
	"DateAdded"          "Udt"."TimeStampNow" 
	CONSTRAINT "DF_dDatetime_sdNanosecondPreciseDatetime_TimeStampNow_1574534696"
		 DEFAULT  sysdatetime()
	CONSTRAINT "CK_SarbanesOxleyRetentionPeriod_330291184"
		CHECK  ( DATEDIFF(year, DateAdded, sysdatetime()) < 7 ),
	"DateOfLastUpdate"   "Udt"."TimeStampNow" 
	CONSTRAINT "DF_dDatetime_sdNanosecondPreciseDatetime_TimeStampNow_1457042205"
		 DEFAULT  sysdatetime()
	CONSTRAINT "CK_SarbanesOxleyRetentionPeriod_1156877474"
		CHECK  ( DATEDIFF(year, DateOfLastUpdate, sysdatetime()) < 7 )
)
go

ALTER TABLE "Production"."Product"
	 WITH CHECK ADD CONSTRAINT "CHK_Products_unitprice" CHECK  ( UnitPrice >= 0 )
go

CREATE TABLE "Sales"."Shipper"
( 
	"ShipperId"          "Udt"."SurrogateKeyInt"  IDENTITY ( 1,1 )  NOT NULL ,
	"ShipperCompanyName" "Udt"."CompanyName"  NOT NULL 
	CONSTRAINT "DF_dString_sdNameString_sdBusinessNameString_CompanyName_107283775"
		 DEFAULT  'Company Name'
	CONSTRAINT "CK_dString_sdNameString_23033363"
		CHECK  ( ShipperCompanyName != '' ),
	"PhoneNumber"        "Udt"."TelephoneNumber"  NOT NULL 
	CONSTRAINT "CK_dString_sdNumberString_698182306"
		CHECK  ( ISNUMERIC(PhoneNumber) = 1 ),
	"UserAuthorizationId" "Udt"."SurrogateKeyInt"  NOT NULL ,
	"DateAdded"          "Udt"."TimeStampNow" 
	CONSTRAINT "DF_dDatetime_sdNanosecondPreciseDatetime_TimeStampNow_1709273642"
		 DEFAULT  sysdatetime()
	CONSTRAINT "CK_SarbanesOxleyRetentionPeriod_531484648"
		CHECK  ( DATEDIFF(year, DateAdded, sysdatetime()) < 7 ),
	"DateOfLastUpdate"   "Udt"."TimeStampNow" 
	CONSTRAINT "DF_dDatetime_sdNanosecondPreciseDatetime_TimeStampNow_1422961449"
		 DEFAULT  sysdatetime()
	CONSTRAINT "CK_SarbanesOxleyRetentionPeriod_1023445658"
		CHECK  ( DATEDIFF(year, DateOfLastUpdate, sysdatetime()) < 7 )
)
go

CREATE TABLE "Production"."Supplier"
( 
	"SupplierId"         "Udt"."SurrogateKeyInt"  IDENTITY ( 1,1 )  NOT NULL ,
	"SupplierCompanyName" "Udt"."CompanyName"  NOT NULL 
	CONSTRAINT "DF_dString_sdNameString_sdBusinessNameString_CompanyName_365855708"
		 DEFAULT  'Company Name'
	CONSTRAINT "CK_dString_sdNameString_415022455"
		CHECK  ( SupplierCompanyName != '' ),
	"SupplierContactName" "Udt"."ContactName"  NOT NULL 
	CONSTRAINT "DF_dString_sdNameString_sdPersonName_ContactName_402119157"
		 DEFAULT  'Contact Name'
	CONSTRAINT "CK_dString_sdNameString_348175724"
		CHECK  ( SupplierContactName != '' ),
	"SupplierContactTitle" "Udt"."ContactTitle"  NOT NULL 
	CONSTRAINT "DF_dString_sdTitleString_682993788"
		 DEFAULT  'Insert Title here.'
	CONSTRAINT "CK_dString_sdTitleString_699443324"
		CHECK  ( SupplierContactTitle != '' ),
	"SupplierAddress"    "Address"  NOT NULL 
	CONSTRAINT "DF_dString_sdAddressString_Address_491999582"
		 DEFAULT  'Insert Address here.'
	CONSTRAINT "CK_dString_sdAddressString_285595088"
		CHECK  ( SupplierAddress != '' ),
	"SupplierCity"       "Udt"."City"  NOT NULL 
	CONSTRAINT "DF_dString_sdAddressString_City_80429172"
		 DEFAULT  'City.'
	CONSTRAINT "CK_dString_sdAddressString_1681825584"
		CHECK  ( SupplierCity != '' ),
	"SupplierRegion"     "Udt"."Region"  NULL 
	CONSTRAINT "DF_dString_sdAddressString_Region_998626693"
		 DEFAULT  'Region.'
	CONSTRAINT "CK_dString_sdAddressString_1122783016"
		CHECK  ( SupplierRegion != '' ),
	"SupplierPostalCode" "Udt"."PostalCode"  NULL 
	CONSTRAINT "DF_dString_sdAddressString_PostalCode_89429826"
		 DEFAULT  'Post Code.'
	CONSTRAINT "CK_dString_sdAddressString_293666899"
		CHECK  ( SupplierPostalCode != '' ),
	"SupplierCountry"    "Udt"."Country"  NOT NULL 
	CONSTRAINT "DF_dString_sdAddressString_Country_388713270"
		 DEFAULT  'Country.'
	CONSTRAINT "CK_dString_sdAddressString_454873569"
		CHECK  ( SupplierCountry != '' ),
	"SupplierPhoneNumber" "Udt"."TelephoneNumber"  NOT NULL 
	CONSTRAINT "CK_dString_sdNumberString_446926008"
		CHECK  ( ISNUMERIC(SupplierPhoneNumber) = 1 ),
	"SupplierFaxNumber"  "Udt"."TelephoneNumber"  NULL 
	CONSTRAINT "CK_dString_sdNumberString_738451917"
		CHECK  ( ISNUMERIC(SupplierFaxNumber) = 1 ),
	"UserAuthorizationId" "Udt"."SurrogateKeyInt"  NOT NULL ,
	"DateAdded"          "Udt"."TimeStampNow" 
	CONSTRAINT "DF_dDatetime_sdNanosecondPreciseDatetime_TimeStampNow_1574576911"
		 DEFAULT  sysdatetime()
	CONSTRAINT "CK_SarbanesOxleyRetentionPeriod_1858656239"
		CHECK  ( DATEDIFF(year, DateAdded, sysdatetime()) < 7 ),
	"DateOfLastUpdate"   "Udt"."TimeStampNow" 
	CONSTRAINT "DF_dDatetime_sdNanosecondPreciseDatetime_TimeStampNow_1876472440"
		 DEFAULT  sysdatetime()
	CONSTRAINT "CK_SarbanesOxleyRetentionPeriod_1146070434"
		CHECK  ( DATEDIFF(year, DateOfLastUpdate, sysdatetime()) < 7 )
)
go

CREATE TABLE "DbSecurity"."UserAuthorization"
( 
	"UserAuthorizationId" "Udt"."SurrogateKeyInt" ,
	"ClassTime"          "hh:mmTime" 
	CONSTRAINT "DF_UserAuthorization_ClassTime"
		 DEFAULT  '09:15'
	CONSTRAINT "CK_dString_sdDatetimeString_hh:mmTime_298665147"
		CHECK  ( TRY_CONVERT(time, ClassTime) IS NOT NULL ),
	"IndividualProject"  "MediumDescription" 
	CONSTRAINT "DF_UserAuthorization_IndividualProject_1563001659"
		 DEFAULT  'CSCI381 Midterm Project'
	CONSTRAINT "CK_dString_sdDescriptionString_1825660518"
		CHECK  ( LEN(IndividualProject) > 10 ),
	"GroupMemberLastName" "Udt"."LastName"  NOT NULL 
	CONSTRAINT "DF_dString_sdNameString_sdPersonName_LastName_1290698759"
		 DEFAULT  'Last Name'
	CONSTRAINT "CK_dString_sdNameString_109831201"
		CHECK  ( GroupMemberLastName != '' ),
	"GroupMemberFirstName" "Udt"."FirstName"  NOT NULL 
	CONSTRAINT "DF_dString_sdNameString_sdPersonName_FirstName_1080446769"
		 DEFAULT  'First Name'
	CONSTRAINT "CK_dString_sdNameString_103162534"
		CHECK  ( GroupMemberFirstName != '' ),
	"GroupName"          "GroupName"  NOT NULL 
	CONSTRAINT "CK_dString_sdNameString_228969767"
		CHECK  ( GroupName != '' ),
	"DateAdded"          "Udt"."TimeStampNow" 
	CONSTRAINT "DF_dDatetime_sdNanosecondPreciseDatetime_TimeStampNow_1860637505"
		 DEFAULT  sysdatetime()
	CONSTRAINT "CK_SarbanesOxleyRetentionPeriod_2123810530"
		CHECK  ( DATEDIFF(year, DateAdded, sysdatetime()) < 7 ),
	"DateOfLastUpdate"   "Udt"."TimeStampNow" 
	CONSTRAINT "DF_dDatetime_sdNanosecondPreciseDatetime_TimeStampNow_1036494216"
		 DEFAULT  sysdatetime()
	CONSTRAINT "CK_SarbanesOxleyRetentionPeriod_929002385"
		CHECK  ( DATEDIFF(year, DateOfLastUpdate, sysdatetime()) < 7 )
)
go

CREATE TABLE "Audit"."VersionedEmployeeHistory"
( 
	"EmployeeId"         "Udt"."SurrogateKeyInt"  NOT NULL ,
	"EmployeeFullName"   "FullName"  NOT NULL ,
	"Department"         "DepartmentName"  NOT NULL ,
	"Salary"             "Udt"."Currency"  NOT NULL ,
	"Notes"              "Udt"."Note"  NOT NULL ,
	"SysStart"           "Udt"."TimeStampNow"  NOT NULL ,
	"SysEnd"             "Udt"."TimeStampNow"  NOT NULL ,
	"UserAuthorizationId" "Udt"."SurrogateKeyInt" ,
	"DateAdded"          "Udt"."TimeStampNow" ,
	"DateOfLastUpdate"   "Udt"."TimeStampNow" 
)
go

ALTER TABLE "Triggered"."AuditTriggeredEmployeeHistory"
	ADD CONSTRAINT "PK_TriggeredEmployeeHistoryId" PRIMARY KEY  NONCLUSTERED ("TriggeredEmployeeHistoryId" ASC)
go

CREATE UNIQUE CLUSTERED INDEX "ix_Employees" ON "Triggered"."AuditTriggeredEmployeeHistory"
( 
	"EmployeeId"          ASC,
	"SysStartTime"        ASC,
	"SysEndTime"          ASC,
	"TriggeredEmployeeHistoryId"  ASC
)
go

ALTER TABLE "Production"."Category"
	ADD CONSTRAINT "PK_Categories" PRIMARY KEY  CLUSTERED ("CategoryId" ASC)
go

ALTER TABLE "Production"."Category"
	ADD CONSTRAINT "XAK1Category" UNIQUE ("CategoryName"  ASC)
go

ALTER TABLE "Sales"."Customer"
	ADD CONSTRAINT "PK_Customers" PRIMARY KEY  CLUSTERED ("CustomerId" ASC)
go

ALTER TABLE "Sales"."Customer"
	ADD CONSTRAINT "XAK1Customer" UNIQUE ("CustomerContactName"  ASC,"CustomerPhoneNumber"  ASC,"CustomerAddress"  ASC)
go

ALTER TABLE "HumanResources"."Employee"
	ADD CONSTRAINT "PK_Employees" PRIMARY KEY  CLUSTERED ("EmployeeId" ASC)
go

ALTER TABLE "HumanResources"."Employee"
	ADD CONSTRAINT "XAK1Employee" UNIQUE ("EmployeeLastName"  ASC,"EmployeeFirstName"  ASC,"EmployeePhoneNumber"  ASC,"EmployeeAddress"  ASC)
go

CREATE TABLE "SystemVersioned"."Employee"
( 
	"EmployeeId"         "Udt"."SurrogateKeyInt"  NOT NULL ,
	"EmployeeFullName"   "FullName"  NOT NULL 
	CONSTRAINT "CK_dString_sdNameString_1774789645"
		CHECK  ( EmployeeFullName != '' ),
	"Department"         "DepartmentName"  NOT NULL 
	CONSTRAINT "DF_dString_sdNameString_sdBusinessNameString_DepartmentName_106009156"
		 DEFAULT  'Department Name'
	CONSTRAINT "CK_dString_sdNameString_1441517640"
		CHECK  ( Department != '' ),
	"Salary"             "Udt"."Currency"  NOT NULL 
	CONSTRAINT "DF_dNumber_sdMoneyNumber_Currency_867051452"
		 DEFAULT  0.000
	CONSTRAINT "CK_dNumber_sdMoneyNumber_Currency_950937531"
		CHECK  ( Salary >= 0.000 ),
	"Notes"              "Udt"."Note"  NOT NULL 
	CONSTRAINT "DF_dString_sdDescriptionString_Note_1043735331"
		 DEFAULT  'Insert Note here.'
	CONSTRAINT "CK_dString_sdDescriptionString_426989933"
		CHECK  ( LEN(Notes) > 10 ),
	"SysStart"           "Udt"."TimeStampNow"  GENERATED ALWAYS AS ROW START HIDDEN  NOT NULL 
	CONSTRAINT "DFT_Employees_SysStart_1381642475"
		 DEFAULT  '19000101',
	"SysEnd"             "Udt"."TimeStampNow"  GENERATED ALWAYS AS ROW END HIDDEN  NOT NULL 
	CONSTRAINT "DFT_Employees_SysEnd_686383827"
		 DEFAULT  '99991231 23:59:59',
	"UserAuthorizationId" "Udt"."SurrogateKeyInt" ,
	"DateAdded"          "Udt"."TimeStampNow" 
	CONSTRAINT "DF_dDatetime_sdNanosecondPreciseDatetime_TimeStampNow_1575693831"
		 DEFAULT  sysdatetime(),
	"DateOfLastUpdate"   "Udt"."TimeStampNow" 
	CONSTRAINT "DF_dDatetime_sdNanosecondPreciseDatetime_TimeStampNow_2010685805"
		 DEFAULT  sysdatetime(),
	CONSTRAINT "PK_EmployeeVersioned" PRIMARY KEY  NONCLUSTERED ("EmployeeId" ASC),
	PERIOD FOR SYSTEM_TIME (SysStart,SysEnd)
)
WITH 
(
	SYSTEM_VERSIONING = ON (HISTORY_TABLE = [Audit].[VersionedEmployeeHistory], DATA_CONSISTENCY_CHECK = OFF)
)
go

CREATE NONCLUSTERED INDEX "XIE1Employee" ON "SystemVersioned"."Employee"
( 
	"SysEnd"              ASC,
	"SysStart"            ASC
)
go

ALTER TABLE "Triggered"."Employee"
	ADD CONSTRAINT "PK_TriggeredEmployee" PRIMARY KEY  NONCLUSTERED ("EmployeeId" ASC)
go

CREATE CLUSTERED INDEX "ix_Employees" ON "Triggered"."Employee"
( 
	"EmployeeId"          ASC,
	"SysStartTime"        ASC,
	"SysEndTime"          ASC
)
go

ALTER TABLE "dbo"."Nums"
	ADD CONSTRAINT "PK_Nums" PRIMARY KEY  CLUSTERED ("N" ASC)
go

ALTER TABLE "Sales"."Order"
	ADD CONSTRAINT "PK_Orders" PRIMARY KEY  CLUSTERED ("OrderId" ASC)
go

ALTER TABLE "Sales"."Order"
	ADD CONSTRAINT "XAK1Order" UNIQUE ("CustomerId"  ASC,"DateAdded"  ASC)
go

ALTER TABLE "Sales"."OrderDetail"
	ADD CONSTRAINT "PK_OrderDetails" PRIMARY KEY  CLUSTERED ("OrderId" ASC,"ProductId" ASC)
go

ALTER TABLE "Production"."Product"
	ADD CONSTRAINT "PK_Products" PRIMARY KEY  CLUSTERED ("ProductId" ASC)
go

ALTER TABLE "Production"."Product"
	ADD CONSTRAINT "XAK1Product" UNIQUE ("ProductName"  ASC,"CategoryId"  ASC)
go

ALTER TABLE "Sales"."Shipper"
	ADD CONSTRAINT "PK_Shippers" PRIMARY KEY  CLUSTERED ("ShipperId" ASC)
go

ALTER TABLE "Sales"."Shipper"
	ADD CONSTRAINT "XAK1Shipper" UNIQUE ("ShipperCompanyName"  ASC,"PhoneNumber"  ASC)
go

ALTER TABLE "Production"."Supplier"
	ADD CONSTRAINT "PK_Suppliers" PRIMARY KEY  CLUSTERED ("SupplierId" ASC)
go

ALTER TABLE "Production"."Supplier"
	ADD CONSTRAINT "XAK1Supplier" UNIQUE ("SupplierCompanyName"  ASC,"SupplierPhoneNumber"  ASC)
go

ALTER TABLE "DbSecurity"."UserAuthorization"
	ADD CONSTRAINT "XPKUserAuthorization" PRIMARY KEY  CLUSTERED ("UserAuthorizationId" ASC)
go

ALTER TABLE "DbSecurity"."UserAuthorization"
	ADD CONSTRAINT "XAK1UserAuthorization" UNIQUE ("GroupName"  ASC)
go

CREATE VIEW "JsonOutput"."uvw_HumanResourcesEmployee"("EmployeeObjectId","EmployeeLastName","EmployeeFirstName","EmployeeTitle","EmployeeTitleOfCourtesy","BirthDate","HireDate","EmployeeAddress","EmployeeCity","EmployeeRegion","EmployeePostalCode","EmployeeCountry","EmployeePhoneNumber","EmployeeManagerId")
AS
SELECT E."EmployeeId",E."EmployeeLastName",E."EmployeeFirstName",E."EmployeeTitle",E."EmployeeTitleOfCourtesy",E."BirthDate",E."HireDate",E."EmployeeAddress",E."EmployeeCity",E."EmployeeRegion",E."EmployeePostalCode",E."EmployeeCountry",E."EmployeePhoneNumber",E."EmployeeManagerId"
	FROM "HumanResources"."Employee" E
go

CREATE VIEW "JsonOutput"."uvw_ProductionCategory"("CategoryObjectId","CategoryName","Description")
AS
SELECT "Production"."Category"."CategoryId","Production"."Category"."CategoryName","Production"."Category"."Description"
	FROM "Production"."Category"
go

CREATE VIEW "JsonOutput"."uvw_ProductionSupplier"("SupplierObjectId","SupplierCompanyName","SupplierContactName","SupplierContactTitle","SupplierAddress","SupplierCity","SupplierRegion","SupplierPostalCode","SupplierCountry","SupplierPhoneNumber","SupplierFaxNumber")
AS
SELECT S."SupplierId",S."SupplierCompanyName",S."SupplierContactName",S."SupplierContactTitle",S."SupplierAddress",S."SupplierCity",S."SupplierRegion",S."SupplierPostalCode",S."SupplierCountry",S."SupplierPhoneNumber",S."SupplierFaxNumber"
	FROM "Production"."Supplier" S
go

CREATE VIEW "JsonOutput"."uvw_SalesCustomer"("CustomerObjectId","CustomerCompanyName","CustomerContactName","CustomerContactTitle","CustomerAddress","CustomerCity","CustomerRegion","CustomerPostalCode","CustomerCountry","CustomerPhoneNumber","CustomerFaxNumber")
AS
SELECT C."CustomerId",C."CustomerCompanyName",C."CustomerContactName",C."CustomerContactTitle",C."CustomerAddress",C."CustomerCity",C."CustomerRegion",C."CustomerPostalCode",C."CustomerCountry",C."CustomerPhoneNumber",C."CustomerFaxNumber"
	FROM "Sales"."Customer" C
go

CREATE VIEW "JsonOutput"."uvw_SalesShipper"("ShipperObjectId","ShipperCompanyName","PhoneNumber")
AS
SELECT S."ShipperId",S."ShipperCompanyName",S."PhoneNumber"
	FROM "Sales"."Shipper" S
go

CREATE VIEW "JsonOutput"."uvw_Order"("OrderId","CustomerId","EmployeeId","ShipperId","OrderDate","RequiredDate","ShipToDate","Freight","ShipToName","ShipToAddress","ShipToCity","ShipToRegion","ShipToPostalCode","ShipToCountry")
AS
SELECT O."OrderId",O."CustomerId",O."EmployeeId",O."ShipperId",O."OrderDate",O."RequiredDate",O."ShipToDate",O."Freight",O."ShipToName",O."ShipToAddress",O."ShipToCity",O."ShipToRegion",O."ShipToPostalCode",O."ShipToCountry"
	FROM "Sales"."Order" O
go

CREATE VIEW "JsonOutput"."uvw_OrderDetail"("OrderId","ProductId","UnitPrice","Quantity","DiscountPercentage")
AS
SELECT OD."OrderId",OD."ProductId",OD."UnitPrice",OD."Quantity",OD."DiscountPercentage"
	FROM "Sales"."OrderDetail" OD
go

CREATE VIEW [Utils].[uvw_FindColumnDefinitionPlusDefaultAndCheckConstraint] AS  SELECT  concat( tbl.TABLE_SCHEMA , '.' , tbl.TABLE_NAME )  AS FullyQualifiedTableName, tbl.TABLE_SCHEMA AS SchemaName, tbl.TABLE_NAME AS TableName, col.COLUMN_NAME AS ColumnName, col.ORDINAL_POSITION AS OrdinalPosition,  concat( col.DOMAIN_SCHEMA , '.' , col.DOMAIN_NAME )  AS FullyQualifiedDomainName, col.DOMAIN_NAME AS DomainName, CASE WHEN col.DATA_TYPE = 'varchar' THEN  concat( 'varchar(' , CHARACTER_MAXIMUM_LENGTH , ')' )  WHEN col.DATA_TYPE = 'char' THEN  concat( 'char(' , CHARACTER_MAXIMUM_LENGTH , ')' )  WHEN col.DATA_TYPE = 'nvarchar' THEN  concat( 'nvarchar(' , CHARACTER_MAXIMUM_LENGTH , ')' )  WHEN col.DATA_TYPE = 'nchar' THEN  concat( 'nchar(' , CHARACTER_MAXIMUM_LENGTH , ')' )  WHEN col.DATA_TYPE = 'numeric' THEN  concat( 'numeric(' , NUMERIC_PRECISION_RADIX , ', ' , NUMERIC_SCALE , ')' )  WHEN col.DATA_TYPE = 'decimal' THEN  concat( 'decimal(' , NUMERIC_PRECISION_RADIX , ', ' , NUMERIC_SCALE , ')' )  ELSE col.DATA_TYPE END AS DataType, col.IS_NULLABLE AS IsNullable, dcn.DefaultName, col.COLUMN_DEFAULT AS DefaultNameDefinition, cc.CONSTRAINT_NAME AS CheckConstraintRuleName, cc.CHECK_CLAUSE AS CheckConstraintRuleNameDefinition FROM (  SELECT TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, TABLE_TYPE FROM INFORMATION_SCHEMA.TABLES WHERE ( TABLE_TYPE = 'BASE TABLE' ) ) AS tbl    INNER JOIN   (  SELECT TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, ORDINAL_POSITION, COLUMN_DEFAULT, IS_NULLABLE, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH, CHARACTER_OCTET_LENGTH, NUMERIC_PRECISION, NUMERIC_PRECISION_RADIX, NUMERIC_SCALE, DATETIME_PRECISION, CHARACTER_SET_CATALOG, CHARACTER_SET_SCHEMA, CHARACTER_SET_NAME, COLLATION_CATALOG, COLLATION_SCHEMA, COLLATION_NAME, DOMAIN_CATALOG, DOMAIN_SCHEMA, DOMAIN_NAME FROM INFORMATION_SCHEMA.COLUMNS ) AS col  ON col.TABLE_CATALOG = tbl.TABLE_CATALOG AND col.TABLE_SCHEMA = tbl.TABLE_SCHEMA AND col.TABLE_NAME = tbl.TABLE_NAME   LEFT OUTER JOIN   (  SELECT t.name AS TableName,  schema_name( s.schema_id )  AS SchemaName, ac.name AS ColumnName, d.name AS DefaultName FROM sys.all_columns AS ac   INNER JOIN   sys.tables AS t ON ac.object_id = t.object_id   INNER JOIN   sys.schemas AS s ON t.schema_id = s.schema_id   INNER JOIN   sys.default_constraints AS d ON ac.default_object_id = d.object_id ) AS dcn  ON dcn.SchemaName = tbl.TABLE_SCHEMA AND dcn.TableName = tbl.TABLE_NAME AND dcn.ColumnName = col.COLUMN_NAME   LEFT OUTER JOIN   (  SELECT cu.TABLE_CATALOG, cu.TABLE_SCHEMA, cu.TABLE_NAME, cu.COLUMN_NAME, c.CONSTRAINT_CATALOG, c.CONSTRAINT_SCHEMA, c.CONSTRAINT_NAME, c.CHECK_CLAUSE FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE AS cu   INNER JOIN   INFORMATION_SCHEMA.CHECK_CONSTRAINTS AS c ON c.CONSTRAINT_NAME = cu.CONSTRAINT_NAME ) AS cc  ON cc.TABLE_SCHEMA = tbl.TABLE_SCHEMA AND cc.TABLE_NAME = tbl.TABLE_NAME AND cc.COLUMN_NAME = col.COLUMN_NAME
go

CREATE VIEW "Utils"."uw_FindAllDatabaseColumnsOnTheServer"("FullyQualifiedTableName","SchemaName","ColumnName","OrdinalPosition","FullyQualifiedDomainName","DataType","IsNullable","DefaultName","DefaultNameDefinition","CheckConstraintRuleName","CheckConstraintRuleNameDefinition","Server_Name","Target_Database_Version","Instance_Name","Database_Name","Host_Name")
AS
SELECT vw.FullyQualifiedTableName,vw.SchemaName,vw.ColumnName,vw.OrdinalPosition,vw.FullyQualifiedDomainName,vw.DataType,vw.IsNullable,vw.DefaultName,vw.DefaultNameDefinition,vw.CheckConstraintRuleName,vw.CheckConstraintRuleNameDefinition,@@servername,@@version,@@servicename,db_name(),host_name()
	FROM "Utils"."uvw_FindColumnDefinitionPlusDefaultAndCheckConstraint" vw
		WHERE vw.SchemaName IN ('Sales' , 'Production' , 'HumanResources')
go


ALTER TABLE "HumanResources"."Employee" WITH CHECK 
	ADD CONSTRAINT "FK_Employees_Employees" FOREIGN KEY ("EmployeeManagerId") REFERENCES "HumanResources"."Employee"("EmployeeId")
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE "HumanResources"."Employee"
	  WITH CHECK CHECK CONSTRAINT "FK_Employees_Employees"
go


ALTER TABLE "Sales"."Order" WITH CHECK 
	ADD CONSTRAINT "FK_Order_Customer1" FOREIGN KEY ("CustomerId") REFERENCES "Sales"."Customer"("CustomerId")
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE "Sales"."Order"
	  WITH CHECK CHECK CONSTRAINT "FK_Order_Customer1"
go

ALTER TABLE "Sales"."Order" WITH CHECK 
	ADD CONSTRAINT "FK_Order_Employee" FOREIGN KEY ("EmployeeId") REFERENCES "HumanResources"."Employee"("EmployeeId")
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE "Sales"."Order"
	  WITH CHECK CHECK CONSTRAINT "FK_Order_Employee"
go

ALTER TABLE "Sales"."Order" WITH CHECK 
	ADD CONSTRAINT "FK_Order_Shipper" FOREIGN KEY ("ShipperId") REFERENCES "Sales"."Shipper"("ShipperId")
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE "Sales"."Order"
	  WITH CHECK CHECK CONSTRAINT "FK_Order_Shipper"
go


ALTER TABLE "Sales"."OrderDetail" WITH CHECK 
	ADD CONSTRAINT "FK_OrderDetail_Order" FOREIGN KEY ("OrderId") REFERENCES "Sales"."Order"("OrderId")
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE "Sales"."OrderDetail"
	  WITH CHECK CHECK CONSTRAINT "FK_OrderDetail_Order"
go

ALTER TABLE "Sales"."OrderDetail" WITH CHECK 
	ADD CONSTRAINT "FK_OrderDetail_Product" FOREIGN KEY ("ProductId") REFERENCES "Production"."Product"("ProductId")
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE "Sales"."OrderDetail"
	  WITH CHECK CHECK CONSTRAINT "FK_OrderDetail_Product"
go


ALTER TABLE "Production"."Product" WITH CHECK 
	ADD CONSTRAINT "FK_Product_Category" FOREIGN KEY ("CategoryId") REFERENCES "Production"."Category"("CategoryId")
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE "Production"."Product"
	  WITH CHECK CHECK CONSTRAINT "FK_Product_Category"
go

ALTER TABLE "Production"."Product" WITH CHECK 
	ADD CONSTRAINT "FK_product_supplier" FOREIGN KEY ("SupplierId") REFERENCES "Production"."Supplier"("SupplierId")
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE "Production"."Product"
	  WITH CHECK CHECK CONSTRAINT "FK_product_supplier"
go

CREATE FUNCTION "JsonOutput"."MongoOrder" ()  
  RETURNS TABLE
 
  
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
               from Sales.[Order]            as o2
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
               from Sales.[Order]                     as o2
                   inner join HumanResources.Employee as HumanResourcesEmployee
                       on HumanResourcesEmployee.EmployeeId = o2.EmployeeId
               where o.OrderId = o2.OrderId
               for json path, include_null_values
           )         as HumanResourcesEmployee
         , (
               select SalesShipper.ShipperId          as 'ShipperObjectId'
                    , SalesShipper.ShipperCompanyName as 'ShipperCompanyName'
                    , SalesShipper.PhoneNumber        as 'PhoneNumber'
               from Sales.[Order]           as o2
                   inner join Sales.Shipper as SalesShipper
                       on SalesShipper.ShipperId = o2.ShipperId
               where o.OrderId = o2.OrderId
               for json path, include_null_values
           )         as SalesShipper
    from Sales.[Order]                     as o
        inner join Sales.Customer          as SalesCustomer
            on SalesCustomer.CustomerId = o.CustomerId
        inner join HumanResources.Employee as HumanResourcesEmployee
            on HumanResourcesEmployee.EmployeeId = o.EmployeeId
        inner join Sales.Shipper           as SalesShipper
            on SalesShipper.ShipperId = o.ShipperId
);




go

CREATE FUNCTION "JsonOutput"."MongoOrderDetail" (@OrderId int )  
  RETURNS TABLE
 
  
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




go

CREATE FUNCTION "Triggered"."utvf_EmployeeCurrentAndHistoryCTE" (@EmployeeId int )  
  RETURNS TABLE
 
  
as RETURN
	(
		with AllTransactions
		as (select 'Current row' as TransactionRow
				 , EmployeeId
				 , EmployeeFullName
				 , Department
				 , Salary
				 , Notes
				 , IsDeleted
				 , TransactionNumber
				 , UserAuthenticatedKey
				 , SysStartTime
				 , SysEndTime
				 , TimestampRowChanged
			from [Triggered].[Employee]
			where EmployeeId = @EmployeeId
			union
			select case
					   when IsDeleted = 'N' then
						   'History row'
					   else
						   'Deleted row'
				   end as TransactionRow
				 , EmployeeId
				 , EmployeeFullName
				 , Department
				 , Salary
				 , Notes
				 , IsDeleted
				 , TransactionNumber
				 , UserAuthenticatedKey
				 , SysStartTime
				 , SysEndTime
				 , TimestampRowChanged
			from [Triggered].[AuditTriggeredEmployeeHistory]
			where EmployeeId = @EmployeeId)
		select AllTransactions.TransactionRow
			 , AllTransactions.EmployeeId
			 , AllTransactions.EmployeeFullName
			 , AllTransactions.Department
			 , AllTransactions.Salary
			 , AllTransactions.Notes
			 , AllTransactions.IsDeleted
			 , AllTransactions.TransactionNumber
			 , AllTransactions.UserAuthenticatedKey
			 , AllTransactions.SysStartTime
			 , AllTransactions.SysEndTime
			 , AllTransactions.TimestampRowChanged
		from AllTransactions
	);




go

CREATE FUNCTION "Triggered"."utvf_EmployeeCurrentAndHistory" (@EmployeeId int )  
  RETURNS TABLE
 
  
as RETURN
		(
			select 'Current row' as TransactionRow
				 , EmployeeId
				 , EmployeeFullName
				 , Department
				 , Salary
				 , Notes
				 , IsDeleted
				 , TransactionNumber
				 , UserAuthenticatedKey
				 , SysStartTime
				 , SysEndTime
				 , TimestampRowChanged
			from [Triggered].[Employee]
			where EmployeeId = @EmployeeId
			union all
			select case
					   when IsDeleted = 'N' then
						   'History row'
					   else
						   'Deleted Row'
				   end as TransactionRow
				 , EmployeeId
				 , EmployeeFullName
				 , Department
				 , Salary
				 , Notes
				 , IsDeleted
				 , TransactionNumber
				 , UserAuthenticatedKey
				 , SysStartTime
				 , SysEndTime
				 , TimestampRowChanged
			from [Triggered].[AuditTriggeredEmployeeHistory]
			where EmployeeId = @EmployeeId
		);





go

CREATE PROCEDURE "Sales"."usp_getorders" @country nvarchar(40)   
   
 AS begin
    select o.OrderId
         , o.CustomerId
         , o.EmployeeId
         , o.OrderDate
		 ,@country as Country
    from Sales.[Order] as o
    where o.ShipToCountry = @country;
end;
go

CREATE TRIGGER "Triggered"."uTdu_AuditTriggeredEmployeeHistory" ON "Triggered"."Employee"
   WITH 
 EXECUTE AS CALLER  AFTER DELETE,UPDATE 
  
  AS

begin
			declare @action char(1) = 'I';
			declare @IsDeleted char(1) = 'N';
			declare @DeletedMessage char(25) = 'Rows has been deleted';
			declare @SysStartTimeAsSysEnd datetime2;
		   --
			if (exists (select * from inserted) and exists (select * from deleted))
			begin
				set @action = 'U';
				SELECT @SysStartTimeAsSysEnd = Inserted.SysStartTime FROM Inserted
			end;
			else if (exists (select * from deleted))
			begin
				set @action = 'D';
				set @IsDeleted = 'Y';
			end;
			else
				set @action = 'I';

			if (@action <> 'I')
				insert into Triggered.AuditTriggeredEmployeeHistory
				(
					AuditTriggeredEmployeeHistoryTimestamp
				  , TriggerOption
				  , EmployeeId
				  , EmployeeFullName
				  , Department
				  , Salary
				  , Notes
				  , IsDeleted
				  , TransactionNumber
				  , UserAuthenticatedKey
				  , TimestampRowChanged
				  , SysStartTime
				  , SysEndTime
				)
				select sysdatetime()       as AuditTriggeredEmployeeHistoryTimestamp
					 , @action             as TriggerOption
					 , EmployeeId
					 , EmployeeFullName
					 , Department
					 , Salary
					 , case
						   when @action <> 'D' then
							   Deleted.Notes
						   else
							   @DeletedMessage
					   end
					 , @IsDeleted          as IsDeleted
					 , Deleted.TransactionNumber
					 , UserAuthenticatedKey
					 , TimestampRowChanged
					 , Deleted.SysStartTime
					 , case
						   when @action <> 'D' then
							  @SysStartTimeAsSysEnd
						   else
							   sysdatetime()
					   end as SysEndTime
				from Deleted;
		end;

 
go


ENABLE TRIGGER "Triggered"."uTdu_AuditTriggeredEmployeeHistory" ON "Triggered".Employee
go


CREATE TRIGGER Production.tD_Category ON Production.Category FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on Category */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Production.Category  Production.Product on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="000135d0", PARENT_OWNER="Production", PARENT_TABLE="Category"
    CHILD_OWNER="Production", CHILD_TABLE="Product"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Product_Category", FK_COLUMNS="CategoryId" */
    IF EXISTS (
      SELECT * FROM deleted,Production.Product
      WHERE
        /*  %JoinFKPK(Production.Product,deleted," = "," AND") */
        Production.Product.CategoryId = deleted.CategoryId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Production.Category because Production.Product exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER Production.tU_Category ON Production.Category FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on Category */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insCategoryId Udt.SurrogateKeyInt,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Production.Category  Production.Product on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00015552", PARENT_OWNER="Production", PARENT_TABLE="Category"
    CHILD_OWNER="Production", CHILD_TABLE="Product"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Product_Category", FK_COLUMNS="CategoryId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(CategoryId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Production.Product
      WHERE
        /*  %JoinFKPK(Production.Product,deleted," = "," AND") */
        Production.Product.CategoryId = deleted.CategoryId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Production.Category because Production.Product exists.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Sales.tD_Customer ON Sales.Customer FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on Customer */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Sales.Customer  Sales.Order on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00012014", PARENT_OWNER="Sales", PARENT_TABLE="Customer"
    CHILD_OWNER="Sales", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Order_Customer1", FK_COLUMNS="CustomerId" */
    IF EXISTS (
      SELECT * FROM deleted,Sales."Order"
      WHERE
        /*  %JoinFKPK(Sales.Order,deleted," = "," AND") */
        Sales."Order".CustomerId = deleted.CustomerId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Sales.Customer because Sales.Order exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER Sales.tU_Customer ON Sales.Customer FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on Customer */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insCustomerId Udt.SurrogateKeyInt,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Sales.Customer  Sales.Order on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00013deb", PARENT_OWNER="Sales", PARENT_TABLE="Customer"
    CHILD_OWNER="Sales", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Order_Customer1", FK_COLUMNS="CustomerId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(CustomerId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Sales."Order"
      WHERE
        /*  %JoinFKPK(Sales.Order,deleted," = "," AND") */
        Sales."Order".CustomerId = deleted.CustomerId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Sales.Customer because Sales.Order exists.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER HumanResources.tD_Employee ON HumanResources.Employee FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on Employee */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* HumanResources.Employee  Sales.Order on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0003fd32", PARENT_OWNER="HumanResources", PARENT_TABLE="Employee"
    CHILD_OWNER="Sales", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Order_Employee", FK_COLUMNS="EmployeeId" */
    IF EXISTS (
      SELECT * FROM deleted,Sales."Order"
      WHERE
        /*  %JoinFKPK(Sales.Order,deleted," = "," AND") */
        Sales."Order".EmployeeId = deleted.EmployeeId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete HumanResources.Employee because Sales.Order exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* HumanResources.Employee  HumanResources.Employee on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="HumanResources", PARENT_TABLE="Employee"
    CHILD_OWNER="HumanResources", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Employees_Employees", FK_COLUMNS="EmployeeManagerId" */
    IF EXISTS (
      SELECT * FROM deleted,HumanResources.Employee
      WHERE
        /*  %JoinFKPK(HumanResources.Employee,deleted," = "," AND") */
        HumanResources.Employee.EmployeeManagerId = deleted.EmployeeId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete HumanResources.Employee because HumanResources.Employee exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* HumanResources.Employee  HumanResources.Employee on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="HumanResources", PARENT_TABLE="Employee"
    CHILD_OWNER="HumanResources", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Employees_Employees", FK_COLUMNS="EmployeeManagerId" */
    IF EXISTS (SELECT * FROM deleted,HumanResources.Employee
      WHERE
        /* %JoinFKPK(deleted,HumanResources.Employee," = "," AND") */
        deleted.EmployeeManagerId = HumanResources.Employee.EmployeeId AND
        NOT EXISTS (
          SELECT * FROM HumanResources.Employee
          WHERE
            /* %JoinFKPK(HumanResources.Employee,HumanResources.Employee," = "," AND") */
            HumanResources.Employee.EmployeeManagerId = HumanResources.Employee.EmployeeId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last HumanResources.Employee because HumanResources.Employee exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER HumanResources.tU_Employee ON HumanResources.Employee FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on Employee */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insEmployeeId Udt.SurrogateKeyInt,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* HumanResources.Employee  Sales.Order on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="0004602d", PARENT_OWNER="HumanResources", PARENT_TABLE="Employee"
    CHILD_OWNER="Sales", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Order_Employee", FK_COLUMNS="EmployeeId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(EmployeeId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Sales."Order"
      WHERE
        /*  %JoinFKPK(Sales.Order,deleted," = "," AND") */
        Sales."Order".EmployeeId = deleted.EmployeeId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update HumanResources.Employee because Sales.Order exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* HumanResources.Employee  HumanResources.Employee on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="HumanResources", PARENT_TABLE="Employee"
    CHILD_OWNER="HumanResources", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Employees_Employees", FK_COLUMNS="EmployeeManagerId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(EmployeeId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,HumanResources.Employee
      WHERE
        /*  %JoinFKPK(HumanResources.Employee,deleted," = "," AND") */
        HumanResources.Employee.EmployeeManagerId = deleted.EmployeeId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update HumanResources.Employee because HumanResources.Employee exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* HumanResources.Employee  HumanResources.Employee on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="HumanResources", PARENT_TABLE="Employee"
    CHILD_OWNER="HumanResources", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Employees_Employees", FK_COLUMNS="EmployeeManagerId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(EmployeeManagerId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,HumanResources.Employee
        WHERE
          /* %JoinFKPK(inserted,HumanResources.Employee) */
          inserted.EmployeeManagerId = HumanResources.Employee.EmployeeId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.EmployeeManagerId IS NULL
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update HumanResources.Employee because HumanResources.Employee does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Sales.tD_Order ON Sales."Order" FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on Order */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Sales.Order  Sales.OrderDetail on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="000529e7", PARENT_OWNER="Sales", PARENT_TABLE="Order"
    CHILD_OWNER="Sales", CHILD_TABLE="OrderDetail"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_OrderDetail_Order", FK_COLUMNS="OrderId" */
    IF EXISTS (
      SELECT * FROM deleted,Sales.OrderDetail
      WHERE
        /*  %JoinFKPK(Sales.OrderDetail,deleted," = "," AND") */
        Sales.OrderDetail.OrderId = deleted.OrderId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Sales.Order because Sales.OrderDetail exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Sales.Shipper  Sales.Order on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Sales", PARENT_TABLE="Shipper"
    CHILD_OWNER="Sales", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Order_Shipper", FK_COLUMNS="ShipperId" */
    IF EXISTS (SELECT * FROM deleted,Sales.Shipper
      WHERE
        /* %JoinFKPK(deleted,Sales.Shipper," = "," AND") */
        deleted.ShipperId = Sales.Shipper.ShipperId AND
        NOT EXISTS (
          SELECT * FROM Sales."Order"
          WHERE
            /* %JoinFKPK(Sales.Order,Sales.Shipper," = "," AND") */
            Sales."Order".ShipperId = Sales.Shipper.ShipperId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Sales.Order because Sales.Shipper exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* HumanResources.Employee  Sales.Order on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="HumanResources", PARENT_TABLE="Employee"
    CHILD_OWNER="Sales", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Order_Employee", FK_COLUMNS="EmployeeId" */
    IF EXISTS (SELECT * FROM deleted,HumanResources.Employee
      WHERE
        /* %JoinFKPK(deleted,HumanResources.Employee," = "," AND") */
        deleted.EmployeeId = HumanResources.Employee.EmployeeId AND
        NOT EXISTS (
          SELECT * FROM Sales."Order"
          WHERE
            /* %JoinFKPK(Sales.Order,HumanResources.Employee," = "," AND") */
            Sales."Order".EmployeeId = HumanResources.Employee.EmployeeId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Sales.Order because HumanResources.Employee exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Sales.Customer  Sales.Order on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Sales", PARENT_TABLE="Customer"
    CHILD_OWNER="Sales", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Order_Customer1", FK_COLUMNS="CustomerId" */
    IF EXISTS (SELECT * FROM deleted,Sales.Customer
      WHERE
        /* %JoinFKPK(deleted,Sales.Customer," = "," AND") */
        deleted.CustomerId = Sales.Customer.CustomerId AND
        NOT EXISTS (
          SELECT * FROM Sales."Order"
          WHERE
            /* %JoinFKPK(Sales.Order,Sales.Customer," = "," AND") */
            Sales."Order".CustomerId = Sales.Customer.CustomerId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Sales.Order because Sales.Customer exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER Sales.tU_Order ON Sales."Order" FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on Order */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insOrderId Udt.SurrogateKeyInt,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Sales.Order  Sales.OrderDetail on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="0005ac5b", PARENT_OWNER="Sales", PARENT_TABLE="Order"
    CHILD_OWNER="Sales", CHILD_TABLE="OrderDetail"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_OrderDetail_Order", FK_COLUMNS="OrderId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(OrderId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Sales.OrderDetail
      WHERE
        /*  %JoinFKPK(Sales.OrderDetail,deleted," = "," AND") */
        Sales.OrderDetail.OrderId = deleted.OrderId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Sales.Order because Sales.OrderDetail exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Sales.Shipper  Sales.Order on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Sales", PARENT_TABLE="Shipper"
    CHILD_OWNER="Sales", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Order_Shipper", FK_COLUMNS="ShipperId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ShipperId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Sales.Shipper
        WHERE
          /* %JoinFKPK(inserted,Sales.Shipper) */
          inserted.ShipperId = Sales.Shipper.ShipperId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Sales.Order because Sales.Shipper does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* HumanResources.Employee  Sales.Order on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="HumanResources", PARENT_TABLE="Employee"
    CHILD_OWNER="Sales", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Order_Employee", FK_COLUMNS="EmployeeId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(EmployeeId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,HumanResources.Employee
        WHERE
          /* %JoinFKPK(inserted,HumanResources.Employee) */
          inserted.EmployeeId = HumanResources.Employee.EmployeeId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Sales.Order because HumanResources.Employee does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Sales.Customer  Sales.Order on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Sales", PARENT_TABLE="Customer"
    CHILD_OWNER="Sales", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Order_Customer1", FK_COLUMNS="CustomerId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(CustomerId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Sales.Customer
        WHERE
          /* %JoinFKPK(inserted,Sales.Customer) */
          inserted.CustomerId = Sales.Customer.CustomerId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.CustomerId IS NULL
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Sales.Order because Sales.Customer does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Sales.tD_OrderDetail ON Sales.OrderDetail FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on OrderDetail */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Production.Product  Sales.OrderDetail on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="0002d352", PARENT_OWNER="Production", PARENT_TABLE="Product"
    CHILD_OWNER="Sales", CHILD_TABLE="OrderDetail"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_OrderDetail_Product", FK_COLUMNS="ProductId" */
    IF EXISTS (SELECT * FROM deleted,Production.Product
      WHERE
        /* %JoinFKPK(deleted,Production.Product," = "," AND") */
        deleted.ProductId = Production.Product.ProductId AND
        NOT EXISTS (
          SELECT * FROM Sales.OrderDetail
          WHERE
            /* %JoinFKPK(Sales.OrderDetail,Production.Product," = "," AND") */
            Sales.OrderDetail.ProductId = Production.Product.ProductId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Sales.OrderDetail because Production.Product exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Sales.Order  Sales.OrderDetail on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Sales", PARENT_TABLE="Order"
    CHILD_OWNER="Sales", CHILD_TABLE="OrderDetail"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_OrderDetail_Order", FK_COLUMNS="OrderId" */
    IF EXISTS (SELECT * FROM deleted,Sales."Order"
      WHERE
        /* %JoinFKPK(deleted,Sales.Order," = "," AND") */
        deleted.OrderId = Sales."Order".OrderId AND
        NOT EXISTS (
          SELECT * FROM Sales.OrderDetail
          WHERE
            /* %JoinFKPK(Sales.OrderDetail,Sales.Order," = "," AND") */
            Sales.OrderDetail.OrderId = Sales."Order".OrderId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Sales.OrderDetail because Sales.Order exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER Sales.tU_OrderDetail ON Sales.OrderDetail FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on OrderDetail */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insOrderId Udt.SurrogateKeyInt, 
           @insProductId Udt.SurrogateKeyInt,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Production.Product  Sales.OrderDetail on child update no action */
  /* ERWIN_RELATION:CHECKSUM="0002f2c5", PARENT_OWNER="Production", PARENT_TABLE="Product"
    CHILD_OWNER="Sales", CHILD_TABLE="OrderDetail"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_OrderDetail_Product", FK_COLUMNS="ProductId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ProductId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Production.Product
        WHERE
          /* %JoinFKPK(inserted,Production.Product) */
          inserted.ProductId = Production.Product.ProductId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Sales.OrderDetail because Production.Product does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Sales.Order  Sales.OrderDetail on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Sales", PARENT_TABLE="Order"
    CHILD_OWNER="Sales", CHILD_TABLE="OrderDetail"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_OrderDetail_Order", FK_COLUMNS="OrderId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(OrderId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Sales."Order"
        WHERE
          /* %JoinFKPK(inserted,Sales.Order) */
          inserted.OrderId = Sales."Order".OrderId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Sales.OrderDetail because Sales.Order does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Production.tD_Product ON Production.Product FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on Product */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Production.Product  Sales.OrderDetail on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00040d95", PARENT_OWNER="Production", PARENT_TABLE="Product"
    CHILD_OWNER="Sales", CHILD_TABLE="OrderDetail"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_OrderDetail_Product", FK_COLUMNS="ProductId" */
    IF EXISTS (
      SELECT * FROM deleted,Sales.OrderDetail
      WHERE
        /*  %JoinFKPK(Sales.OrderDetail,deleted," = "," AND") */
        Sales.OrderDetail.ProductId = deleted.ProductId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Production.Product because Sales.OrderDetail exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Production.Supplier  Production.Product on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Production", PARENT_TABLE="Supplier"
    CHILD_OWNER="Production", CHILD_TABLE="Product"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_product_supplier", FK_COLUMNS="SupplierId" */
    IF EXISTS (SELECT * FROM deleted,Production.Supplier
      WHERE
        /* %JoinFKPK(deleted,Production.Supplier," = "," AND") */
        deleted.SupplierId = Production.Supplier.SupplierId AND
        NOT EXISTS (
          SELECT * FROM Production.Product
          WHERE
            /* %JoinFKPK(Production.Product,Production.Supplier," = "," AND") */
            Production.Product.SupplierId = Production.Supplier.SupplierId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Production.Product because Production.Supplier exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Production.Category  Production.Product on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Production", PARENT_TABLE="Category"
    CHILD_OWNER="Production", CHILD_TABLE="Product"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Product_Category", FK_COLUMNS="CategoryId" */
    IF EXISTS (SELECT * FROM deleted,Production.Category
      WHERE
        /* %JoinFKPK(deleted,Production.Category," = "," AND") */
        deleted.CategoryId = Production.Category.CategoryId AND
        NOT EXISTS (
          SELECT * FROM Production.Product
          WHERE
            /* %JoinFKPK(Production.Product,Production.Category," = "," AND") */
            Production.Product.CategoryId = Production.Category.CategoryId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Production.Product because Production.Category exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER Production.tU_Product ON Production.Product FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on Product */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insProductId Udt.SurrogateKeyInt,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Production.Product  Sales.OrderDetail on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="000450c5", PARENT_OWNER="Production", PARENT_TABLE="Product"
    CHILD_OWNER="Sales", CHILD_TABLE="OrderDetail"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_OrderDetail_Product", FK_COLUMNS="ProductId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ProductId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Sales.OrderDetail
      WHERE
        /*  %JoinFKPK(Sales.OrderDetail,deleted," = "," AND") */
        Sales.OrderDetail.ProductId = deleted.ProductId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Production.Product because Sales.OrderDetail exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Production.Supplier  Production.Product on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Production", PARENT_TABLE="Supplier"
    CHILD_OWNER="Production", CHILD_TABLE="Product"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_product_supplier", FK_COLUMNS="SupplierId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(SupplierId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Production.Supplier
        WHERE
          /* %JoinFKPK(inserted,Production.Supplier) */
          inserted.SupplierId = Production.Supplier.SupplierId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Production.Product because Production.Supplier does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Production.Category  Production.Product on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Production", PARENT_TABLE="Category"
    CHILD_OWNER="Production", CHILD_TABLE="Product"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Product_Category", FK_COLUMNS="CategoryId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(CategoryId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Production.Category
        WHERE
          /* %JoinFKPK(inserted,Production.Category) */
          inserted.CategoryId = Production.Category.CategoryId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Production.Product because Production.Category does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Sales.tD_Shipper ON Sales.Shipper FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on Shipper */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Sales.Shipper  Sales.Order on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00011722", PARENT_OWNER="Sales", PARENT_TABLE="Shipper"
    CHILD_OWNER="Sales", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Order_Shipper", FK_COLUMNS="ShipperId" */
    IF EXISTS (
      SELECT * FROM deleted,Sales."Order"
      WHERE
        /*  %JoinFKPK(Sales.Order,deleted," = "," AND") */
        Sales."Order".ShipperId = deleted.ShipperId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Sales.Shipper because Sales.Order exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER Sales.tU_Shipper ON Sales.Shipper FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on Shipper */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insShipperId Udt.SurrogateKeyInt,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Sales.Shipper  Sales.Order on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="000139a3", PARENT_OWNER="Sales", PARENT_TABLE="Shipper"
    CHILD_OWNER="Sales", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Order_Shipper", FK_COLUMNS="ShipperId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ShipperId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Sales."Order"
      WHERE
        /*  %JoinFKPK(Sales.Order,deleted," = "," AND") */
        Sales."Order".ShipperId = deleted.ShipperId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Sales.Shipper because Sales.Order exists.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Production.tD_Supplier ON Production.Supplier FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on Supplier */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Production.Supplier  Production.Product on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="000136d7", PARENT_OWNER="Production", PARENT_TABLE="Supplier"
    CHILD_OWNER="Production", CHILD_TABLE="Product"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_product_supplier", FK_COLUMNS="SupplierId" */
    IF EXISTS (
      SELECT * FROM deleted,Production.Product
      WHERE
        /*  %JoinFKPK(Production.Product,deleted," = "," AND") */
        Production.Product.SupplierId = deleted.SupplierId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Production.Supplier because Production.Product exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER Production.tU_Supplier ON Production.Supplier FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on Supplier */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insSupplierId Udt.SurrogateKeyInt,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Production.Supplier  Production.Product on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00014e39", PARENT_OWNER="Production", PARENT_TABLE="Supplier"
    CHILD_OWNER="Production", CHILD_TABLE="Product"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_product_supplier", FK_COLUMNS="SupplierId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(SupplierId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Production.Product
      WHERE
        /*  %JoinFKPK(Production.Product,deleted," = "," AND") */
        Production.Product.SupplierId = deleted.SupplierId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Production.Supplier because Production.Product exists.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END
