

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

CREATE SCHEMA "Midterm"
go

CREATE SCHEMA "MidtermDataModelingCSCI381" AUTHORIZATION "dbo"
go

CREATE SCHEMA "dBlob"
go

CREATE SCHEMA "dString"
go

CREATE SCHEMA "dDatetime"
go

CREATE SCHEMA "dNumber"
go

CREATE SCHEMA "sdDateDatetime"
go

CREATE SCHEMA "sdNanosecondPreciseDatetime"
go

CREATE SCHEMA "sdDecimalNumber"
go

CREATE SCHEMA "sdIntegerNumber"
go

CREATE SCHEMA "sdPositiveIntegerNumber"
go

CREATE SCHEMA "sdMoneyNumber"
go

CREATE SCHEMA "sdAddressString"
go

CREATE SCHEMA "sdDatetimeString"
go

CREATE SCHEMA "sdDescriptionString"
go

CREATE SCHEMA "sdFlagCharacterString"
go

CREATE SCHEMA "sdNameString"
go

CREATE SCHEMA "sdNumberString"
go

CREATE SCHEMA "sdTextKeyVarchar10String"
go

CREATE SCHEMA "sdTitleString"
go

CREATE SCHEMA "sdBusinessNameString"
go

CREATE SCHEMA "sdPersonNameString"
go

CREATE TYPE "dString"."sdAddressString"
	FROM NVARCHAR(60) NULL
go

CREATE TYPE "Udt"."BlobDefinition"
	FROM VARBINARY(MAX) NULL
go

CREATE TYPE "sdBusinessNameString"."CategoryName"
	FROM NVARCHAR(15) NULL
go

CREATE TYPE "sdAddressString"."City"
	FROM NVARCHAR(15) NULL
go

CREATE TYPE "sdBusinessNameString"."CompanyName"
	FROM NVARCHAR(40) NULL
go

CREATE TYPE "sdPersonNameString"."ContactName"
	FROM NVARCHAR(30) NULL
go

CREATE TYPE "sdTitleString"."ContactTitle"
	FROM NVARCHAR(30) NULL
go

CREATE TYPE "sdAddressString"."Country"
	FROM NVARCHAR(15) NULL
go

CREATE TYPE "sdMoneyNumber"."Currency"
	FROM MONEY NULL
go

CREATE TYPE "sdDateDatetime"."DateYYYYMMDD"
	FROM DATETIME NOT NULL
go

CREATE TYPE "dString"."sdDescriptionString"
	FROM NVARCHAR(200) NULL
go

CREATE TYPE "sdPersonNameString"."FirstName"
	FROM NVARCHAR(25) NULL
go

CREATE TYPE "sdPositiveIntegerNumber"."FlagBit"
	FROM BIT NULL
go

CREATE TYPE "sdPositiveIntegerNumber"."Grade"
	FROM TINYINT NULL
go

CREATE TYPE "sdPersonNameString"."LastName"
	FROM NVARCHAR(25) NULL
go

CREATE TYPE "dString"."sdNameString"
	FROM NVARCHAR(80) NULL
go

CREATE TYPE "sdDescriptionString"."Note"
	FROM NVARCHAR(200) NULL
go

CREATE TYPE "sdDecimalNumber"."Percentage"
	FROM NUMERIC(4,3) NULL
go

CREATE TYPE "sdAddressString"."PostalCode"
	FROM NVARCHAR(10) NULL
go

CREATE TYPE "sdBusinessNameString"."ProductName"
	FROM NVARCHAR(80) NULL
go

CREATE TYPE "sdPositiveIntegerNumber"."QuantitySmall"
	FROM SMALLINT NULL
go

CREATE TYPE "sdAddressString"."Region"
	FROM NVARCHAR(15) NULL
go

CREATE TYPE "sdPositiveIntegerNumber"."Score"
	FROM TINYINT NOT NULL
go

CREATE TYPE "sdIntegerNumber"."SequenceNumber"
	FROM INT NULL
go

CREATE TYPE "sdDescriptionString"."ShortDescription"
	FROM NVARCHAR(15) NULL
go

CREATE TYPE "sdNameString"."StateName"
	FROM NVARCHAR(15) NOT NULL
go

CREATE TYPE "sdTextKeyVarchar10String"."StudentIdentification"
	FROM VARCHAR(10) NULL
go

CREATE TYPE "sdPositiveIntegerNumber"."SurrogateKeyInt"
	FROM INT NOT NULL
go

CREATE TYPE "sdNumberString"."TelephoneNumber"
	FROM NVARCHAR(24) NULL
go

CREATE TYPE "dString"."sdTextKeyVarchar10String"
	FROM VARCHAR(10) NOT NULL
go

CREATE TYPE "dString"."sdTitleString"
	FROM NVARCHAR(30) NOT NULL
go

CREATE TYPE "sdTitleString"."TitleOfCourtesy"
	FROM NVARCHAR(5) NOT NULL
go

CREATE TYPE "sdPositiveIntegerNumber"."Version"
	FROM INT NULL
go

CREATE TYPE "sdNanosecondPreciseDatetime"."TimeStampNow"
	FROM DATETIME2(7) NULL
go

CREATE TYPE "sdFlagCharacterString"."TriggerOption"
	FROM CHAR(1) NOT NULL
go

CREATE TYPE "sdFlagCharacterString"."IsDeletion"
	FROM CHAR(1) NOT NULL
go

CREATE TYPE "dString"."sdFlagCharacterString"
	FROM CHAR(1) NOT NULL
go

CREATE TYPE "dbo"."MidtermDataModelingCSCI381"
	FROM CHAR(18) NULL
go

CREATE TYPE "MidtermDataModelingCSCI381"."dBlob"
	FROM VARBINARY(MAX) NULL
go

CREATE TYPE "MidtermDataModelingCSCI381"."dNumber"
	FROM INT NULL
go

CREATE TYPE "MidtermDataModelingCSCI381"."dString"
	FROM NVARCHAR(MAX) NULL
go

CREATE TYPE "MidtermDataModelingCSCI381"."dDatetime"
	FROM DATETIME NULL
go

CREATE TYPE "dDatetime"."sdDateDatetime"
	FROM DATE NULL
go

CREATE TYPE "dString"."sdDatetimeString"
	FROM NCHAR(30) NULL
go

CREATE TYPE "sdDatetimeString"."YYYY"
	FROM NCHAR(4) NULL
go

CREATE TYPE "dDatetime"."sdNanosecondPreciseDatetime"
	FROM DATETIME2 NULL
go

CREATE TYPE "dNumber"."sdIntegerNumber"
	FROM INT NULL
go

CREATE TYPE "dNumber"."sdDecimalNumber"
	FROM DECIMAL(4,3) NULL
go

CREATE TYPE "sdIntegerNumber"."sdPositiveIntegerNumber"
	FROM INT NULL
go

CREATE TYPE "sdDatetimeString"."hh:mmTime"
	FROM NCHAR(5) NULL
go

CREATE TYPE "sdDescriptionString"."Description"
	FROM NVARCHAR(200) NULL
go

CREATE TYPE "dNumber"."sdMoneyNumber"
	FROM MONEY NULL
go

CREATE TYPE "sdDescriptionString"."MediumDescription"
	FROM NVARCHAR(60) NULL
go

CREATE TYPE "dString"."sdNumberString"
	FROM NVARCHAR(MAX) NULL
go

CREATE TYPE "sdNameString"."sdPersonNameString"
	FROM NVARCHAR(80) NULL
go

CREATE TYPE "sdAddressString"."Address"
	FROM NVARCHAR(60) NULL
go

CREATE TYPE "sdTitleString"."Title"
	FROM NVARCHAR(30) NOT NULL
go

CREATE TYPE "sdNameString"."GroupName"
	FROM NVARCHAR(20) NULL
go

CREATE TYPE "sdPersonNameString"."FullName"
	FROM NVARCHAR(40) NULL
go

CREATE TYPE "sdBusinessNameString"."DepartmentName"
	FROM NVARCHAR(80) NULL
go

CREATE TYPE "sdTitleString"."EmployeeTitle"
	FROM NVARCHAR(30) NOT NULL
go

CREATE TYPE "sdNameString"."sdBusinessNameString"
	FROM NVARCHAR(80) NULL
go

CREATE TABLE "Triggered"."AuditTriggeredEmployeeHistory"
( 
	"TriggeredEmployeeHistoryId" "sdPositiveIntegerNumber"."SurrogateKeyInt"  IDENTITY ( 1,1 )  NOT NULL ,
	"AuditTriggeredEmployeeHistoryTimestamp" "sdNanosecondPreciseDatetime"."TimeStampNow"  NULL ,
	"TriggerOption"      "sdFlagCharacterString"."TriggerOption"  NULL 
	CONSTRAINT "CK_TriggerOption_2065829616"
		CHECK  ( [TriggerOption]='U' OR [TriggerOption]='D' ),
	"EmployeeId"         "sdPositiveIntegerNumber"."SurrogateKeyInt"  NOT NULL ,
	"EmployeeFullName"   "sdPersonNameString"."FullName"  NOT NULL 
	CONSTRAINT "CK_Template_StringIsNotEmpty_1387294301"
		CHECK  ( EmployeeFullName != '' ),
	"Department"         "sdBusinessNameString"."DepartmentName"  NOT NULL 
	CONSTRAINT "DF_Template_DepartmentName_1648329703"
		 DEFAULT  'Department Name'
	CONSTRAINT "CK_Template_StringIsNotEmpty_1844763314"
		CHECK  ( Department != '' ),
	"Salary"             "sdMoneyNumber"."Currency"  NOT NULL 
	CONSTRAINT "DF_Template_DecimalZero_1737951253"
		 DEFAULT  0.000
	CONSTRAINT "CK_Template_DecimalIsGreaterThanOrEqualToZero_319367940"
		CHECK  ( Salary >= 0.000 ),
	"Notes"              "sdDescriptionString"."Note"  NOT NULL 
	CONSTRAINT "DF_Template_Note_1913934882"
		 DEFAULT  'Insert Note here.'
	CONSTRAINT "CK_Template_StringIsLongerThanTenCharacters_1522668303"
		CHECK  ( LEN(Notes) > 10 ),
	"IsDeleted"          "sdFlagCharacterString"."IsDeletion"  NULL 
	CONSTRAINT "DF_Template_CharacterForNo_1973423510"
		 DEFAULT  'N'
	CONSTRAINT "CK_Template_CharacterYesOrNo_226111793"
		CHECK  ( [IsDeleted]='Y' OR [IsDeleted]='N' ),
	"TransactionNumber"  "sdIntegerNumber"."SequenceNumber"  NULL ,
	"UserAuthenticatedKey" "sdPositiveIntegerNumber"."SurrogateKeyInt"  NULL ,
	"SysStartTime"       "sdNanosecondPreciseDatetime"."TimeStampNow"  NULL ,
	"SysEndTime"         "sdNanosecondPreciseDatetime"."TimeStampNow"  NULL 
	CONSTRAINT "DF_Triggered_AuditTriggeredEmployeeHistory_SysEnd"
		 DEFAULT  '99991231 23:59:59',
	"TimestampRowChanged" "sdNanosecondPreciseDatetime"."TimeStampNow"  NULL ,
	"UserAuthorizationId" "sdPositiveIntegerNumber"."SurrogateKeyInt" ,
	"DateAdded"          "sdNanosecondPreciseDatetime"."TimeStampNow" 
	CONSTRAINT "DF_Template_CurrentSystemDateAndTime_1018176178"
		 DEFAULT  sysdatetime(),
	"DateOfLastUpdate"   "sdNanosecondPreciseDatetime"."TimeStampNow" 
	CONSTRAINT "DF_Template_CurrentSystemDateAndTime_1682612118"
		 DEFAULT  sysdatetime()
)
go

CREATE TABLE "Production"."Category"
( 
	"CategoryId"         "sdPositiveIntegerNumber"."SurrogateKeyInt"  IDENTITY ( 1,1 )  NOT NULL ,
	"CategoryName"       "sdBusinessNameString"."CategoryName"  NOT NULL 
	CONSTRAINT "DF_Template_CategoryName_1470249850"
		 DEFAULT  'Category Name'
	CONSTRAINT "CK_Template_StringIsNotEmpty_736892126"
		CHECK  ( CategoryName != '' ),
	"Description"        "sdDescriptionString"."Description"  NOT NULL 
	CONSTRAINT "DF_Template_Description_820130198"
		 DEFAULT  'Insert Description here.'
	CONSTRAINT "CK_Template_StringIsLongerThanTenCharacters_1088174934"
		CHECK  ( LEN(Description) > 10 ),
	"UserAuthorizationId" "sdPositiveIntegerNumber"."SurrogateKeyInt"  NOT NULL ,
	"DateAdded"          "sdNanosecondPreciseDatetime"."TimeStampNow" 
	CONSTRAINT "DF_Template_CurrentSystemDateAndTime_349276387"
		 DEFAULT  sysdatetime()
	CONSTRAINT "CK_Template_SarbanesOxleyRetentionPeriod_1707981975"
		CHECK  ( DATEDIFF(year, DateAdded, sysdatetime()) < 7 ),
	"DateOfLastUpdate"   "sdNanosecondPreciseDatetime"."TimeStampNow" 
	CONSTRAINT "DF_Template_CurrentSystemDateAndTime_1792884484"
		 DEFAULT  sysdatetime()
	CONSTRAINT "CK_Template_SarbanesOxleyRetentionPeriod_444824451"
		CHECK  ( DATEDIFF(year, DateOfLastUpdate, sysdatetime()) < 7 )
)
go

CREATE TABLE "Sales"."Customer"
( 
	"CustomerId"         "sdPositiveIntegerNumber"."SurrogateKeyInt"  IDENTITY ( 1,1 )  NOT NULL ,
	"CustomerCompanyName" "sdBusinessNameString"."CompanyName"  NOT NULL 
	CONSTRAINT "DF_Template_CompanyName_593633391"
		 DEFAULT  'Company Name'
	CONSTRAINT "CK_Template_StringIsNotEmpty_341109433"
		CHECK  ( CustomerCompanyName != '' ),
	"CustomerContactName" "sdPersonNameString"."ContactName"  NOT NULL 
	CONSTRAINT "DF_Template_ContactName_593374078"
		 DEFAULT  'Contact Name'
	CONSTRAINT "CK_Template_StringIsNotEmpty_408215477"
		CHECK  ( CustomerContactName != '' ),
	"CustomerContactTitle" "sdTitleString"."ContactTitle"  NOT NULL 
	CONSTRAINT "DF_Template_Title_1632991176"
		 DEFAULT  'Insert Title here.'
	CONSTRAINT "CK_Template_StringIsNotEmpty_67773770"
		CHECK  ( CustomerContactTitle != '' ),
	"CustomerAddress"    "sdAddressString"."Address"  NOT NULL 
	CONSTRAINT "DF_Template_Address_468847786"
		 DEFAULT  'Insert Address here.'
	CONSTRAINT "CK_Template_StringIsNotEmpty_940214460"
		CHECK  ( CustomerAddress != '' ),
	"CustomerCity"       "sdAddressString"."City"  NOT NULL 
	CONSTRAINT "DF_Template_City_138358817"
		 DEFAULT  'City.'
	CONSTRAINT "CK_Template_StringIsNotEmpty_823656450"
		CHECK  ( CustomerCity != '' ),
	"CustomerRegion"     "sdAddressString"."Region"  NULL 
	CONSTRAINT "DF_Template_Region_1004345806"
		 DEFAULT  'Region.'
	CONSTRAINT "CK_Template_StringIsNotEmpty_1591738028"
		CHECK  ( CustomerRegion != '' ),
	"CustomerPostalCode" "sdAddressString"."PostalCode"  NULL 
	CONSTRAINT "DF_Template_PostalCode_1745521178"
		 DEFAULT  'Post Code.'
	CONSTRAINT "CK_Template_StringIsNotEmpty_258320959"
		CHECK  ( CustomerPostalCode != '' ),
	"CustomerCountry"    "sdAddressString"."Country"  NOT NULL 
	CONSTRAINT "DF_Template_Country_788473803"
		 DEFAULT  'Country.'
	CONSTRAINT "CK_Template_StringIsNotEmpty_1006206629"
		CHECK  ( CustomerCountry != '' ),
	"CustomerPhoneNumber" "sdNumberString"."TelephoneNumber"  NOT NULL 
	CONSTRAINT "DF_Template_USTelephoneNumber_983804621"
		 DEFAULT  '(555)-555-5555'
	CONSTRAINT "CK_Template_StringIsNumeric_1798727075"
		CHECK  ( ISNUMERIC(CustomerPhoneNumber) = 1 ),
	"CustomerFaxNumber"  "sdNumberString"."TelephoneNumber"  NULL 
	CONSTRAINT "DF_Template_USTelephoneNumber_1229141432"
		 DEFAULT  '(555)-555-5555'
	CONSTRAINT "CK_Template_StringIsNumeric_165579710"
		CHECK  ( ISNUMERIC(CustomerFaxNumber) = 1 ),
	"UserAuthorizationId" "sdPositiveIntegerNumber"."SurrogateKeyInt" ,
	"DateAdded"          "sdNanosecondPreciseDatetime"."TimeStampNow" 
	CONSTRAINT "DF_Template_CurrentSystemDateAndTime_48201947"
		 DEFAULT  sysdatetime()
	CONSTRAINT "CK_Template_SarbanesOxleyRetentionPeriod_2009056415"
		CHECK  ( DATEDIFF(year, DateAdded, sysdatetime()) < 7 ),
	"DateOfLastUpdate"   "sdNanosecondPreciseDatetime"."TimeStampNow" 
	CONSTRAINT "DF_Template_CurrentSystemDateAndTime_1928278284"
		 DEFAULT  sysdatetime()
	CONSTRAINT "CK_Template_SarbanesOxleyRetentionPeriod_309430651"
		CHECK  ( DATEDIFF(year, DateOfLastUpdate, sysdatetime()) < 7 )
)
go

CREATE TABLE "HumanResources"."Employee"
( 
	"EmployeeId"         "sdPositiveIntegerNumber"."SurrogateKeyInt"  IDENTITY ( 1,1 )  NOT NULL ,
	"EmployeeLastName"   "sdPersonNameString"."LastName"  NOT NULL 
	CONSTRAINT "DF_Template_LastName_1434738058"
		 DEFAULT  'Last Name'
	CONSTRAINT "CK_Template_StringIsNotEmpty_1938201032"
		CHECK  ( EmployeeLastName != '' ),
	"EmployeeFirstName"  "sdPersonNameString"."FirstName"  NOT NULL 
	CONSTRAINT "DF_Template_FirstName_1603111600"
		 DEFAULT  'First Name'
	CONSTRAINT "CK_Template_StringIsNotEmpty_224943685"
		CHECK  ( EmployeeFirstName != '' ),
	"EmployeeTitle"      "sdTitleString"."EmployeeTitle"  NOT NULL 
	CONSTRAINT "DF_Template_Title_1313230853"
		 DEFAULT  'Insert Title here.'
	CONSTRAINT "CK_Template_StringIsNotEmpty_1089934882"
		CHECK  ( EmployeeTitle != '' ),
	"EmployeeTitleOfCourtesy" "sdTitleString"."TitleOfCourtesy"  NOT NULL 
	CONSTRAINT "DF_Template_Title_1978073460"
		 DEFAULT  'Insert Title here.'
	CONSTRAINT "CK_Template_TitleOfCourtesy_1235171478"
		CHECK  ( [EmployeeTitleOfCourtesy]='Mr.' OR [EmployeeTitleOfCourtesy]='Ms.' OR [EmployeeTitleOfCourtesy]='Mx.' OR [EmployeeTitleOfCourtesy]='Mrs.' OR [EmployeeTitleOfCourtesy]='Dr.' OR [EmployeeTitleOfCourtesy]='Other' ),
	"BirthDate"          "sdDateDatetime"."DateYYYYMMDD"  NOT NULL 
	CONSTRAINT "DF_Template_NineteenHundredJanuaryFirst_YearMonthDay_1928329201"
		 DEFAULT  '19000101',
	"HireDate"           "sdDateDatetime"."DateYYYYMMDD"  NOT NULL 
	CONSTRAINT "DF_Template_NineteenHundredJanuaryFirst_YearMonthDay_536345033"
		 DEFAULT  '19000101',
	"EmployeeAddress"    "sdAddressString"."Address"  NOT NULL 
	CONSTRAINT "DF_Template_Address_365433010"
		 DEFAULT  'Insert Address here.'
	CONSTRAINT "CK_Template_StringIsNotEmpty_1644593346"
		CHECK  ( EmployeeAddress != '' ),
	"EmployeeCity"       "sdAddressString"."City"  NULL 
	CONSTRAINT "DF_Template_City_70727243"
		 DEFAULT  'City.'
	CONSTRAINT "CK_Template_StringIsNotEmpty_891288024"
		CHECK  ( EmployeeCity != '' ),
	"EmployeeRegion"     "sdAddressString"."Region"  NULL 
	CONSTRAINT "DF_Template_Region_936714232"
		 DEFAULT  'Region.'
	CONSTRAINT "CK_Template_StringIsNotEmpty_1695152804"
		CHECK  ( EmployeeRegion != '' ),
	"EmployeePostalCode" "sdAddressString"."PostalCode"  NULL 
	CONSTRAINT "DF_Template_PostalCode_1813152752"
		 DEFAULT  'Post Code.'
	CONSTRAINT "CK_Template_StringIsNotEmpty_361735735"
		CHECK  ( EmployeePostalCode != '' ),
	"EmployeeCountry"    "sdAddressString"."Country"  NOT NULL 
	CONSTRAINT "DF_Template_Country_685059027"
		 DEFAULT  'Country.'
	CONSTRAINT "CK_Template_StringIsNotEmpty_1710585515"
		CHECK  ( EmployeeCountry != '' ),
	"EmployeePhoneNumber" "sdNumberString"."TelephoneNumber"  NOT NULL 
	CONSTRAINT "DF_Template_USTelephoneNumber_1051436195"
		 DEFAULT  '(555)-555-5555'
	CONSTRAINT "CK_Template_StringIsNumeric_1695312299"
		CHECK  ( ISNUMERIC(EmployeePhoneNumber) = 1 ),
	"EmployeeManagerId"  "sdPositiveIntegerNumber"."SurrogateKeyInt"  NULL ,
	"UserAuthorizationId" "sdPositiveIntegerNumber"."SurrogateKeyInt" ,
	"DateAdded"          "sdNanosecondPreciseDatetime"."TimeStampNow" 
	CONSTRAINT "DF_Template_CurrentSystemDateAndTime_18704936"
		 DEFAULT  sysdatetime()
	CONSTRAINT "CK_Template_SarbanesOxleyRetentionPeriod_2075963297"
		CHECK  ( DATEDIFF(year, DateAdded, sysdatetime()) < 7 ),
	"DateOfLastUpdate"   "sdNanosecondPreciseDatetime"."TimeStampNow" 
	CONSTRAINT "DF_Template_CurrentSystemDateAndTime_1962094071"
		 DEFAULT  sysdatetime()
	CONSTRAINT "CK_Template_SarbanesOxleyRetentionPeriod_275614864"
		CHECK  ( DATEDIFF(year, DateOfLastUpdate, sysdatetime()) < 7 )
)
go

ALTER TABLE "HumanResources"."Employee"
	 WITH CHECK ADD CONSTRAINT "CK_BirthDate" CHECK  ( BirthDate <= CONVERT([date],sysdatetime()) )
go

CREATE TABLE "Triggered"."Employee"
( 
	"EmployeeId"         "sdPositiveIntegerNumber"."SurrogateKeyInt"  NOT NULL ,
	"EmployeeFullName"   "sdPersonNameString"."FullName"  NOT NULL 
	CONSTRAINT "CK_Template_StringIsNotEmpty_2037555408"
		CHECK  ( EmployeeFullName != '' ),
	"Department"         "sdBusinessNameString"."DepartmentName"  NOT NULL 
	CONSTRAINT "DF_Template_DepartmentName_998068596"
		 DEFAULT  'Department Name'
	CONSTRAINT "CK_Template_StringIsNotEmpty_998355952"
		CHECK  ( Department != '' ),
	"Salary"             "sdMoneyNumber"."Currency"  NOT NULL 
	CONSTRAINT "DF_Template_DecimalZero_1520134930"
		 DEFAULT  0.000
	CONSTRAINT "CK_Template_DecimalIsGreaterThanOrEqualToZero_2043679434"
		CHECK  ( Salary >= 0.000 ),
	"Notes"              "sdDescriptionString"."Note"  NOT NULL 
	CONSTRAINT "DF_Template_Note_1344151301"
		 DEFAULT  'Insert Note here.'
	CONSTRAINT "CK_Template_StringIsLongerThanTenCharacters_2122037886"
		CHECK  ( LEN(Notes) > 10 ),
	"IsDeleted"          "sdFlagCharacterString"."IsDeletion"  NULL 
	CONSTRAINT "DF_Template_CharacterForNo_389623864"
		 DEFAULT  'N',
	"TransactionNumber"  "sdIntegerNumber"."SequenceNumber"  NULL ,
	"UserAuthenticatedKey" "sdPositiveIntegerNumber"."SurrogateKeyInt"  NULL 
	CONSTRAINT "DF_Employee_UserAuthenticatedKey"
		 DEFAULT  37,
	"SysStartTime"       "sdNanosecondPreciseDatetime"."TimeStampNow"  NULL ,
	"SysEndTime"         "sdNanosecondPreciseDatetime"."TimeStampNow"  NULL ,
	"TimestampRowChanged" "sdNanosecondPreciseDatetime"."TimeStampNow"  NULL ,
	"UserAuthorizationId" "sdPositiveIntegerNumber"."SurrogateKeyInt" ,
	"DateAdded"          "sdNanosecondPreciseDatetime"."TimeStampNow" 
	CONSTRAINT "DF_sdDatetime_sdNanosecondPreciseDatetime_TimeStampNow_1456790531"
		 DEFAULT  sysdatetime(),
	"DateOfLastUpdate"   "sdNanosecondPreciseDatetime"."TimeStampNow" 
	CONSTRAINT "DF_Template_CurrentSystemDateAndTime_1962094071"
		 DEFAULT  sysdatetime()
)
go

CREATE TABLE "dbo"."Nums"
( 
	"N"                  "sdPositiveIntegerNumber"."SurrogateKeyInt"  NOT NULL 
)
go

CREATE TABLE "Sales"."Order"
( 
	"OrderId"            "sdPositiveIntegerNumber"."SurrogateKeyInt"  IDENTITY ( 1,1 )  NOT NULL ,
	"CustomerId"         "sdPositiveIntegerNumber"."SurrogateKeyInt"  NOT NULL ,
	"EmployeeId"         "sdPositiveIntegerNumber"."SurrogateKeyInt"  NOT NULL ,
	"ShipperId"          "sdPositiveIntegerNumber"."SurrogateKeyInt"  NOT NULL ,
	"OrderDate"          "sdDateDatetime"."DateYYYYMMDD"  NOT NULL 
	CONSTRAINT "DF_Template_NineteenHundredJanuaryFirst_YearMonthDay_109979451"
		 DEFAULT  '19000101',
	"RequiredDate"       "sdDateDatetime"."DateYYYYMMDD"  NOT NULL 
	CONSTRAINT "DF_Template_NineteenHundredJanuaryFirst_YearMonthDay_1357114925"
		 DEFAULT  '19000101',
	"ShipToDate"         "sdDateDatetime"."DateYYYYMMDD"  NULL 
	CONSTRAINT "DF_Template_NineteenHundredJanuaryFirst_YearMonthDay_237384755"
		 DEFAULT  '19000101',
	"Freight"            "sdMoneyNumber"."Currency"  NOT NULL 
	CONSTRAINT "CK_Template_DecimalIsGreaterThanOrEqualToZero_1721012403"
		CHECK  ( Freight >= 0.000 ),
	"ShipToName"         "sdPersonNameString"."ContactName"  NOT NULL 
	CONSTRAINT "DF_Template_ContactName_2077295612"
		 DEFAULT  'Contact Name'
	CONSTRAINT "CK_Template_StringIsNotEmpty_1518575268"
		CHECK  ( ShipToName != '' ),
	"ShipToAddress"      "sdAddressString"."Address"  NOT NULL 
	CONSTRAINT "DF_Template_Address_2074053098"
		 DEFAULT  'Insert Address here.'
	CONSTRAINT "CK_Template_StringIsNotEmpty_912188333"
		CHECK  ( ShipToAddress != '' ),
	"ShipToCity"         "sdAddressString"."City"  NOT NULL 
	CONSTRAINT "DF_Template_City_1630353486"
		 DEFAULT  'City.'
	CONSTRAINT "CK_Template_StringIsNotEmpty_1702598544"
		CHECK  ( ShipToCity != '' ),
	"ShipToRegion"       "sdAddressString"."Region"  NULL 
	CONSTRAINT "DF_Template_Region_764366497"
		 DEFAULT  'Region.'
	CONSTRAINT "CK_Template_StringIsNotEmpty_160328385"
		CHECK  ( ShipToRegion != '' ),
	"ShipToPostalCode"   "sdAddressString"."PostalCode"  NULL 
	CONSTRAINT "DF_Template_PostalCode_780733816"
		 DEFAULT  'Post Code.'
	CONSTRAINT "CK_Template_StringIsNotEmpty_1493745454"
		CHECK  ( ShipToPostalCode != '' ),
	"ShipToCountry"      "sdAddressString"."Country"  NOT NULL 
	CONSTRAINT "DF_Template_Country_1754427081"
		 DEFAULT  'Country.'
	CONSTRAINT "CK_Template_StringIsNotEmpty_846196164"
		CHECK  ( ShipToCountry != '' ),
	"UserAuthenticationId" "sdPositiveIntegerNumber"."SurrogateKeyInt"  NOT NULL ,
	"DateAdded"          "sdNanosecondPreciseDatetime"."TimeStampNow"  NULL 
	CONSTRAINT "DF_Template_CurrentSystemDateAndTime_2125289957"
		 DEFAULT  sysdatetime()
	CONSTRAINT "CK_Template_SarbanesOxleyRetentionPeriod_112418978"
		CHECK  ( DATEDIFF(year, DateAdded, sysdatetime()) < 7 ),
	"DateOfLastUpdate"   "sdNanosecondPreciseDatetime"."TimeStampNow"  NULL 
	CONSTRAINT "DF_Template_CurrentSystemDateAndTime_846249447"
		 DEFAULT  sysdatetime()
	CONSTRAINT "CK_Template_SarbanesOxleyRetentionPeriod_1391459488"
		CHECK  ( DATEDIFF(year, DateOfLastUpdate, sysdatetime()) < 7 )
)
go

CREATE TABLE "Sales"."OrderDetail"
( 
	"OrderId"            "sdPositiveIntegerNumber"."SurrogateKeyInt"  NOT NULL ,
	"ProductId"          "sdPositiveIntegerNumber"."SurrogateKeyInt"  NOT NULL ,
	"UnitPrice"          "sdMoneyNumber"."Currency"  NOT NULL ,
	"Quantity"           "sdPositiveIntegerNumber"."QuantitySmall"  NOT NULL ,
	"DiscountPercentage" "sdDecimalNumber"."Percentage"  NOT NULL ,
	"DateAdded"          "sdNanosecondPreciseDatetime"."TimeStampNow" 
	CONSTRAINT "DF_Template_CurrentSystemDateAndTime_1030213197"
		 DEFAULT  sysdatetime()
	CONSTRAINT "CK_Template_SarbanesOxleyRetentionPeriod_1207495738"
		CHECK  ( DATEDIFF(year, DateAdded, sysdatetime()) < 7 ),
	"DateOfLastUpdate"   "sdNanosecondPreciseDatetime"."TimeStampNow" 
	CONSTRAINT "DF_Template_CurrentSystemDateAndTime_1708165029"
		 DEFAULT  sysdatetime()
	CONSTRAINT "CK_Template_SarbanesOxleyRetentionPeriod_349093333"
		CHECK  ( DATEDIFF(year, DateOfLastUpdate, sysdatetime()) < 7 ),
	"UserAuthorizationId" "sdPositiveIntegerNumber"."SurrogateKeyInt" 
)
go

CREATE TABLE "Production"."Product"
( 
	"ProductId"          "sdPositiveIntegerNumber"."SurrogateKeyInt"  IDENTITY ( 1,1 )  NOT NULL ,
	"ProductName"        "sdBusinessNameString"."ProductName"  NOT NULL 
	CONSTRAINT "DF_Template_ProductName_238487674"
		 DEFAULT  'Product Name'
	CONSTRAINT "CK_Template_StringIsNotEmpty_510976730"
		CHECK  ( ProductName != '' ),
	"SupplierId"         "sdPositiveIntegerNumber"."SurrogateKeyInt"  NOT NULL ,
	"CategoryId"         "sdPositiveIntegerNumber"."SurrogateKeyInt"  NOT NULL ,
	"UnitPrice"          "sdMoneyNumber"."Currency"  NOT NULL ,
	"Discontinued"       "sdPositiveIntegerNumber"."FlagBit"  NOT NULL 
	CONSTRAINT "CK_Template_IntegerIsOneOrZero_128874309"
		CHECK  ( [Discontinued]=0 OR [Discontinued]=1 ),
	"UserAuthorizationId" "sdPositiveIntegerNumber"."SurrogateKeyInt" ,
	"DateAdded"          "sdNanosecondPreciseDatetime"."TimeStampNow" 
	CONSTRAINT "DF_Template_CurrentSystemDateAndTime_534938665"
		 DEFAULT  sysdatetime()
	CONSTRAINT "CK_Template_SarbanesOxleyRetentionPeriod_1522319697"
		CHECK  ( DATEDIFF(year, DateAdded, sysdatetime()) < 7 ),
	"DateOfLastUpdate"   "sdNanosecondPreciseDatetime"."TimeStampNow" 
	CONSTRAINT "DF_Template_CurrentSystemDateAndTime_617754121"
		 DEFAULT  sysdatetime()
	CONSTRAINT "CK_Template_SarbanesOxleyRetentionPeriod_1619954814"
		CHECK  ( DATEDIFF(year, DateOfLastUpdate, sysdatetime()) < 7 )
)
go

CREATE TABLE "Sales"."Shipper"
( 
	"ShipperId"          "sdPositiveIntegerNumber"."SurrogateKeyInt"  IDENTITY ( 1,1 )  NOT NULL ,
	"ShipperCompanyName" "sdBusinessNameString"."CompanyName"  NOT NULL 
	CONSTRAINT "DF_Template_CompanyName_1132870144"
		 DEFAULT  'Company Name'
	CONSTRAINT "CK_Template_StringIsNotEmpty_264545896"
		CHECK  ( ShipperCompanyName != '' ),
	"PhoneNumber"        "sdNumberString"."TelephoneNumber"  NOT NULL 
	CONSTRAINT "DF_Template_USTelephoneNumber_1168230107"
		 DEFAULT  '(555)-555-5555'
	CONSTRAINT "CK_Template_StringIsNumeric_2025557855"
		CHECK  ( ISNUMERIC(PhoneNumber) = 1 ),
	"UserAuthorizationId" "sdPositiveIntegerNumber"."SurrogateKeyInt"  NOT NULL ,
	"DateAdded"          "sdNanosecondPreciseDatetime"."TimeStampNow" 
	CONSTRAINT "DF_Template_CurrentSystemDateAndTime_569019421"
		 DEFAULT  sysdatetime()
	CONSTRAINT "CK_Template_SarbanesOxleyRetentionPeriod_1488238941"
		CHECK  ( DATEDIFF(year, DateAdded, sysdatetime()) < 7 ),
	"DateOfLastUpdate"   "sdNanosecondPreciseDatetime"."TimeStampNow" 
	CONSTRAINT "DF_Template_CurrentSystemDateAndTime_818947585"
		 DEFAULT  sysdatetime()
	CONSTRAINT "CK_Template_SarbanesOxleyRetentionPeriod_1418761350"
		CHECK  ( DATEDIFF(year, DateOfLastUpdate, sysdatetime()) < 7 )
)
go

CREATE TABLE "Production"."Supplier"
( 
	"SupplierId"         "sdPositiveIntegerNumber"."SurrogateKeyInt"  IDENTITY ( 1,1 )  NOT NULL ,
	"SupplierCompanyName" "sdBusinessNameString"."CompanyName"  NOT NULL 
	CONSTRAINT "DF_Template_CompanyName_694814327"
		 DEFAULT  'Company Name'
	CONSTRAINT "CK_Template_StringIsNotEmpty_208593587"
		CHECK  ( SupplierCompanyName != '' ),
	"SupplierContactName" "sdPersonNameString"."ContactName"  NOT NULL 
	CONSTRAINT "DF_Template_ContactName_694555014"
		 DEFAULT  'Contact Name'
	CONSTRAINT "CK_Template_StringIsNotEmpty_275699631"
		CHECK  ( SupplierContactName != '' ),
	"SupplierContactTitle" "sdTitleString"."ContactTitle"  NOT NULL 
	CONSTRAINT "DF_Template_Title_1767604142"
		 DEFAULT  'Insert Title here.'
	CONSTRAINT "CK_Template_StringIsNotEmpty_367908015"
		CHECK  ( SupplierContactTitle != '' ),
	"SupplierAddress"    "sdAddressString"."Address"  NOT NULL 
	CONSTRAINT "DF_Template_Address_367666850"
		 DEFAULT  'Insert Address here.'
	CONSTRAINT "CK_Template_StringIsNotEmpty_1072730306"
		CHECK  ( SupplierAddress != '' ),
	"SupplierCity"       "sdAddressString"."City"  NOT NULL 
	CONSTRAINT "DF_Template_City_297322968"
		 DEFAULT  'City.'
	CONSTRAINT "CK_Template_StringIsNotEmpty_1259338234"
		CHECK  ( SupplierCity != '' ),
	"SupplierRegion"     "sdAddressString"."Region"  NULL 
	CONSTRAINT "DF_Template_Region_568664022"
		 DEFAULT  'Region.'
	CONSTRAINT "CK_Template_StringIsNotEmpty_1692918964"
		CHECK  ( SupplierRegion != '' ),
	"SupplierPostalCode" "sdAddressString"."PostalCode"  NULL 
	CONSTRAINT "DF_Template_PostalCode_2113764334"
		 DEFAULT  'Post Code.'
	CONSTRAINT "CK_Template_StringIsNotEmpty_359501895"
		CHECK  ( SupplierPostalCode != '' ),
	"SupplierCountry"    "sdAddressString"."Country"  NOT NULL 
	CONSTRAINT "DF_Template_Country_687292867"
		 DEFAULT  'Country.'
	CONSTRAINT "CK_Template_StringIsNotEmpty_1138722475"
		CHECK  ( SupplierCountry != '' ),
	"SupplierPhoneNumber" "sdNumberString"."TelephoneNumber"  NOT NULL 
	CONSTRAINT "DF_Template_USTelephoneNumber_1419486405"
		 DEFAULT  '(555)-555-5555'
	CONSTRAINT "CK_Template_StringIsNumeric_1697546139"
		CHECK  ( ISNUMERIC(SupplierPhoneNumber) = 1 ),
	"SupplierFaxNumber"  "sdNumberString"."TelephoneNumber"  NULL 
	CONSTRAINT "DF_Template_USTelephoneNumber_1127960496"
		 DEFAULT  '(555)-555-5555'
	CONSTRAINT "CK_Template_StringIsNumeric_270102075"
		CHECK  ( ISNUMERIC(SupplierFaxNumber) = 1 ),
	"UserAuthorizationId" "sdPositiveIntegerNumber"."SurrogateKeyInt"  NOT NULL ,
	"DateAdded"          "sdNanosecondPreciseDatetime"."TimeStampNow" 
	CONSTRAINT "DF_Template_CurrentSystemDateAndTime_115508430"
		 DEFAULT  sysdatetime()
	CONSTRAINT "CK_Template_SarbanesOxleyRetentionPeriod_1941749932"
		CHECK  ( DATEDIFF(year, DateAdded, sysdatetime()) < 7 ),
	"DateOfLastUpdate"   "sdNanosecondPreciseDatetime"."TimeStampNow" 
	CONSTRAINT "DF_Template_CurrentSystemDateAndTime_2146119176"
		 DEFAULT  sysdatetime()
	CONSTRAINT "CK_Template_SarbanesOxleyRetentionPeriod_91589759"
		CHECK  ( DATEDIFF(year, DateOfLastUpdate, sysdatetime()) < 7 )
)
go

CREATE TABLE "DbSecurity"."UserAuthorization"
( 
	"UserAuthorizationId" "sdPositiveIntegerNumber"."SurrogateKeyInt" ,
	"ClassTime"          "sdDatetimeString"."hh:mmTime" 
	CONSTRAINT "DF_UserAuthorization_ClassTime"
		 DEFAULT  '09:15'
	CONSTRAINT "CK_Template_TimeIsValid_763231469"
		CHECK  ( TRY_CONVERT(time, ClassTime) IS NOT NULL ),
	"IndividualProject"  "sdDescriptionString"."MediumDescription" 
	CONSTRAINT "DF_UserAuthorization_IndividualProject_1563001659"
		 DEFAULT  'CSCI381 Midterm Project'
	CONSTRAINT "CK_Template_StringIsLongerThanTenCharacters_595545135"
		CHECK  ( LEN(IndividualProject) > 10 ),
	"GroupMemberLastName" "sdPersonNameString"."LastName"  NOT NULL 
	CONSTRAINT "DF_Template_LastName_107493154"
		 DEFAULT  'Last Name'
	CONSTRAINT "CK_Template_StringIsNotEmpty_610956128"
		CHECK  ( GroupMemberLastName != '' ),
	"GroupMemberFirstName" "sdPersonNameString"."FirstName"  NOT NULL 
	CONSTRAINT "DF_Template_FirstName_2047485492"
		 DEFAULT  'First Name'
	CONSTRAINT "CK_Template_StringIsNotEmpty_697222804"
		CHECK  ( GroupMemberFirstName != '' ),
	"GroupName"          "sdNameString"."GroupName"  NOT NULL 
	CONSTRAINT "DF_Template_GroupName_2126442389"
		 DEFAULT  'Group Name.'
	CONSTRAINT "CK_Template_StringIsNotEmpty_176254297"
		CHECK  ( GroupName != '' ),
	"DateAdded"          "sdNanosecondPreciseDatetime"."TimeStampNow" 
	CONSTRAINT "DF_Template_CurrentSystemDateAndTime_955486654"
		 DEFAULT  sysdatetime()
	CONSTRAINT "CK_Template_SarbanesOxleyRetentionPeriod_1101771708"
		CHECK  ( DATEDIFF(year, DateAdded, sysdatetime()) < 7 ),
	"DateOfLastUpdate"   "sdNanosecondPreciseDatetime"."TimeStampNow" 
	CONSTRAINT "DF_Template_CurrentSystemDateAndTime_1883693829"
		 DEFAULT  sysdatetime()
	CONSTRAINT "CK_Template_SarbanesOxleyRetentionPeriod_173564533"
		CHECK  ( DATEDIFF(year, DateOfLastUpdate, sysdatetime()) < 7 )
)
go

CREATE TABLE "Audit"."VersionedEmployeeHistory"
( 
	"EmployeeId"         "sdPositiveIntegerNumber"."SurrogateKeyInt"  NOT NULL ,
	"EmployeeFullName"   "sdPersonNameString"."FullName"  NOT NULL ,
	"Department"         "sdBusinessNameString"."DepartmentName"  NOT NULL ,
	"Salary"             "sdMoneyNumber"."Currency"  NOT NULL ,
	"Notes"              "sdDescriptionString"."Note"  NOT NULL ,
	"SysStart"           "sdNanosecondPreciseDatetime"."TimeStampNow"  NOT NULL ,
	"SysEnd"             "sdNanosecondPreciseDatetime"."TimeStampNow"  NOT NULL ,
	"UserAuthorizationId" "sdPositiveIntegerNumber"."SurrogateKeyInt" ,
	"DateAdded"          "sdNanosecondPreciseDatetime"."TimeStampNow" ,
	"DateOfLastUpdate"   "sdNanosecondPreciseDatetime"."TimeStampNow" 
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

CREATE TABLE "SystemVersioned"."Employee"
( 
	"EmployeeId"         "sdPositiveIntegerNumber"."SurrogateKeyInt"  NOT NULL ,
	"EmployeeFullName"   "sdPersonNameString"."FullName"  NOT NULL 
	CONSTRAINT "CK_Template_StringIsNotEmpty_2037555408"
		CHECK  ( EmployeeFullName != '' ),
	"Department"         "sdBusinessNameString"."DepartmentName"  NOT NULL 
	CONSTRAINT "DF_Template_DepartmentName_998068596"
		 DEFAULT  'Department Name'
	CONSTRAINT "CK_Template_StringIsNotEmpty_998355952"
		CHECK  ( Department != '' ),
	"Salary"             "sdMoneyNumber"."Currency"  NOT NULL 
	CONSTRAINT "DF_Template_DecimalZero_1520134930"
		 DEFAULT  0.000
	CONSTRAINT "CK_Template_DecimalIsGreaterThanOrEqualToZero_2043679434"
		CHECK  ( Salary >= 0.000 ),
	"Notes"              "sdDescriptionString"."Note"  NOT NULL 
	CONSTRAINT "DF_Template_Note_1344151301"
		 DEFAULT  'Insert Note here.'
	CONSTRAINT "CK_Template_StringIsLongerThanTenCharacters_2122037886"
		CHECK  ( LEN(Notes) > 10 ),
	"SysStart"           "sdNanosecondPreciseDatetime"."TimeStampNow"  GENERATED ALWAYS AS ROW START HIDDEN  NOT NULL ,
	"SysEnd"             "sdNanosecondPreciseDatetime"."TimeStampNow"  GENERATED ALWAYS AS ROW END HIDDEN  NOT NULL 
	CONSTRAINT "DF_SystemVersioned_Employee_SysEnd"
		 DEFAULT  '99991231 23:59:59',
	"UserAuthorizationId" "sdPositiveIntegerNumber"."SurrogateKeyInt" ,
	"DateAdded"          "sdNanosecondPreciseDatetime"."TimeStampNow" 
	CONSTRAINT "DF_Template_CurrentSystemDateAndTime_18704936"
		 DEFAULT  sysdatetime(),
	"DateOfLastUpdate"   "sdNanosecondPreciseDatetime"."TimeStampNow" 
	CONSTRAINT "DF_Template_CurrentSystemDateAndTime_1962094071"
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
	ADD CONSTRAINT "FK_Order_Customer" FOREIGN KEY ("CustomerId") REFERENCES "Sales"."Customer"("CustomerId")
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE "Sales"."Order"
	  WITH CHECK CHECK CONSTRAINT "FK_Order_Customer"
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
	ADD CONSTRAINT "FK_Product_Supplier" FOREIGN KEY ("SupplierId") REFERENCES "Production"."Supplier"("SupplierId")
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE "Production"."Product"
	  WITH CHECK CHECK CONSTRAINT "FK_Product_Supplier"
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
    /* Production.Category has a Production.Product on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00013c23", PARENT_OWNER="Production", PARENT_TABLE="Category"
    CHILD_OWNER="Production", CHILD_TABLE="Product"
    P2C_VERB_PHRASE="has a", C2P_VERB_PHRASE="belongs to a", 
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
           @insCategoryId sdPositiveIntegerNumber.SurrogateKeyInt,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Production.Category has a Production.Product on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="000162b5", PARENT_OWNER="Production", PARENT_TABLE="Category"
    CHILD_OWNER="Production", CHILD_TABLE="Product"
    P2C_VERB_PHRASE="has a", C2P_VERB_PHRASE="belongs to a", 
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
    /* Sales.Customer makes a Sales.Order on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0001249c", PARENT_OWNER="Sales", PARENT_TABLE="Customer"
    CHILD_OWNER="Sales", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="makes a", C2P_VERB_PHRASE="is made by an", 
    FK_CONSTRAINT="FK_Order_Customer", FK_COLUMNS="CustomerId" */
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
           @insCustomerId sdPositiveIntegerNumber.SurrogateKeyInt,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Sales.Customer makes a Sales.Order on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00013896", PARENT_OWNER="Sales", PARENT_TABLE="Customer"
    CHILD_OWNER="Sales", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="makes a", C2P_VERB_PHRASE="is made by an", 
    FK_CONSTRAINT="FK_Order_Customer", FK_COLUMNS="CustomerId" */
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
    /* HumanResources.Employee processes Sales.Order on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00043892", PARENT_OWNER="HumanResources", PARENT_TABLE="Employee"
    CHILD_OWNER="Sales", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="processes", C2P_VERB_PHRASE="is processed by", 
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
    /* HumanResources.Employee manages HumanResources.Employee on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="HumanResources", PARENT_TABLE="Employee"
    CHILD_OWNER="HumanResources", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="manages", C2P_VERB_PHRASE="is managed by", 
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
    /* HumanResources.Employee manages HumanResources.Employee on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="HumanResources", PARENT_TABLE="Employee"
    CHILD_OWNER="HumanResources", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="manages", C2P_VERB_PHRASE="is managed by", 
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
           @insEmployeeId sdPositiveIntegerNumber.SurrogateKeyInt,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* HumanResources.Employee processes Sales.Order on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00048103", PARENT_OWNER="HumanResources", PARENT_TABLE="Employee"
    CHILD_OWNER="Sales", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="processes", C2P_VERB_PHRASE="is processed by", 
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
  /* HumanResources.Employee manages HumanResources.Employee on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="HumanResources", PARENT_TABLE="Employee"
    CHILD_OWNER="HumanResources", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="manages", C2P_VERB_PHRASE="is managed by", 
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
  /* HumanResources.Employee manages HumanResources.Employee on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="HumanResources", PARENT_TABLE="Employee"
    CHILD_OWNER="HumanResources", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="manages", C2P_VERB_PHRASE="is managed by", 
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
    /* Sales.Order has an Sales.OrderDetail on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00055a92", PARENT_OWNER="Sales", PARENT_TABLE="Order"
    CHILD_OWNER="Sales", CHILD_TABLE="OrderDetail"
    P2C_VERB_PHRASE="has an", C2P_VERB_PHRASE="belongs to an", 
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
    /* Sales.Shipper ships a Sales.Order on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Sales", PARENT_TABLE="Shipper"
    CHILD_OWNER="Sales", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="ships a", C2P_VERB_PHRASE="is shipped by", 
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
    /* HumanResources.Employee processes Sales.Order on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="HumanResources", PARENT_TABLE="Employee"
    CHILD_OWNER="Sales", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="processes", C2P_VERB_PHRASE="is processed by", 
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
    /* Sales.Customer makes a Sales.Order on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Sales", PARENT_TABLE="Customer"
    CHILD_OWNER="Sales", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="makes a", C2P_VERB_PHRASE="is made by an", 
    FK_CONSTRAINT="FK_Order_Customer", FK_COLUMNS="CustomerId" */
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
           @insOrderId sdPositiveIntegerNumber.SurrogateKeyInt,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Sales.Order has an Sales.OrderDetail on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="0005c65b", PARENT_OWNER="Sales", PARENT_TABLE="Order"
    CHILD_OWNER="Sales", CHILD_TABLE="OrderDetail"
    P2C_VERB_PHRASE="has an", C2P_VERB_PHRASE="belongs to an", 
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
  /* Sales.Shipper ships a Sales.Order on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Sales", PARENT_TABLE="Shipper"
    CHILD_OWNER="Sales", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="ships a", C2P_VERB_PHRASE="is shipped by", 
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
  /* HumanResources.Employee processes Sales.Order on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="HumanResources", PARENT_TABLE="Employee"
    CHILD_OWNER="Sales", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="processes", C2P_VERB_PHRASE="is processed by", 
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
  /* Sales.Customer makes a Sales.Order on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Sales", PARENT_TABLE="Customer"
    CHILD_OWNER="Sales", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="makes a", C2P_VERB_PHRASE="is made by an", 
    FK_CONSTRAINT="FK_Order_Customer", FK_COLUMNS="CustomerId" */
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
    /* Production.Product has a Sales.OrderDetail on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="0002f6e1", PARENT_OWNER="Production", PARENT_TABLE="Product"
    CHILD_OWNER="Sales", CHILD_TABLE="OrderDetail"
    P2C_VERB_PHRASE="has a", C2P_VERB_PHRASE="belongs to a", 
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
    /* Sales.Order has an Sales.OrderDetail on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Sales", PARENT_TABLE="Order"
    CHILD_OWNER="Sales", CHILD_TABLE="OrderDetail"
    P2C_VERB_PHRASE="has an", C2P_VERB_PHRASE="belongs to an", 
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
           @insOrderId sdPositiveIntegerNumber.SurrogateKeyInt, 
           @insProductId sdPositiveIntegerNumber.SurrogateKeyInt,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Production.Product has a Sales.OrderDetail on child update no action */
  /* ERWIN_RELATION:CHECKSUM="0002f326", PARENT_OWNER="Production", PARENT_TABLE="Product"
    CHILD_OWNER="Sales", CHILD_TABLE="OrderDetail"
    P2C_VERB_PHRASE="has a", C2P_VERB_PHRASE="belongs to a", 
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
  /* Sales.Order has an Sales.OrderDetail on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Sales", PARENT_TABLE="Order"
    CHILD_OWNER="Sales", CHILD_TABLE="OrderDetail"
    P2C_VERB_PHRASE="has an", C2P_VERB_PHRASE="belongs to an", 
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
    /* Production.Product has a Sales.OrderDetail on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="000438a0", PARENT_OWNER="Production", PARENT_TABLE="Product"
    CHILD_OWNER="Sales", CHILD_TABLE="OrderDetail"
    P2C_VERB_PHRASE="has a", C2P_VERB_PHRASE="belongs to a", 
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
    /* Production.Supplier supplies a Production.Product on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Production", PARENT_TABLE="Supplier"
    CHILD_OWNER="Production", CHILD_TABLE="Product"
    P2C_VERB_PHRASE="supplies a", C2P_VERB_PHRASE="is supplied by a", 
    FK_CONSTRAINT="FK_Product_Supplier", FK_COLUMNS="SupplierId" */
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
    /* Production.Category has a Production.Product on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Production", PARENT_TABLE="Category"
    CHILD_OWNER="Production", CHILD_TABLE="Product"
    P2C_VERB_PHRASE="has a", C2P_VERB_PHRASE="belongs to a", 
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
           @insProductId sdPositiveIntegerNumber.SurrogateKeyInt,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Production.Product has a Sales.OrderDetail on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00046199", PARENT_OWNER="Production", PARENT_TABLE="Product"
    CHILD_OWNER="Sales", CHILD_TABLE="OrderDetail"
    P2C_VERB_PHRASE="has a", C2P_VERB_PHRASE="belongs to a", 
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
  /* Production.Supplier supplies a Production.Product on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Production", PARENT_TABLE="Supplier"
    CHILD_OWNER="Production", CHILD_TABLE="Product"
    P2C_VERB_PHRASE="supplies a", C2P_VERB_PHRASE="is supplied by a", 
    FK_CONSTRAINT="FK_Product_Supplier", FK_COLUMNS="SupplierId" */
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
  /* Production.Category has a Production.Product on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Production", PARENT_TABLE="Category"
    CHILD_OWNER="Production", CHILD_TABLE="Product"
    P2C_VERB_PHRASE="has a", C2P_VERB_PHRASE="belongs to a", 
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
    /* Sales.Shipper ships a Sales.Order on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0001275c", PARENT_OWNER="Sales", PARENT_TABLE="Shipper"
    CHILD_OWNER="Sales", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="ships a", C2P_VERB_PHRASE="is shipped by", 
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
           @insShipperId sdPositiveIntegerNumber.SurrogateKeyInt,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Sales.Shipper ships a Sales.Order on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00013786", PARENT_OWNER="Sales", PARENT_TABLE="Shipper"
    CHILD_OWNER="Sales", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="ships a", C2P_VERB_PHRASE="is shipped by", 
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
    /* Production.Supplier supplies a Production.Product on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="000142f6", PARENT_OWNER="Production", PARENT_TABLE="Supplier"
    CHILD_OWNER="Production", CHILD_TABLE="Product"
    P2C_VERB_PHRASE="supplies a", C2P_VERB_PHRASE="is supplied by a", 
    FK_CONSTRAINT="FK_Product_Supplier", FK_COLUMNS="SupplierId" */
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
           @insSupplierId sdPositiveIntegerNumber.SurrogateKeyInt,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Production.Supplier supplies a Production.Product on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00015f27", PARENT_OWNER="Production", PARENT_TABLE="Supplier"
    CHILD_OWNER="Production", CHILD_TABLE="Product"
    P2C_VERB_PHRASE="supplies a", C2P_VERB_PHRASE="is supplied by a", 
    FK_CONSTRAINT="FK_Product_Supplier", FK_COLUMNS="SupplierId" */
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

go