
CREATE SCHEMA [Audit] AUTHORIZATION [dbo]
go

CREATE SCHEMA [Example] AUTHORIZATION [dbo]
go

CREATE SCHEMA [HumanResources] AUTHORIZATION [dbo]
go

CREATE SCHEMA [JsonOutput] AUTHORIZATION [dbo]
go

CREATE SCHEMA [Production] AUTHORIZATION [dbo]
go

CREATE SCHEMA [RelationalCalculii] AUTHORIZATION [dbo]
go

CREATE SCHEMA [RelationalCrossJoin] AUTHORIZATION [dbo]
go

CREATE SCHEMA [Sales] AUTHORIZATION [dbo]
go

CREATE SCHEMA [SystemVersioned] AUTHORIZATION [dbo]
go

CREATE SCHEMA [Temporal] AUTHORIZATION [dbo]
go

CREATE SCHEMA [Triggered] AUTHORIZATION [dbo]
go

CREATE SCHEMA [Udt] AUTHORIZATION [dbo]
go

CREATE SCHEMA [Utils] AUTHORIZATION [dbo]
go

CREATE SCHEMA [DbSecurity] AUTHORIZATION [dbo]
go

CREATE SCHEMA [Hashing]
go

CREATE SCHEMA [Data]
go

CREATE SCHEMA [Service]
go

CREATE SCHEMA [dBlob]
go

CREATE SCHEMA [dDatetime]
go

CREATE SCHEMA [dGroupMidterm] AUTHORIZATION [dbo]
go

CREATE SCHEMA [dNumber]
go

CREATE SCHEMA [dString]
go

CREATE SCHEMA [sdAddressString_AN]
go

CREATE SCHEMA [sdKeyIntegerNumber_JG]
go

CREATE SCHEMA [sdAuditSysTime_AG]
go

CREATE SCHEMA [sdContactNumber_AG]
go

CREATE SCHEMA [sdFlagCharacter_JG]
go

CREATE SCHEMA [sdIntegerNumber_JG]
go

CREATE SCHEMA [sdMiscellanousStrings_AG]
go

CREATE SCHEMA [sdMoneyNumber_JG]
go

CREATE SCHEMA [sdNameString_AG]
go

CREATE SCHEMA [sdNanosecondPreciseDatetime_JG]
go

CREATE SCHEMA [sdPositiveIntegerNumber_JG]
go

CREATE SCHEMA [sdTitleString_JG]
go

CREATE SCHEMA [sdYearMonthDay_AG]
go

CREATE TYPE [dbo].[dGroupMidtermProject]
	FROM CHAR(1) NULL
go

CREATE TYPE [dGroupMidterm].[dBlob]
	FROM VARBINARY(MAX) NULL
go

CREATE TYPE [dGroupMidterm].[dString]
	FROM CHAR(1) NULL
go

CREATE TYPE [dGroupMidterm].[dNumber]
	FROM INTEGER NULL
go

CREATE TYPE [dGroupMidterm].[dDateTime]
	FROM DATETIME NULL
go

CREATE TYPE [dString].[sdFlagCharacterString]
	FROM CHAR(1) NULL
go

CREATE TYPE [dNumber].[sdIntegerNumber_JG]
	FROM INTEGER NULL
go

CREATE TYPE [sdIntegerNumber_JG].[sdPositiveIntegerNumber_JG]
	FROM INTEGER NULL
go

CREATE TYPE [sdPositiveIntegerNumber_JG].[sdKeyIntegerNumber_JG]
	FROM INTEGER NULL
go

CREATE TYPE [dNumber].[sdMoneyNumber_JG]
	FROM INTEGER NULL
go

CREATE TYPE [dDatetime].[sdNanosecondPreciseDatetime_JG]
	FROM DATETIME NULL
go

CREATE TYPE [dString].[sdTitleString_JG]
	FROM CHAR(1) NULL
go

CREATE TYPE [sdTitleString_JG].[contactTitle_JG]
	FROM NVARCHAR(60) NULL
go

CREATE TYPE [sdMoneyNumber_JG].[currency_JG]
	FROM INTEGER NULL
go

CREATE TYPE [sdPositiveIntegerNumber_JG].[grade_JG]
	FROM INTEGER NULL
go

CREATE TYPE [sdIntegerNumber_JG].[sequenceNumber_JG]
	FROM INTEGER NOT NULL
go

CREATE TYPE [sdKeyIntegerNumber_JG].[surrogateKeyIdentity_JG]
	FROM INTEGER NOT NULL
go

CREATE TYPE [sdFlagCharacter_JG].[triggerOption_JG]
	FROM CHAR(1) NULL
go

CREATE TYPE [dString].[sdAddressString_AN]
	FROM CHAR(1) NULL
go

CREATE TYPE [sdAddressString_AN].[addressline_AN]
	FROM VARCHAR(35) NULL
go

CREATE TYPE [sdMiscellanousStrings_AG].[classTime_AN]
	FROM CHAR(5) NULL
go

CREATE TYPE [sdContactNumber_AG].[phoneNumber_AN]
	FROM CHAR(14) NULL
go

CREATE TYPE [sdAddressString_AN].[postalCode_AN]
	FROM CHAR(5) NULL
go

CREATE TYPE [sdAddressString_AN].[state_AN]
	FROM CHAR(2) NULL
go

CREATE TYPE [sdNanosecondPreciseDatetime_JG].[timeStamp_AN]
	FROM DATETIME2 NULL
go

CREATE TYPE [sdAuditSysTime_AG].[auditTriggeredTimestamp_WL]
	FROM DATETIME2(7) NOT NULL
go

CREATE TYPE [sdAddressString_AN].[city_WL]
	FROM NVARCHAR(20) NULL
go

CREATE TYPE [sdMiscellanousStrings_AG].[notes_WL]
	FROM NVARCHAR(300) NULL
go

CREATE TYPE [sdPositiveIntegerNumber_JG].[quantity_WL]
	FROM INTEGER NOT NULL
go

CREATE TYPE [sdAuditSysTime_AG].[sysEnd_WL]
	FROM DATETIME2(7) NOT NULL
go

CREATE TYPE [sdAuditSysTime_AG].[sysStart_WL]
	FROM DATETIME2(7) NOT NULL
go

CREATE TYPE [sdMoneyNumber_JG].[unitPrice_WL]
	FROM INTEGER NOT NULL
go

CREATE TYPE [sdFlagCharacter_JG].[flag_WL]
	FROM CHAR(1) NOT NULL
go

CREATE TYPE [dString].[sdContactInformation_AG]
	FROM CHAR(14) NULL
go

CREATE TYPE [dString].[sdNameString_AG]
	FROM CHAR(1) NULL
go

CREATE TYPE [sdNameString_AG].[companyName_AG]
	FROM NVARCHAR(60) NULL
go

CREATE TYPE [sdAddressString_AN].[country_AG]
	FROM CHAR(3) NULL
go

CREATE TYPE [sdContactNumber_AG].[faxNumber_AG]
	FROM CHAR(14) NULL
go

CREATE TYPE [sdNameString_AG].[fullName_AG]
	FROM NVARCHAR(52) NULL
go

CREATE TYPE [sdTitleString_JG].[titleOfCourtesy_AG]
	FROM CHAR(4) NULL
go

CREATE TYPE [sdAddressString_AN].[region_AG]
	FROM NVARCHAR(40) NULL
go

CREATE TYPE [sdNameString_AG].[lastName_AG]
	FROM NVARCHAR(25) NULL
go

CREATE TYPE [dDatetime].[sdYearMonthDay_AG]
	FROM DATE NULL
go

CREATE TYPE [sdYearMonthDay_AG].[hireDate_AG]
	FROM DATE NULL
go

CREATE TYPE [sdYearMonthDay_AG].[month_AG]
	FROM CHAR(2) NULL
go

CREATE TYPE [sdYearMonthDay_AG].[day_AG]
	FROM CHAR(2) NULL
go

CREATE TYPE [sdNameString_AG].[firstName_AG]
	FROM NVARCHAR(25) NULL
go

CREATE TYPE [sdYearMonthDay_AG].[birthDate_AG]
	FROM DATE NULL
go

CREATE TYPE [sdYearMonthDay_AG].[year_AG]
	FROM CHAR(4) NULL
go

CREATE TYPE [dString].[sdMiscellanousStrings]
	FROM CHAR(1) NULL
go

CREATE TYPE [dDatetime].[sdAuditSysTime]
	FROM DATETIME2(7) NULL
go

CREATE TYPE [email_WL]
	FROM VARCHAR(40) NULL
go

CREATE TYPE [salary_AN]
	FROM INTEGER NULL
go

CREATE TYPE [surrogateKey_AN]
	FROM INTEGER NULL
go

CREATE TYPE [sdDateFormat]
	FROM DATETIME NULL
go

CREATE TYPE [YearMonthDay]
	FROM DATE NULL
go

CREATE TYPE [departmentName_AN]
	FROM NVARCHAR(25) NULL
go

CREATE TYPE [fullAddress_AN]
	FROM NVARCHAR(100) NULL
go

CREATE TYPE [sdDecimalNumber]
	FROM INTEGER NULL
go

CREATE TYPE [percentage]
	FROM DECIMAL(4,3) NULL
go

CREATE TYPE [freight]
	FROM INTEGER NULL
go

CREATE TABLE [Triggered].[AuditTriggeredEmployeeHistory]
( 
	[TriggeredEmployeeHistoryId] [sdKeyIntegerNumber_JG].[surrogateKeyIdentity_JG]  IDENTITY ( 1,1 )  NOT NULL 
	CONSTRAINT [CHK_IntegerIsGreaterThanZero_JG_360563888]
		CHECK  ( TriggeredEmployeeHistoryId > 0 ),
	[AuditDate]          [sdNanosecondPreciseDatetime_JG].[timeStamp_AN]  NULL 
	CONSTRAINT [DFT_CurrentSysTime_1299892528]
		 DEFAULT  sysdatetime(),
	[TransactionNumber]  [sdIntegerNumber_JG].[sequenceNumber_JG]  NULL ,
	[IsDeleted]          [sdFlagCharacter_JG].[flag_WL]  NULL 
	CONSTRAINT [CHK_YesNoFlag_WL_183201200]
		CHECK  ( [IsDeleted]='Y' OR [IsDeleted]='N' ),
	[DBAction]           [sdFlagCharacter_JG].[triggerOption_JG] 
	CONSTRAINT [CHK_TriggerOptionUpdateDelete_JG_1635856640]
		CHECK  ( [DBAction]='U' OR [DBAction]='D' OR [DBAction]='I' ),
	[SysStartTime]       [sdAuditSysTime_AG].[sysStart_WL]  NULL 
	CONSTRAINT [CHK_SysStart_WL_1721604136]
		CHECK  ( [SysStartTime]  < '9999-12-31' ),
	[SysEndTime]         [sdAuditSysTime_AG].[sysEnd_WL]  NULL 
	CONSTRAINT [CHK_SysEnd_WL_438888481]
		CHECK  ( [SysEndTime] > '0001-01-01' ),
	[TimestampRowChanged] [sdNanosecondPreciseDatetime_JG].[timeStamp_AN]  NULL 
	CONSTRAINT [DFT_CurrentSysTime_916115905]
		 DEFAULT  sysdatetime(),
	[Notes]              [sdMiscellanousStrings_AG].[notes_WL]  NULL ,
	[UserAuthenticatedKey] [surrogateKey_AN]  NULL 
	CONSTRAINT [CHK_IntegerIsGreaterThanZero_JG_729193813]
		CHECK  ( UserAuthenticatedKey > 0 ),
	[EmployeeId]         [surrogateKey_AN]  NULL 
	CONSTRAINT [CHK_IntegerIsGreaterThanZero_JG_1212872962]
		CHECK  ( EmployeeId > 0 ),
	[FullName]           [sdNameString_AG].[fullName_AG]  NULL ,
	[Department]         [departmentName_AN]  NULL 
	CONSTRAINT [CHK_StartwithCapitalLetter_AG_810692677]
		CHECK  ( [Department] like '[A-Z]%' ),
	[Salary]             [salary_AN]  NULL ,
	[BirthDate]          [sdYearMonthDay_AG].[birthDate_AG]  NULL 
	CONSTRAINT [DFT_StartOfTime_AG_1351545446]
		 DEFAULT  '19000101',
	[HireDate]           [sdYearMonthDay_AG].[hireDate_AG]  NULL 
	CONSTRAINT [DFT_CurrentDate_AG_1887111079]
		 DEFAULT  CONVERT (date, SYSDATETIME()),
	[PhoneNumber]        [sdContactNumber_AG].[phoneNumber_AN]  NULL 
	CONSTRAINT [CHK_PhoneNumber_AN_1744420262]
		CHECK  ( PhoneNumber LIKE '%[0-9\-]' ),
	[FullAddress]        [fullAddress_AN] ,
	[DateAdded]          [YearMonthDay] 
	CONSTRAINT [DFT_CurrentSysTime_1621867805]
		 DEFAULT  sysdatetime(),
	[DateOfLastUpdate]   [sdNanosecondPreciseDatetime_JG].[timeStamp_AN] 
	CONSTRAINT [DFT_CurrentSysTime_577772361]
		 DEFAULT  sysdatetime()
)
go

ALTER TABLE [Triggered].[AuditTriggeredEmployeeHistory]
	 WITH CHECK ADD CONSTRAINT [CHK_TimeStamp_AN_1497629324] CHECK  ( TimestampRowChanged BETWEEN '1900-01-01' AND sysdatetime() )
go

CREATE TABLE [Production].[Category]
( 
	[CategoryId]         [sdKeyIntegerNumber_JG].[surrogateKeyIdentity_JG]  IDENTITY ( 1,1 )  NOT NULL 
	CONSTRAINT [CHK_IntegerIsGreaterThanZero_JG_911954493]
		CHECK  ( CategoryId > 0 ),
	[CategoryName]       [sdNameString_AG].[fullName_AG]  NULL ,
	[Description]        [sdMiscellanousStrings_AG].[notes_WL]  NULL ,
	[UserAuthorizationId] [surrogateKey_AN] 
	CONSTRAINT [CHK_IntegerIsGreaterThanZero_JG_1149603570]
		CHECK  ( UserAuthorizationId > 0 ),
	[DateAdded]          [sdNanosecondPreciseDatetime_JG].[timeStamp_AN] 
	CONSTRAINT [DFT_CurrentSysTime_958622402]
		 DEFAULT  sysdatetime(),
	[DateOfLastUpdate]   [sdNanosecondPreciseDatetime_JG].[timeStamp_AN] 
	CONSTRAINT [DFT_CurrentSysTime_17427057]
		 DEFAULT  sysdatetime()
)
go

CREATE TABLE [Sales].[Customer]
( 
	[CustomerId]         [sdKeyIntegerNumber_JG].[surrogateKeyIdentity_JG]  IDENTITY ( 1,1 )  NOT NULL 
	CONSTRAINT [CHK_IntegerIsGreaterThanZero_JG_309805613]
		CHECK  ( CustomerId > 0 ),
	[CustomerCompanyName] [sdNameString_AG].[companyName_AG]  NULL 
	CONSTRAINT [CHK_StartwithCapitalLetter_AG_800970338]
		CHECK  ( [CustomerCompanyName] like '[A-Z]%' ),
	[CustomerContactName] [sdNameString_AG].[fullName_AG]  NULL 
	CONSTRAINT [CHK_FullName_AG_717737074]
		CHECK  ( [CustomerContactName] like '[A-Z]% [A-Z]%' ),
	[CustomerContactTitle] [sdTitleString_JG].[contactTitle_JG]  NULL 
	CONSTRAINT [CHK_StringIsNotEmpty_JG_158049481]
		CHECK  ( CustomerContactTitle != '' ),
	[CustomerAddress]    [sdAddressString_AN].[addressline_AN]  NULL ,
	[CustomerCity]       [sdAddressString_AN].[city_WL]  NULL ,
	[CustomerRegion]     [sdAddressString_AN].[region_AG]  NULL ,
	[CustomerPostalCode] [sdAddressString_AN].[postalCode_AN]  NULL ,
	[CustomerCountry]    [sdAddressString_AN].[country_AG]  NULL 
	CONSTRAINT [DFT_NotSlashApplicable_AG_1846856601]
		 DEFAULT  'N/A'
	CONSTRAINT [CHK_CountryCodes_AG_621145486]
		CHECK  ( [CustomerCountry] like '[A-Z][A-Z][A-Z]' ),
	[CustomerPhoneNumber] [sdContactNumber_AG].[phoneNumber_AN]  NULL 
	CONSTRAINT [DFT_MobileNumber_AG_1183564653]
		 DEFAULT  '(000)-000-0000'
	CONSTRAINT [CHK_PhoneNumber_AN_2069674448]
		CHECK  ( CustomerPhoneNumber LIKE '%[0-9\-]' ),
	[CustomerFaxNumber]  [sdContactNumber_AG].[faxNumber_AG]  NULL 
	CONSTRAINT [DFT_MobileNumber_AG_1147095859]
		 DEFAULT  '(000)-000-0000',
	[UserAuthorizationId] [surrogateKey_AN] 
	CONSTRAINT [CHK_IntegerIsGreaterThanZero_JG_1383958240]
		CHECK  ( UserAuthorizationId > 0 ),
	[DateAdded]          [sdNanosecondPreciseDatetime_JG].[timeStamp_AN] 
	CONSTRAINT [DFT_CurrentSysTime_1093369012]
		 DEFAULT  sysdatetime(),
	[DateOfLastUpdate]   [sdNanosecondPreciseDatetime_JG].[timeStamp_AN] 
	CONSTRAINT [DFT_CurrentSysTime_216927614]
		 DEFAULT  sysdatetime()
)
go

ALTER TABLE [Sales].[Customer]
	 WITH CHECK ADD CONSTRAINT [CHK_ValidString_AN_824436934] CHECK  ( CustomerAddress LIKE '%[A-Z0-9a-z\-]' )
go

ALTER TABLE [Sales].[Customer]
	 WITH CHECK ADD CONSTRAINT [CHK_PostalCode_AN_987597584] CHECK  ( CustomerPostalCode LIKE '[0-9][0-9][0-9][0-9][0-9]' )
go

CREATE TABLE [Triggered].[Employee]
( 
	[EmployeeId]         [surrogateKey_AN]  NOT NULL 
	CONSTRAINT [CHK_IntegerIsGreaterThanZero_JG_175991849]
		CHECK  ( EmployeeId > 0 ),
	[FullName]           [sdNameString_AG].[fullName_AG]  NULL ,
	[Department]         [departmentName_AN]  NULL 
	CONSTRAINT [CHK_StartwithCapitalLetter_AG_1552354697]
		CHECK  ( [Department] like '[A-Z]%' ),
	[Salary]             [salary_AN]  NULL ,
	[BirthDate]          [sdYearMonthDay_AG].[birthDate_AG]  NULL 
	CONSTRAINT [DFT_StartOfTime_AG_1011501928]
		 DEFAULT  '19000101',
	[HireDate]           [sdYearMonthDay_AG].[hireDate_AG]  NULL 
	CONSTRAINT [DFT_CurrentDate_AG_1561448855]
		 DEFAULT  CONVERT (date, SYSDATETIME()),
	[PhoneNumber]        [sdContactNumber_AG].[phoneNumber_AN]  NULL 
	CONSTRAINT [CHK_PhoneNumber_AN_1513665921]
		CHECK  ( PhoneNumber LIKE '%[0-9\-]' ),
	[FullAddress]        [fullAddress_AN] ,
	[DateAdded]          [YearMonthDay] 
	CONSTRAINT [DFT_CurrentSysTime_741179569]
		 DEFAULT  sysdatetime(),
	[DateOfLastUpdate]   [sdNanosecondPreciseDatetime_JG].[timeStamp_AN] 
	CONSTRAINT [DFT_CurrentSysTime_268635002]
		 DEFAULT  sysdatetime()
)
go

CREATE TABLE [HumanResources].[Employee]
( 
	[EmployeeId]         [sdKeyIntegerNumber_JG].[surrogateKeyIdentity_JG]  IDENTITY ( 1,1 )  NOT NULL 
	CONSTRAINT [CHK_IntegerIsGreaterThanZero_JG_175991849]
		CHECK  ( EmployeeId > 0 ),
	[EmployeeLastName]   [sdNameString_AG].[firstName_AG]  NULL 
	CONSTRAINT [CHK_StartwithCapitalLetter_AG_1413043674]
		CHECK  ( [EmployeeLastName] like '[A-Z]%' ),
	[EmployeeFirstName]  [sdNameString_AG].[lastName_AG]  NULL 
	CONSTRAINT [CHK_StartwithCapitalLetter_AG_1127309915]
		CHECK  ( [EmployeeFirstName] like '[A-Z]%' ),
	[EmployeeTitle]      [sdTitleString_JG].[contactTitle_JG]  NULL 
	CONSTRAINT [CHK_StringIsNotEmpty_JG_509046343]
		CHECK  ( EmployeeTitle != '' ),
	[EmployeeTitleOfCourtesy] [sdTitleString_JG].[titleOfCourtesy_AG]  NULL 
	CONSTRAINT [CHK_TitleOfCourtesy_AG_2125145303]
		CHECK  ( [EmployeeTitleOfCourtesy]='Mr.' OR [EmployeeTitleOfCourtesy]='Ms.' OR [EmployeeTitleOfCourtesy]='Mrs.' OR [EmployeeTitleOfCourtesy]='Dr.' OR [EmployeeTitleOfCourtesy]='Jr.' ),
	[EmployeeBirthDate]  [sdYearMonthDay_AG].[birthDate_AG]  NULL 
	CONSTRAINT [DFT_StartOfTime_AG_234828350]
		 DEFAULT  '19000101',
	[EmployeeHireDate]   [sdYearMonthDay_AG].[hireDate_AG]  NULL 
	CONSTRAINT [DFT_CurrentDate_AG_853771902]
		 DEFAULT  CONVERT (date, SYSDATETIME()),
	[EmployeeDepartment] [departmentName_AN]  NULL 
	CONSTRAINT [CHK_StartwithCapitalLetter_AG_775681119]
		CHECK  ( [EmployeeDepartment] like '[A-Z]%' ),
	[EmployeeSalary]     [salary_AN]  NULL ,
	[EmployeeAddress]    [sdAddressString_AN].[addressline_AN]  NULL ,
	[EmployeeCity]       [sdAddressString_AN].[city_WL]  NULL ,
	[EmployeeRegion]     [sdAddressString_AN].[region_AG]  NULL ,
	[EmployeePostalCode] [sdAddressString_AN].[postalCode_AN]  NULL ,
	[EmployeeCountry]    [sdAddressString_AN].[country_AG]  NULL 
	CONSTRAINT [DFT_NotSlashApplicable_AG_1914488175]
		 DEFAULT  'N/A',
	[EmployeePhoneNumber] [sdContactNumber_AG].[phoneNumber_AN]  NULL 
	CONSTRAINT [CHK_PhoneNumber_AN_1935860684]
		CHECK  ( EmployeePhoneNumber LIKE '%[0-9\-]' ),
	[EmployeeManagerId]  [surrogateKey_AN]  NULL 
	CONSTRAINT [CHK_IntegerIsGreaterThanZero_JG_1181449331]
		CHECK  ( EmployeeManagerId > 0 ),
	[UserAuthorizationId] [surrogateKey_AN] 
	CONSTRAINT [CHK_IntegerIsGreaterThanZero_JG_1435665628]
		CHECK  ( UserAuthorizationId > 0 ),
	[DateAdded]          [YearMonthDay] 
	CONSTRAINT [DFT_CurrentSysTime_741179569]
		 DEFAULT  sysdatetime(),
	[DateOfLastUpdate]   [sdNanosecondPreciseDatetime_JG].[timeStamp_AN] 
	CONSTRAINT [DFT_CurrentSysTime_268635002]
		 DEFAULT  sysdatetime()
)
go

ALTER TABLE [HumanResources].[Employee]
	 WITH CHECK ADD CONSTRAINT [CHK_ValidString_AN_958250698] CHECK  ( EmployeeAddress LIKE '%[A-Z0-9a-z\-]' )
go

ALTER TABLE [HumanResources].[Employee]
	 WITH CHECK ADD CONSTRAINT [CHK_PostalCode_AN_283218698] CHECK  ( EmployeePostalCode LIKE '[0-9][0-9][0-9][0-9][0-9]' )
go

CREATE TABLE [Service].[Feedback]
( 
	[MemberID]           [sdKeyIntegerNumber_JG].[surrogateKeyIdentity_JG]  IDENTITY ( 1,1 )  NOT NULL 
	CONSTRAINT [CHK_IntegerIsGreaterThanZero_JG_976391844]
		CHECK  ( MemberID > 0 ),
	[Feedback]           [sdMiscellanousStrings_AG].[notes_WL]  MASKED WITH (FUNCTION = 'default()') NULL ,
	[Rating]             [sdPositiveIntegerNumber_JG].[grade_JG]  MASKED WITH (FUNCTION = 'default()') NULL 
	CONSTRAINT [CHK_IntegerBetweenZeroAndOneHundred_JG_268904424]
		CHECK  ( Rating BETWEEN 0 AND 100 ),
	[Received_On]        [sdNanosecondPreciseDatetime_JG].[timeStamp_AN]  NULL 
	CONSTRAINT [DFT_CurrentSysTime_2121372218]
		 DEFAULT  sysdatetime()
)
go

ALTER TABLE [Service].[Feedback]
	 WITH CHECK ADD CONSTRAINT [CHK_TimeStamp_AN_179745409] CHECK  ( Received_On BETWEEN '1900-01-01' AND sysdatetime() )
go

CREATE TABLE [Data].[Membership]
( 
	[MemberID]           [sdKeyIntegerNumber_JG].[surrogateKeyIdentity_JG]  IDENTITY ( 1,1 )  NOT NULL 
	CONSTRAINT [CHK_IntegerIsGreaterThanZero_JG_1301638409]
		CHECK  ( MemberID > 0 ),
	[FirstName]          [sdNameString_AG].[firstName_AG]  MASKED WITH (FUNCTION = 'partial(1, "xxxxx", 1)') NULL 
	CONSTRAINT [CHK_StartwithCapitalLetter_AG_1277830824]
		CHECK  ( [FirstName] like '[A-Z]%' ),
	[LastName]           [sdNameString_AG].[lastName_AG]  MASKED WITH (FUNCTION = 'default()') NULL 
	CONSTRAINT [CHK_StartwithCapitalLetter_AG_1370094161]
		CHECK  ( [LastName] like '[A-Z]%' ),
	[Phone]              [sdContactNumber_AG].[phoneNumber_AN]  MASKED WITH (FUNCTION = 'default()') NULL 
	CONSTRAINT [DFT_MobileNumber_AG_1191070312]
		 DEFAULT  '(000)-000-0000'
	CONSTRAINT [CHK_PhoneNumber_AN_1496371262]
		CHECK  ( Phone LIKE '%[0-9\-]' ),
	[Email]              [email_WL]  MASKED WITH (FUNCTION = 'email()') NULL 
	CONSTRAINT [CK_Email_WL_1145602502]
		CHECK  ( Email LIKE '([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})' ),
	[DiscountCode]       [sdIntegerNumber_JG].[sequenceNumber_JG]  MASKED WITH (FUNCTION = 'random(1, 100)') NULL ,
	[BirthDay]           [sdYearMonthDay_AG].[birthDate_AG]  MASKED WITH (FUNCTION = 'default()') NULL 
	CONSTRAINT [DFT_StartOfTime_AG_1908097591]
		 DEFAULT  '19000101'
)
go

CREATE TABLE [dbo].[Nums]
( 
	[N]                  [sdKeyIntegerNumber_JG].[surrogateKeyIdentity_JG]  IDENTITY ( 1,1 )  NOT NULL 
	CONSTRAINT [CHK_IntegerIsGreaterThanZero_JG_1615617432]
		CHECK  ( N > 0 )
)
go

CREATE TABLE [Sales].[OrderDetail]
( 
	[UnitPrice]          [sdMoneyNumber_JG].[unitPrice_WL]  NULL ,
	[Quantity]           [sdPositiveIntegerNumber_JG].[quantity_WL]  NULL ,
	[DiscountPercentage] [percentage]  NULL 
	CONSTRAINT [CHK_DecimalIsGreaterThanZero_JG_46183865]
		CHECK  ( DiscountPercentage > 0.000 ),
	[UserAuthorizationId] [surrogateKey_AN] 
	CONSTRAINT [CHK_IntegerIsGreaterThanZero_JG_187588512]
		CHECK  ( UserAuthorizationId > 0 ),
	[DateAdded]          [sdNanosecondPreciseDatetime_JG].[timeStamp_AN] 
	CONSTRAINT [DFT_CurrentSysTime_1873625861]
		 DEFAULT  sysdatetime(),
	[DateOfLastUpdate]   [sdNanosecondPreciseDatetime_JG].[timeStamp_AN] 
	CONSTRAINT [DFT_CurrentSysTime_979442115]
		 DEFAULT  sysdatetime(),
	[OrderId]            [surrogateKey_AN]  NOT NULL 
	CONSTRAINT [DFT_DecimalZero_JG_1919631714]
		 DEFAULT  0.000
	CONSTRAINT [CHK_IntegerIsGreaterThanZero_JG_1401779197]
		CHECK  ( OrderId > 0 ),
	[ProductId]          [surrogateKey_AN]  NOT NULL 
	CONSTRAINT [CHK_IntegerIsGreaterThanZero_JG_942672888]
		CHECK  ( ProductId > 0 )
)
go

ALTER TABLE [Sales].[OrderDetail]
	 WITH CHECK ADD CONSTRAINT [CHK_TimeStamp_AN_1149131844] CHECK  ( DateAdded BETWEEN '1900-01-01' AND sysdatetime() )
go

ALTER TABLE [Sales].[OrderDetail]
	 WITH CHECK ADD CONSTRAINT [CHK_TimeStamp_AN_1589246382] CHECK  ( DateOfLastUpdate BETWEEN '1900-01-01' AND sysdatetime() )
go

CREATE TABLE [Sales].[Orders]
( 
	[OrderId]            [sdKeyIntegerNumber_JG].[surrogateKeyIdentity_JG]  IDENTITY ( 1,1 )  NOT NULL 
	CONSTRAINT [CHK_IntegerIsGreaterThanZero_JG_1310856774]
		CHECK  ( OrderId > 0 ),
	[CustomerId]         [surrogateKey_AN]  NULL 
	CONSTRAINT [CHK_IntegerIsGreaterThanZero_JG_1886502021]
		CHECK  ( CustomerId > 0 ),
	[EmployeeId]         [surrogateKey_AN]  NULL 
	CONSTRAINT [CHK_IntegerIsGreaterThanZero_JG_1953408903]
		CHECK  ( EmployeeId > 0 ),
	[ShipperId]          [surrogateKey_AN]  NULL 
	CONSTRAINT [CHK_IntegerIsGreaterThanZero_JG_1342868932]
		CHECK  ( ShipperId > 0 ),
	[OrderDate]          [sdNanosecondPreciseDatetime_JG].[timeStamp_AN]  NULL 
	CONSTRAINT [DFT_CurrentSysTime_1327100042]
		 DEFAULT  sysdatetime(),
	[RequiredDate]       [sdNanosecondPreciseDatetime_JG].[timeStamp_AN]  NULL 
	CONSTRAINT [DFT_CurrentSysTime_1665976159]
		 DEFAULT  sysdatetime(),
	[ShipToDate]         [sdNanosecondPreciseDatetime_JG].[timeStamp_AN]  NULL 
	CONSTRAINT [DFT_CurrentSysTime_271664058]
		 DEFAULT  sysdatetime(),
	[Freight]            [freight]  NULL 
	CONSTRAINT [DFT_IntegerZero_JG_350620699]
		 DEFAULT  0
	CONSTRAINT [CHK_IntegerIsGreaterThanZero_JG_1596326501]
		CHECK  ( Freight > 0 ),
	[ShipToName]         [sdNameString_AG].[fullName_AG]  NULL 
	CONSTRAINT [CHK_FullName_AG_743368731]
		CHECK  ( [ShipToName] like '[A-Z]% [A-Z]%' ),
	[ShipToAddress]      [sdAddressString_AN].[addressline_AN]  NULL ,
	[ShipToCity]         [sdAddressString_AN].[city_WL]  NULL ,
	[ShipToRegion]       [sdAddressString_AN].[region_AG]  NULL ,
	[ShipToPostalCode]   [sdAddressString_AN].[postalCode_AN]  NULL ,
	[ShipToCountry]      [sdAddressString_AN].[country_AG]  NULL 
	CONSTRAINT [DFT_NotSlashApplicable_AG_866461193]
		 DEFAULT  'N/A'
	CONSTRAINT [CHK_CountryCodes_AG_2138419998]
		CHECK  ( [ShipToCountry] like '[A-Z][A-Z][A-Z]' ),
	[UserAuthorizationId] [surrogateKey_AN] 
	CONSTRAINT [CHK_IntegerIsGreaterThanZero_JG_1769919837]
		CHECK  ( UserAuthorizationId > 0 ),
	[DateAdded]          [sdNanosecondPreciseDatetime_JG].[timeStamp_AN] 
	CONSTRAINT [DFT_CurrentSysTime_1071447965]
		 DEFAULT  sysdatetime(),
	[DateOfLastUpdate]   [sdNanosecondPreciseDatetime_JG].[timeStamp_AN] 
	CONSTRAINT [DFT_CurrentSysTime_602889211]
		 DEFAULT  sysdatetime()
)
go

ALTER TABLE [Sales].[Orders]
	 WITH CHECK ADD CONSTRAINT [CHK_ValidString_AN_1048684405] CHECK  ( ShipToAddress LIKE '%[A-Z0-9a-z\-]' )
go

ALTER TABLE [Sales].[Orders]
	 WITH CHECK ADD CONSTRAINT [CHK_PostalCode_AN_1432151190] CHECK  ( ShipToPostalCode LIKE '[0-9][0-9][0-9][0-9][0-9]' )
go

ALTER TABLE [Sales].[Orders]
	 WITH CHECK ADD CONSTRAINT [CHK_TimeStamp_AN_2027942962] CHECK  ( DateAdded BETWEEN '1900-01-01' AND sysdatetime() )
go

ALTER TABLE [Sales].[Orders]
	 WITH CHECK ADD CONSTRAINT [CHK_TimeStamp_AN_730376194] CHECK  ( DateOfLastUpdate BETWEEN '1900-01-01' AND sysdatetime() )
go

CREATE TABLE [Production].[Product]
( 
	[ProductId]          [sdKeyIntegerNumber_JG].[surrogateKeyIdentity_JG]  IDENTITY ( 1,1 )  NOT NULL 
	CONSTRAINT [CHK_IntegerIsGreaterThanZero_JG_1383246262]
		CHECK  ( ProductId > 0 ),
	[ProductName]        [sdNameString_AG].[fullName_AG]  NULL ,
	[SupplierId]         [surrogateKey_AN]  NULL 
	CONSTRAINT [CHK_IntegerIsGreaterThanZero_JG_863848814]
		CHECK  ( SupplierId > 0 ),
	[CategoryId]         [sdKeyIntegerNumber_JG].[surrogateKeyIdentity_JG]  NULL 
	CONSTRAINT [CHK_IntegerIsGreaterThanZero_JG_1097616771]
		CHECK  ( CategoryId > 0 ),
	[UnitPrice]          [sdMoneyNumber_JG].[unitPrice_WL]  NULL ,
	[Discontinued]       [sdFlagCharacter_JG].[flag_WL]  NULL ,
	[UserAuthorizationId] [surrogateKey_AN] 
	CONSTRAINT [CHK_IntegerIsGreaterThanZero_JG_1434506493]
		CHECK  ( UserAuthorizationId > 0 ),
	[DateAdded]          [sdNanosecondPreciseDatetime_JG].[timeStamp_AN] 
	CONSTRAINT [DFT_CurrentSysTime_1037918129]
		 DEFAULT  sysdatetime(),
	[DateOfLastUpdate]   [sdNanosecondPreciseDatetime_JG].[timeStamp_AN] 
	CONSTRAINT [DFT_CurrentSysTime_267475867]
		 DEFAULT  sysdatetime()
)
go

CREATE TABLE [Sales].[Shipper]
( 
	[ShipperId]          [sdKeyIntegerNumber_JG].[surrogateKeyIdentity_JG]  IDENTITY ( 1,1 )  NOT NULL 
	CONSTRAINT [CHK_IntegerIsGreaterThanZero_JG_1550358970]
		CHECK  ( ShipperId > 0 ),
	[ShipperCompanyName] [sdNameString_AG].[companyName_AG]  NULL 
	CONSTRAINT [CHK_StartwithCapitalLetter_AG_372028990]
		CHECK  ( [ShipperCompanyName] like '[A-Z]%' ),
	[PhoneNumber]        [sdContactNumber_AG].[phoneNumber_AN]  NULL 
	CONSTRAINT [DFT_MobileNumber_AG_712882287]
		 DEFAULT  '(000)-000-0000'
	CONSTRAINT [CHK_PhoneNumber_AN_2101390277]
		CHECK  ( PhoneNumber LIKE '%[0-9\-]' ),
	[UserAuthorizationId] [surrogateKey_AN] 
	CONSTRAINT [CHK_IntegerIsGreaterThanZero_JG_1569245439]
		CHECK  ( UserAuthorizationId > 0 ),
	[DateAdded]          [sdNanosecondPreciseDatetime_JG].[timeStamp_AN] 
	CONSTRAINT [DFT_CurrentSysTime_904486313]
		 DEFAULT  sysdatetime(),
	[DateOfLastUpdate]   [sdNanosecondPreciseDatetime_JG].[timeStamp_AN] 
	CONSTRAINT [DFT_CurrentSysTime_402214813]
		 DEFAULT  sysdatetime()
)
go

ALTER TABLE [Sales].[Shipper]
	 WITH CHECK ADD CONSTRAINT [CHK_TimeStamp_AN_450100774] CHECK  ( DateAdded BETWEEN '1900-01-01' AND sysdatetime() )
go

ALTER TABLE [Sales].[Shipper]
	 WITH CHECK ADD CONSTRAINT [CHK_TimeStamp_AN_937866232] CHECK  ( DateOfLastUpdate BETWEEN '1900-01-01' AND sysdatetime() )
go

CREATE TABLE [Production].[Supplier]
( 
	[SupplierId]         [sdKeyIntegerNumber_JG].[surrogateKeyIdentity_JG]  IDENTITY ( 1,1 )  NOT NULL 
	CONSTRAINT [CHK_IntegerIsGreaterThanZero_JG_444418579]
		CHECK  ( SupplierId > 0 ),
	[SupplierCompanyName] [sdNameString_AG].[companyName_AG]  NULL 
	CONSTRAINT [CHK_StartwithCapitalLetter_AG_1236652122]
		CHECK  ( [SupplierCompanyName] like '[A-Z]%' ),
	[SupplierContactName] [sdNameString_AG].[fullName_AG]  NULL 
	CONSTRAINT [CHK_FullName_AG_616556138]
		CHECK  ( [SupplierContactName] like '[A-Z]% [A-Z]%' ),
	[SupplierContactTitle] [sdTitleString_JG].[contactTitle_JG]  NULL 
	CONSTRAINT [CHK_StringIsNotEmpty_JG_290565327]
		CHECK  ( SupplierContactTitle != '' ),
	[SupplierAddress]    [sdAddressString_AN].[addressline_AN]  NULL ,
	[SupplierCity]       [sdAddressString_AN].[city_WL]  NULL ,
	[SupplierRegion]     [sdAddressString_AN].[region_AG]  NULL ,
	[SupplierPostalCode] [sdAddressString_AN].[postalCode_AN]  NULL ,
	[SupplierCountry]    [sdAddressString_AN].[country_AG]  NULL 
	CONSTRAINT [DFT_NotSlashApplicable_AG_2012428911]
		 DEFAULT  'N/A'
	CONSTRAINT [CHK_CountryCodes_AG_519964550]
		CHECK  ( [SupplierCountry] like '[A-Z][A-Z][A-Z]' ),
	[SupplierPhoneNumber] [sdContactNumber_AG].[phoneNumber_AN]  NULL 
	CONSTRAINT [DFT_MobileNumber_AG_1284745589]
		 DEFAULT  '(000)-000-0000'
	CONSTRAINT [CHK_PhoneNumber_AN_2090679882]
		CHECK  ( SupplierPhoneNumber LIKE '%[0-9\-]' ),
	[SupplierFaxNumber]  [sdContactNumber_AG].[faxNumber_AG]  NULL 
	CONSTRAINT [DFT_MobileNumber_AG_1582777643]
		 DEFAULT  '(000)-000-0000',
	[UserAuthorizationId] [surrogateKey_AN] 
	CONSTRAINT [CHK_IntegerIsGreaterThanZero_JG_1434548708]
		CHECK  ( UserAuthorizationId > 0 ),
	[DateAdded]          [sdNanosecondPreciseDatetime_JG].[timeStamp_AN] 
	CONSTRAINT [DFT_CurrentSysTime_1027111089]
		 DEFAULT  sysdatetime(),
	[DateOfLastUpdate]   [sdNanosecondPreciseDatetime_JG].[timeStamp_AN] 
	CONSTRAINT [DFT_CurrentSysTime_267518082]
		 DEFAULT  sysdatetime()
)
go

ALTER TABLE [Production].[Supplier]
	 WITH CHECK ADD CONSTRAINT [CHK_ValidString_AN_689823968] CHECK  ( SupplierAddress LIKE '%[A-Z0-9a-z\-]' )
go

ALTER TABLE [Production].[Supplier]
	 WITH CHECK ADD CONSTRAINT [CHK_PostalCode_AN_855081738] CHECK  ( SupplierPostalCode LIKE '[0-9][0-9][0-9][0-9][0-9]' )
go

ALTER TABLE [Production].[Supplier]
	 WITH CHECK ADD CONSTRAINT [CHK_TimeStamp_AN_3410218] CHECK  ( DateAdded BETWEEN '1900-01-01' AND sysdatetime() )
go

ALTER TABLE [Production].[Supplier]
	 WITH CHECK ADD CONSTRAINT [CHK_TimeStamp_AN_2029929473] CHECK  ( DateOfLastUpdate BETWEEN '1900-01-01' AND sysdatetime() )
go

CREATE TABLE [DbSecurity].[UserAuthorization]
( 
	[UserAuthorizationId] [dGroupMidterm].[dNumber]  IDENTITY  NOT NULL ,
	[ClassTime]          [sdMiscellanousStrings_AG].[classTime_AN] ,
	[IndividualProject]  [sdNameString_AG].[fullName_AG] ,
	[GroupMemberLastName] [sdNameString_AG].[lastName_AG] 
	CONSTRAINT [CHK_StartwithCapitalLetter_AG_1885322793]
		CHECK  ( [GroupMemberLastName] like '[A-Z]%' ),
	[GroupMemberFirstName] [sdNameString_AG].[firstName_AG] 
	CONSTRAINT [CHK_StartwithCapitalLetter_AG_1771680119]
		CHECK  ( [GroupMemberFirstName] like '[A-Z]%' ),
	[GroupName]          [sdNameString_AG].[fullName_AG] ,
	[DateAdded]          [sdNanosecondPreciseDatetime_JG].[timeStamp_AN] 
	CONSTRAINT [DFT_CurrentSysTime_810043040]
		 DEFAULT  sysdatetime(),
	[DateOfLastUpdate]   [sdNanosecondPreciseDatetime_JG].[timeStamp_AN] 
	CONSTRAINT [DFT_CurrentSysTime_553578676]
		 DEFAULT  sysdatetime()
)
go

CREATE TABLE [Audit].[VersionedEmployeeHistory]
( 
	[EmployeeId]         [surrogateKey_AN]  NOT NULL ,
	[FullName]           [sdNameString_AG].[fullName_AG]  NULL ,
	[Department]         [departmentName_AN]  NULL ,
	[Salary]             [salary_AN]  NULL ,
	[Notes]              [sdMiscellanousStrings_AG].[notes_WL]  NULL ,
	[SysStart]           [sdAuditSysTime_AG].[sysStart_WL]  NOT NULL ,
	[SysEnd]             [sdAuditSysTime_AG].[sysEnd_WL]  NOT NULL 
)
go

ALTER TABLE [Triggered].[AuditTriggeredEmployeeHistory]
	ADD CONSTRAINT [PK_TriggeredEmployeeHistoryId] PRIMARY KEY  NONCLUSTERED ([TriggeredEmployeeHistoryId] ASC)
go

CREATE UNIQUE CLUSTERED INDEX [ix_Employees] ON [Triggered].[AuditTriggeredEmployeeHistory]
( 
	[EmployeeId]          ASC,
	[TriggeredEmployeeHistoryId]  ASC
)
go

ALTER TABLE [Production].[Category]
	ADD CONSTRAINT [PK_Categories] PRIMARY KEY  CLUSTERED ([CategoryId] ASC)
go

ALTER TABLE [Sales].[Customer]
	ADD CONSTRAINT [PK_Customers] PRIMARY KEY  CLUSTERED ([CustomerId] ASC)
go

CREATE TABLE [SystemVersioned].[Employee]
( 
	[EmployeeId]         [surrogateKey_AN]  NOT NULL ,
	[FullName]           [sdNameString_AG].[fullName_AG]  NULL ,
	[Department]         [departmentName_AN]  NULL ,
	[Salary]             [salary_AN]  NULL ,
	[Notes]              [sdMiscellanousStrings_AG].[notes_WL]  NULL ,
	[SysStart]           [sdAuditSysTime_AG].[sysStart_WL]  GENERATED ALWAYS AS ROW START HIDDEN  NOT NULL ,
	[SysEnd]             [sdAuditSysTime_AG].[sysEnd_WL]  GENERATED ALWAYS AS ROW END HIDDEN  NOT NULL ,
	CONSTRAINT [PK_EmployeeVersioned] PRIMARY KEY  NONCLUSTERED ([EmployeeId] ASC),
	PERIOD FOR SYSTEM_TIME (SysStart,SysEnd)
)
WITH 
(
	SYSTEM_VERSIONING = ON (HISTORY_TABLE = [Audit].[VersionedEmployeeHistory], DATA_CONSISTENCY_CHECK = OFF)
)
go

ALTER TABLE [Triggered].[Employee]
	ADD CONSTRAINT [PK_TriggeredEmployee] PRIMARY KEY  NONCLUSTERED ([EmployeeId] ASC)
go

CREATE CLUSTERED INDEX [ix_Employees] ON [Triggered].[Employee]
( 
	[EmployeeId]          ASC
)
go

ALTER TABLE [HumanResources].[Employee]
	ADD CONSTRAINT [PK_Employees] PRIMARY KEY  CLUSTERED ([EmployeeId] ASC)
go

ALTER TABLE [Service].[Feedback]
	ADD CONSTRAINT [PK__Feedback__0CF04B38E2275530] PRIMARY KEY  CLUSTERED ([MemberID] ASC)
go

ALTER TABLE [Data].[Membership]
	ADD CONSTRAINT [PK__Membersh__0CF04B38AF0D3873] PRIMARY KEY  CLUSTERED ([MemberID] ASC)
go

ALTER TABLE [dbo].[Nums]
	ADD CONSTRAINT [PK_Nums] PRIMARY KEY  CLUSTERED ([N] ASC)
go

ALTER TABLE [Sales].[OrderDetail]
	ADD CONSTRAINT [PK_OrderDetails] PRIMARY KEY  CLUSTERED ([OrderId] ASC,[ProductId] ASC)
go

ALTER TABLE [Sales].[Orders]
	ADD CONSTRAINT [PK_Orders] PRIMARY KEY  CLUSTERED ([OrderId] ASC)
go

ALTER TABLE [Production].[Product]
	ADD CONSTRAINT [PK_Products] PRIMARY KEY  CLUSTERED ([ProductId] ASC)
go

ALTER TABLE [Sales].[Shipper]
	ADD CONSTRAINT [PK_Shippers] PRIMARY KEY  CLUSTERED ([ShipperId] ASC)
go

ALTER TABLE [Production].[Supplier]
	ADD CONSTRAINT [PK_Suppliers] PRIMARY KEY  CLUSTERED ([SupplierId] ASC)
go

ALTER TABLE [DbSecurity].[UserAuthorization]
	ADD CONSTRAINT [XPKUserAuthorization] PRIMARY KEY  CLUSTERED ([UserAuthorizationId] ASC)
go

CREATE VIEW [JsonOutput].[uvw_HumanResourcesEmployee]([EmployeeObjectId],[EmployeeLastName],[EmployeeFirstName],[EmployeeTitle],[EmployeeTitleOfCourtesy],[EmployeeBirthDate],[HireDate],[EmployeeAddress],[EmployeeCity],[EmployeeRegion],[EmployeePostalCode],[EmployeeCountry],[EmployeePhoneNumber],[EmployeeManagerId])
AS
SELECT E.[EmployeeId],E.[EmployeeLastName],E.[EmployeeFirstName],E.[EmployeeTitle],E.[EmployeeTitleOfCourtesy],E.[EmployeeBirthDate],E.[EmployeeHireDate],E.[EmployeeAddress],E.[EmployeeCity],E.[EmployeeRegion],E.[EmployeePostalCode],E.[EmployeeCountry],E.[EmployeePhoneNumber],E.[EmployeeManagerId]
	FROM [HumanResources].[Employee] E
go

CREATE VIEW [JsonOutput].[uvw_ProductionCategory]([CategoryObjectId],[CategoryName],[Description])
AS
SELECT [Production].[Category].[CategoryId],[Production].[Category].[CategoryName],[Production].[Category].[Description]
	FROM [Production].[Category]
go

CREATE VIEW [JsonOutput].[uvw_ProductionProduct]([ProductObjectId],[ProductName],[SupplierId],[CategoryId],[UnitPrice],[Discontinued],[CategoryObjectId],[CategoryName],[Description],[SupplierCompanyName],[SupplierContactName],[SupplierPhoneNumber],[SupplierFaxNumber])
AS
SELECT P.[ProductId],P.[ProductName],S.[SupplierId],P.[CategoryId],P.[UnitPrice],P.[Discontinued],C.[CategoryId],C.[CategoryName],C.[Description],S.[SupplierCompanyName],S.[SupplierContactName],S.[SupplierPhoneNumber],S.[SupplierFaxNumber]
	FROM [Production].[Supplier] S,[Production].[Category] C,[Production].[Product] P
go

CREATE VIEW [JsonOutput].[uvw_ProductionSupplier]([SupplierObjectId],[SupplierCompanyName],[SupplierContactName],[SupplierContactTitle],[SupplierAddress],[SupplierCity],[SupplierRegion],[SupplierPostalCode],[SupplierCountry],[SupplierPhoneNumber],[SupplierFaxNumber])
AS
SELECT S.[SupplierId],S.[SupplierCompanyName],S.[SupplierContactName],S.[SupplierContactTitle],S.[SupplierAddress],S.[SupplierCity],S.[SupplierRegion],S.[SupplierPostalCode],S.[SupplierCountry],S.[SupplierPhoneNumber],S.[SupplierFaxNumber]
	FROM [Production].[Supplier] S
go

CREATE VIEW [JsonOutput].[uvw_SalesCustomer]([CustomerObjectId],[CustomerCompanyName],[CustomerContactName],[CustomerContactTitle],[CustomerAddress],[CustomerCity],[CustomerRegion],[CustomerPostalCode],[CustomerCountry],[CustomerPhoneNumber],[CustomerFaxNumber])
AS
SELECT C.[CustomerId],C.[CustomerCompanyName],C.[CustomerContactName],C.[CustomerContactTitle],C.[CustomerAddress],C.[CustomerCity],C.[CustomerRegion],C.[CustomerPostalCode],C.[CustomerCountry],C.[CustomerPhoneNumber],C.[CustomerFaxNumber]
	FROM [Sales].[Customer] C
go

CREATE VIEW [JsonOutput].[uvw_SalesShipper]([ShipperObjectId],[ShipperCompanyName],[PhoneNumber])
AS
SELECT S.[ShipperId],S.[ShipperCompanyName],S.[PhoneNumber]
	FROM [Sales].[Shipper] S
go

CREATE VIEW [JsonOutput].[uvw_Order]([OrderId],[CustomerId],[EmployeeId],[ShipperId],[OrderDate],[RequiredDate],[ShipToDate],[Freight],[ShipToName],[ShipToAddress],[ShipToCity],[ShipToRegion],[ShipToPostalCode],[ShipToCountry])
AS
SELECT O.[OrderId],O.[CustomerId],O.[EmployeeId],O.[ShipperId],O.[OrderDate],O.[RequiredDate],O.[ShipToDate],O.[Freight],O.[ShipToName],O.[ShipToAddress],O.[ShipToCity],O.[ShipToRegion],O.[ShipToPostalCode],O.[ShipToCountry]
	FROM [Sales].[Orders] O
go

CREATE VIEW [Utils].[uvw_FindColumnDefinitionPlusDefaultAndCheckConstraint] AS  SELECT  concat( tbl.TABLE_SCHEMA , '.' , tbl.TABLE_NAME )  AS FullyQualifiedTableName, tbl.TABLE_SCHEMA AS SchemaName, tbl.TABLE_NAME AS TableName, col.COLUMN_NAME AS ColumnName, col.ORDINAL_POSITION AS OrdinalPosition,  concat( col.DOMAIN_SCHEMA , '.' , col.DOMAIN_NAME )  AS FullyQualifiedDomainName, col.DOMAIN_NAME AS DomainName, CASE WHEN col.DATA_TYPE = 'varchar' THEN  concat( 'varchar(' , CHARACTER_MAXIMUM_LENGTH , ')' )  WHEN col.DATA_TYPE = 'char' THEN  concat( 'char(' , CHARACTER_MAXIMUM_LENGTH , ')' )  WHEN col.DATA_TYPE = 'nvarchar' THEN  concat( 'nvarchar(' , CHARACTER_MAXIMUM_LENGTH , ')' )  WHEN col.DATA_TYPE = 'nchar' THEN  concat( 'nchar(' , CHARACTER_MAXIMUM_LENGTH , ')' )  WHEN col.DATA_TYPE = 'numeric' THEN  concat( 'numeric(' , NUMERIC_PRECISION_RADIX , ', ' , NUMERIC_SCALE , ')' )  WHEN col.DATA_TYPE = 'decimal' THEN  concat( 'decimal(' , NUMERIC_PRECISION_RADIX , ', ' , NUMERIC_SCALE , ')' )  ELSE col.DATA_TYPE END AS DataType, col.IS_NULLABLE AS IsNullable, dcn.DefaultName, col.COLUMN_DEFAULT AS DefaultNameDefinition, cc.CONSTRAINT_NAME AS CheckConstraintRuleName, cc.CHECK_CLAUSE AS CheckConstraintRuleNameDefinition FROM (  SELECT TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, TABLE_TYPE FROM INFORMATION_SCHEMA.TABLES WHERE ( TABLE_TYPE = 'BASE TABLE' ) ) AS tbl    INNER JOIN   (  SELECT TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, ORDINAL_POSITION, COLUMN_DEFAULT, IS_NULLABLE, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH, CHARACTER_OCTET_LENGTH, NUMERIC_PRECISION, NUMERIC_PRECISION_RADIX, NUMERIC_SCALE, DATETIME_PRECISION, CHARACTER_SET_CATALOG, CHARACTER_SET_SCHEMA, CHARACTER_SET_NAME, COLLATION_CATALOG, COLLATION_SCHEMA, COLLATION_NAME, DOMAIN_CATALOG, DOMAIN_SCHEMA, DOMAIN_NAME FROM INFORMATION_SCHEMA.COLUMNS ) AS col  ON col.TABLE_CATALOG = tbl.TABLE_CATALOG AND col.TABLE_SCHEMA = tbl.TABLE_SCHEMA AND col.TABLE_NAME = tbl.TABLE_NAME   LEFT OUTER JOIN   (  SELECT t.name AS TableName,  schema_name( s.schema_id )  AS SchemaName, ac.name AS ColumnName, d.name AS DefaultName FROM sys.all_columns AS ac   INNER JOIN   sys.tables AS t ON ac.object_id = t.object_id   INNER JOIN   sys.schemas AS s ON t.schema_id = s.schema_id   INNER JOIN   sys.default_constraints AS d ON ac.default_object_id = d.object_id ) AS dcn  ON dcn.SchemaName = tbl.TABLE_SCHEMA AND dcn.TableName = tbl.TABLE_NAME AND dcn.ColumnName = col.COLUMN_NAME   LEFT OUTER JOIN   (  SELECT cu.TABLE_CATALOG, cu.TABLE_SCHEMA, cu.TABLE_NAME, cu.COLUMN_NAME, c.CONSTRAINT_CATALOG, c.CONSTRAINT_SCHEMA, c.CONSTRAINT_NAME, c.CHECK_CLAUSE FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE AS cu   INNER JOIN   INFORMATION_SCHEMA.CHECK_CONSTRAINTS AS c ON c.CONSTRAINT_NAME = cu.CONSTRAINT_NAME ) AS cc  ON cc.TABLE_SCHEMA = tbl.TABLE_SCHEMA AND cc.TABLE_NAME = tbl.TABLE_NAME AND cc.COLUMN_NAME = col.COLUMN_NAME
go

CREATE VIEW [Utils].[uw_FindAllDatabaseColumnsOnTheServer]([FullyQualifiedTableName],[SchemaName],[ColumnName],[OrdinalPosition],[FullyQualifiedDomainName],[DataType],[IsNullable],[DefaultName],[DefaultNameDefinition],[CheckConstraintRuleName],[CheckConstraintRuleNameDefinition],[Server_Name],[Target_Database_Version],[Instance_Name],[Database_Name],[Host_Name])
AS
SELECT vw.FullyQualifiedTableName,vw.SchemaName,vw.ColumnName,vw.OrdinalPosition,vw.FullyQualifiedDomainName,vw.DataType,vw.IsNullable,vw.DefaultName,vw.DefaultNameDefinition,vw.CheckConstraintRuleName,vw.CheckConstraintRuleNameDefinition,@@servername,@@version,@@servicename,db_name(),host_name()
	FROM [Utils].[uvw_FindColumnDefinitionPlusDefaultAndCheckConstraint] vw
		WHERE vw.SchemaName IN ('Sales' , 'Production' , 'HumanResources')
go


ALTER TABLE [Production].[Category]
	ADD CONSTRAINT [FK_Category_UserAuthorization] FOREIGN KEY ([UserAuthorizationId]) REFERENCES [DbSecurity].[UserAuthorization]([UserAuthorizationId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [Sales].[Customer]
	ADD CONSTRAINT [FK_Customer_UserAuthorization] FOREIGN KEY ([UserAuthorizationId]) REFERENCES [DbSecurity].[UserAuthorization]([UserAuthorizationId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [HumanResources].[Employee] WITH CHECK 
	ADD CONSTRAINT [FK_Employees_Employee] FOREIGN KEY ([EmployeeManagerId]) REFERENCES [HumanResources].[Employee]([EmployeeId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [HumanResources].[Employee]
	  WITH CHECK CHECK CONSTRAINT [FK_Employees_Employee]
go

ALTER TABLE [HumanResources].[Employee]
	ADD CONSTRAINT [FK_Employee_UserAuthorization] FOREIGN KEY ([UserAuthorizationId]) REFERENCES [DbSecurity].[UserAuthorization]([UserAuthorizationId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [Sales].[OrderDetail]
	ADD CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY ([OrderId]) REFERENCES [Sales].[Orders]([OrderId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [Sales].[OrderDetail]
	ADD CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY ([ProductId]) REFERENCES [Production].[Product]([ProductId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [Sales].[OrderDetail]
	ADD CONSTRAINT [FK_OrderDetail_UserAuthorization] FOREIGN KEY ([UserAuthorizationId]) REFERENCES [DbSecurity].[UserAuthorization]([UserAuthorizationId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [Sales].[Orders] WITH CHECK 
	ADD CONSTRAINT [FK_Order_Customer] FOREIGN KEY ([CustomerId]) REFERENCES [Sales].[Customer]([CustomerId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [Sales].[Orders]
	  WITH CHECK CHECK CONSTRAINT [FK_Order_Customer]
go

ALTER TABLE [Sales].[Orders] WITH CHECK 
	ADD CONSTRAINT [FK_Order_Employee] FOREIGN KEY ([EmployeeId]) REFERENCES [HumanResources].[Employee]([EmployeeId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [Sales].[Orders]
	  WITH CHECK CHECK CONSTRAINT [FK_Order_Employee]
go

ALTER TABLE [Sales].[Orders] WITH CHECK 
	ADD CONSTRAINT [FK_Order_Shipper] FOREIGN KEY ([ShipperId]) REFERENCES [Sales].[Shipper]([ShipperId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [Sales].[Orders]
	  WITH CHECK CHECK CONSTRAINT [FK_Order_Shipper]
go

ALTER TABLE [Sales].[Orders]
	ADD CONSTRAINT [FK_Order_UserAuthorization] FOREIGN KEY ([UserAuthorizationId]) REFERENCES [DbSecurity].[UserAuthorization]([UserAuthorizationId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [Production].[Product] WITH CHECK 
	ADD CONSTRAINT [FK_Product_Category] FOREIGN KEY ([CategoryId]) REFERENCES [Production].[Category]([CategoryId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [Production].[Product]
	  WITH CHECK CHECK CONSTRAINT [FK_Product_Category]
go

ALTER TABLE [Production].[Product] WITH CHECK 
	ADD CONSTRAINT [FK_Product_Supplier] FOREIGN KEY ([SupplierId]) REFERENCES [Production].[Supplier]([SupplierId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [Production].[Product]
	  WITH CHECK CHECK CONSTRAINT [FK_Product_Supplier]
go

ALTER TABLE [Production].[Product]
	ADD CONSTRAINT [FK_Product_UserAuthorization] FOREIGN KEY ([UserAuthorizationId]) REFERENCES [DbSecurity].[UserAuthorization]([UserAuthorizationId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [Sales].[Shipper]
	ADD CONSTRAINT [FK_Shipper_UserAuthorization] FOREIGN KEY ([UserAuthorizationId]) REFERENCES [DbSecurity].[UserAuthorization]([UserAuthorizationId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [Production].[Supplier]
	ADD CONSTRAINT [FK_Supplier_UserAuthorization] FOREIGN KEY ([UserAuthorizationId]) REFERENCES [DbSecurity].[UserAuthorization]([UserAuthorizationId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

CREATE FUNCTION JsonOutput.[MongoOrder] ()  
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




go

CREATE FUNCTION JsonOutput.[MongoOrderDetail] (@OrderId int )  
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

CREATE PROCEDURE Sales.[usp_getorders] @country nvarchar(40)   
   
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

CREATE FUNCTION dbo.[fn_diagramobjects] ()  
  RETURNS int 
  
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
	END
go

CREATE FUNCTION Hashing.[CreateRowSha2_256HashKey] (@ConcatenatedRowColumns varchar(4096) )  
  RETURNS varbinary(32) 
  
AS BEGIN
    RETURN  HASHBYTES('SHA2_256', @ConcatenatedRowColumns)

END;
go

CREATE FUNCTION Hashing.[CreateVarbinaryRowSha2_256HashKey] (@ConcatenatedRowColumns varchar(4096) )  
  RETURNS varbinary(32) 
  
as BEGIN
    RETURN  HASHBYTES('SHA2_256', @ConcatenatedRowColumns)

END;
go

CREATE FUNCTION Hashing.[CreateVarbinarySha2_256HashKey] (@ConcatenatedColumns varchar(4096) )  
  RETURNS varbinary(32) 
  
as BEGIN
    return  hashbytes('SHA2_256', @ConcatenatedColumns)

END;
go

CREATE FUNCTION Hashing.[CreateVarcharHashKeySha2_256] (@DisplayNumberOfBytes int , @ConcatenatedColumns varchar(4096) )  
  RETURNS varchar(32) 
  
as BEGIN
    return case when @DisplayNumberOfBytes between 5 and 31 then substring(convert(varchar(32), hashbytes('SHA2_256', @ConcatenatedColumns), 2),1,@DisplayNumberOfBytes)
	else convert(varchar(32), hashbytes('SHA2_256', @ConcatenatedColumns), 2)
	end;

end;
go

CREATE FUNCTION Sales.[utvf_FindAllCustomerOrder] (@CustomerId int )  
  RETURNS TABLE
 
  
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




go

CREATE FUNCTION Utils.[CreateHashKeyMD5] (@AccountOrMeterNumber varchar(15) )  
  RETURNS varchar(32) 
  
as BEGIN
    return convert(varchar(32), hashbytes('md5', @AccountOrMeterNumber), 2);

end;
go

CREATE OR ALTER TRIGGER Triggered.[tInsert_AuditTriggeredEmployeeHistory] ON Triggered.Employee
 AFTER INSERT

AS
/* Customized Erwin Builtin Trigger */
/* INSERT trigger on Triggered.Employee */
/* default body fox Triggered.[tInsert_AuditTriggeredEmployeeHistory] */

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
                    EmployeeId , FullName , Department , Salary , BirthDate , HireDate , PhoneNumber , FullAddress , DateAdded , DateOfLastUpdate 

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
                    EmployeeId ,  FullName ,  Department ,  Salary ,  BirthDate ,  HireDate ,  PhoneNumber ,  FullAddress ,  DateAdded ,  DateOfLastUpdate 

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


go


ENABLE TRIGGER Triggered.[tInsert_AuditTriggeredEmployeeHistory] ON Triggered.Employee


go




CREATE OR ALTER TRIGGER Triggered.[tUpdateDelete_AuditTriggeredEmployeeHistory] ON Triggered.Employee
 AFTER DELETE,UPDATE

AS
/* Customized Erwin Builtin Trigger */
/* DELETE,UPDATE trigger on Triggered.Employee */
/* default body fox Triggered.[tUpdateDelete_AuditTriggeredEmployeeHistory] */

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
                    EmployeeId , FullName , Department , Salary , BirthDate , HireDate , PhoneNumber , FullAddress , DateAdded , DateOfLastUpdate 

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
                    EmployeeId ,  FullName ,  Department ,  Salary ,  BirthDate ,  HireDate ,  PhoneNumber ,  FullAddress ,  DateAdded ,  DateOfLastUpdate 

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


go


ENABLE TRIGGER Triggered.[tUpdateDelete_AuditTriggeredEmployeeHistory] ON Triggered.Employee


go


CREATE TRIGGER TI_Sales_Orders_LastUpdated ON Sales.[Orders]
    AFTER UPDATE 
  
  AS

  UPDATE 
      Sales.[Orders]
  SET 
      DateOfLastUpdate = GETDATE()
  FROM 
      Sales.[Orders] as c
  INNER JOIN 
      Inserted i 
  ON c.OrderId = i.OrderId


go


ENABLE TRIGGER TI_Sales_Orders_LastUpdated ON Sales.[Orders]


go


CREATE TRIGGER TI_Sales_OrderDetail_LastUpdated ON Sales.[OrderDetail]
    AFTER UPDATE 
  
  AS

  UPDATE 
      Sales.[OrderDetail]
  SET 
      DateOfLastUpdate = GETDATE()
  FROM 
      Sales.[OrderDetail] as c
  INNER JOIN 
      Inserted i 
  ON c.OrderId = i.OrderId and c.ProductId = i.ProductId


go


ENABLE TRIGGER TI_Sales_OrderDetail_LastUpdated ON Sales.[OrderDetail]


go


CREATE TRIGGER TI_Sales_Customer_LastUpdated ON Sales.[Customer]
    AFTER UPDATE 
  
  AS

  UPDATE 
      Sales.[Customer]
  SET 
      DateOfLastUpdate = GETDATE()
  FROM 
      Sales.[Customer] as c
  INNER JOIN 
      Inserted i 
  ON c.CustomerId = i.CustomerId


go


ENABLE TRIGGER TI_Sales_Customer_LastUpdated ON Sales.[Customer]


go


CREATE OR ALTER TRIGGER HumanResources.[t_InsertTriggeredEmployee] ON HumanResources.Employee
 AFTER INSERT

AS
/* Customized Erwin Builtin Trigger */
/* INSERT trigger on HumanResources.Employee */
/* default body fox HumanResources.[t_InsertTriggeredEmployee] */

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
                    [HumanResources].[Employee]
                SET 
                    DateOfLastUpdate = SYSDATETIME()
                FROM 
                    [HumanResources].[Employee] as c
                INNER JOIN 
                    Inserted i 
                ON c.EmployeeId = i.EmployeeId

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


go


ENABLE TRIGGER HumanResources.[t_InsertTriggeredEmployee] ON HumanResources.Employee


go




CREATE OR ALTER TRIGGER HumanResources.[t_UpdateDeleteTriggeredEmployee] ON HumanResources.Employee
 AFTER DELETE,UPDATE

AS

BEGIN

set xact_abort OFF;

BEGIN TRY




    DECLARE UD_HumanResources_Employee_Cursor CURSOR FOR

    SELECT EmployeeId FROM Deleted

    DECLARE @cursorID int

    OPEN UD_HumanResources_Employee_Cursor;

    FETCH NEXT FROM UD_HumanResources_Employee_Cursor INTO @cursorID

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



        FETCH NEXT FROM UD_HumanResources_Employee_Cursor INTO @cursorID


    END;

    CLOSE UD_HumanResources_Employee_Cursor;

    DEALLOCATE UD_HumanResources_Employee_Cursor;











END TRY
BEGIN CATCH
   SELECT ERROR_MESSAGE() AS [Error Message]
         ,ERROR_LINE() AS ErrorLine
         ,ERROR_NUMBER() AS [Error Number]  
         ,ERROR_SEVERITY() AS [Error Severity]  
         ,ERROR_STATE() AS [Error State]  
END CATCH

END;


go


ENABLE TRIGGER HumanResources.[t_UpdateDeleteTriggeredEmployee] ON HumanResources.Employee


go


CREATE TRIGGER TI_Production_Product_LastUpdated ON Production.[Product]
    AFTER UPDATE 
  
  AS

  UPDATE 
      Production.[Product]
  SET 
      DateOfLastUpdate = GETDATE()
  FROM 
      Production.[Product] as c
  INNER JOIN 
      Inserted i 
  ON c.ProductId = i.ProductId


go


ENABLE TRIGGER TI_Production_Product_LastUpdated ON Production.[Product]


go


CREATE TRIGGER TI_Production_Supplier_LastUpdated ON Production.[Supplier]
    AFTER UPDATE 
  
  AS

  UPDATE 
      Production.[Supplier]
  SET 
      DateOfLastUpdate = GETDATE()
  FROM 
      Production.[Supplier] as c
  INNER JOIN 
      Inserted i 
  ON c.SupplierId = i.SupplierId


go


ENABLE TRIGGER TI_Production_Supplier_LastUpdated ON Production.[Supplier]


go


CREATE TRIGGER TI_Production_Category_LastUpdated ON Production.[Category]
    AFTER UPDATE 
  
  AS

  UPDATE 
      Production.[Category]
  SET 
      DateOfLastUpdate = GETDATE()
  FROM 
      Production.[Category] as c
  INNER JOIN 
      Inserted i 
  ON c.CategoryId = i.CategoryId


go


ENABLE TRIGGER TI_Production_Category_LastUpdated ON Production.[Category]


go


CREATE TRIGGER TI_Sales_Shipper_LastUpdated ON Sales.[Shipper]
    AFTER INSERT,UPDATE 
  
  AS

  UPDATE 
      Sales.[Shipper]
  SET 
      DateOfLastUpdate = GETDATE()

  FROM 
      Sales.[Shipper] as c
  INNER JOIN 
      Inserted i 
  ON c.ShipperId = i.ShipperId


go


ENABLE TRIGGER TI_Sales_Shipper_LastUpdated ON Sales.[Shipper]


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
    /* Production.Category is of a Production.Product on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00030743", PARENT_OWNER="Production", PARENT_TABLE="Category"
    CHILD_OWNER="Production", CHILD_TABLE="Product"
    P2C_VERB_PHRASE="is of a", C2P_VERB_PHRASE="belongs to a", 
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
    /* DbSecurity.UserAuthorization authorizes Production.Category on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="DbSecurity", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="Production", CHILD_TABLE="Category"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Category_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
    IF EXISTS (SELECT * FROM deleted,DbSecurity.UserAuthorization
      WHERE
        /* %JoinFKPK(deleted,DbSecurity.UserAuthorization," = "," AND") */
        deleted.UserAuthorizationId = DbSecurity.UserAuthorization.UserAuthorizationId AND
        NOT EXISTS (
          SELECT * FROM Production.Category
          WHERE
            /* %JoinFKPK(Production.Category,DbSecurity.UserAuthorization," = "," AND") */
            Production.Category.UserAuthorizationId = DbSecurity.UserAuthorization.UserAuthorizationId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Production.Category because DbSecurity.UserAuthorization exists.'
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




CREATE TRIGGER Sales.tD_Customer ON Sales.Customer FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on Customer */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Sales.Customer makes an Sales.Orders on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0002f2b1", PARENT_OWNER="Sales", PARENT_TABLE="Customer"
    CHILD_OWNER="Sales", CHILD_TABLE="Orders"
    P2C_VERB_PHRASE="makes an", C2P_VERB_PHRASE="is made by a", 
    FK_CONSTRAINT="FK_Order_Customer", FK_COLUMNS="CustomerId" */
    IF EXISTS (
      SELECT * FROM deleted,Sales.Orders
      WHERE
        /*  %JoinFKPK(Sales.Orders,deleted," = "," AND") */
        Sales.Orders.CustomerId = deleted.CustomerId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Sales.Customer because Sales.Orders exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* DbSecurity.UserAuthorization authorizes Sales.Customer on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="DbSecurity", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="Sales", CHILD_TABLE="Customer"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Customer_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
    IF EXISTS (SELECT * FROM deleted,DbSecurity.UserAuthorization
      WHERE
        /* %JoinFKPK(deleted,DbSecurity.UserAuthorization," = "," AND") */
        deleted.UserAuthorizationId = DbSecurity.UserAuthorization.UserAuthorizationId AND
        NOT EXISTS (
          SELECT * FROM Sales.Customer
          WHERE
            /* %JoinFKPK(Sales.Customer,DbSecurity.UserAuthorization," = "," AND") */
            Sales.Customer.UserAuthorizationId = DbSecurity.UserAuthorization.UserAuthorizationId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Sales.Customer because DbSecurity.UserAuthorization exists.'
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




CREATE TRIGGER HumanResources.tD_Employee ON HumanResources.Employee FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on Employee */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* HumanResources.Employee manages a HumanResources.Employee on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00060d39", PARENT_OWNER="HumanResources", PARENT_TABLE="Employee"
    CHILD_OWNER="HumanResources", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="manages a", C2P_VERB_PHRASE="is managed by a", 
    FK_CONSTRAINT="FK_Employees_Employee", FK_COLUMNS="EmployeeManagerId" */
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
    /* HumanResources.Employee processes an Sales.Orders on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="HumanResources", PARENT_TABLE="Employee"
    CHILD_OWNER="Sales", CHILD_TABLE="Orders"
    P2C_VERB_PHRASE="processes an", C2P_VERB_PHRASE="is processed by an", 
    FK_CONSTRAINT="FK_Order_Employee", FK_COLUMNS="EmployeeId" */
    IF EXISTS (
      SELECT * FROM deleted,Sales.Orders
      WHERE
        /*  %JoinFKPK(Sales.Orders,deleted," = "," AND") */
        Sales.Orders.EmployeeId = deleted.EmployeeId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete HumanResources.Employee because Sales.Orders exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* DbSecurity.UserAuthorization authorizes HumanResources.Employee on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="DbSecurity", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="HumanResources", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Employee_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
    IF EXISTS (SELECT * FROM deleted,DbSecurity.UserAuthorization
      WHERE
        /* %JoinFKPK(deleted,DbSecurity.UserAuthorization," = "," AND") */
        deleted.UserAuthorizationId = DbSecurity.UserAuthorization.UserAuthorizationId AND
        NOT EXISTS (
          SELECT * FROM HumanResources.Employee
          WHERE
            /* %JoinFKPK(HumanResources.Employee,DbSecurity.UserAuthorization," = "," AND") */
            HumanResources.Employee.UserAuthorizationId = DbSecurity.UserAuthorization.UserAuthorizationId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last HumanResources.Employee because DbSecurity.UserAuthorization exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* HumanResources.Employee manages a HumanResources.Employee on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="HumanResources", PARENT_TABLE="Employee"
    CHILD_OWNER="HumanResources", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="manages a", C2P_VERB_PHRASE="is managed by a", 
    FK_CONSTRAINT="FK_Employees_Employee", FK_COLUMNS="EmployeeManagerId" */
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
           @insEmployeeId sdKeyIntegerNumber_JG.surrogateKeyIdentity_JG,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* HumanResources.Employee manages a HumanResources.Employee on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00068a6c", PARENT_OWNER="HumanResources", PARENT_TABLE="Employee"
    CHILD_OWNER="HumanResources", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="manages a", C2P_VERB_PHRASE="is managed by a", 
    FK_CONSTRAINT="FK_Employees_Employee", FK_COLUMNS="EmployeeManagerId" */
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
  /* HumanResources.Employee processes an Sales.Orders on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="HumanResources", PARENT_TABLE="Employee"
    CHILD_OWNER="Sales", CHILD_TABLE="Orders"
    P2C_VERB_PHRASE="processes an", C2P_VERB_PHRASE="is processed by an", 
    FK_CONSTRAINT="FK_Order_Employee", FK_COLUMNS="EmployeeId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(EmployeeId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Sales.Orders
      WHERE
        /*  %JoinFKPK(Sales.Orders,deleted," = "," AND") */
        Sales.Orders.EmployeeId = deleted.EmployeeId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update HumanResources.Employee because Sales.Orders exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* DbSecurity.UserAuthorization authorizes HumanResources.Employee on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="DbSecurity", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="HumanResources", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Employee_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(UserAuthorizationId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,DbSecurity.UserAuthorization
        WHERE
          /* %JoinFKPK(inserted,DbSecurity.UserAuthorization) */
          inserted.UserAuthorizationId = DbSecurity.UserAuthorization.UserAuthorizationId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.UserAuthorizationId IS NULL
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update HumanResources.Employee because DbSecurity.UserAuthorization does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* HumanResources.Employee manages a HumanResources.Employee on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="HumanResources", PARENT_TABLE="Employee"
    CHILD_OWNER="HumanResources", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="manages a", C2P_VERB_PHRASE="is managed by a", 
    FK_CONSTRAINT="FK_Employees_Employee", FK_COLUMNS="EmployeeManagerId" */
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




CREATE TRIGGER Sales.tD_OrderDetail ON Sales.OrderDetail FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on OrderDetail */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* DbSecurity.UserAuthorization authorizes Sales.OrderDetail on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="0004a9fe", PARENT_OWNER="DbSecurity", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="Sales", CHILD_TABLE="OrderDetail"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_OrderDetail_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
    IF EXISTS (SELECT * FROM deleted,DbSecurity.UserAuthorization
      WHERE
        /* %JoinFKPK(deleted,DbSecurity.UserAuthorization," = "," AND") */
        deleted.UserAuthorizationId = DbSecurity.UserAuthorization.UserAuthorizationId AND
        NOT EXISTS (
          SELECT * FROM Sales.OrderDetail
          WHERE
            /* %JoinFKPK(Sales.OrderDetail,DbSecurity.UserAuthorization," = "," AND") */
            Sales.OrderDetail.UserAuthorizationId = DbSecurity.UserAuthorization.UserAuthorizationId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Sales.OrderDetail because DbSecurity.UserAuthorization exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Production.Product has an Sales.OrderDetail on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Production", PARENT_TABLE="Product"
    CHILD_OWNER="Sales", CHILD_TABLE="OrderDetail"
    P2C_VERB_PHRASE="has an", C2P_VERB_PHRASE="belongs to a", 
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
    /* Sales.Orders has an Sales.OrderDetail on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Sales", PARENT_TABLE="Orders"
    CHILD_OWNER="Sales", CHILD_TABLE="OrderDetail"
    P2C_VERB_PHRASE="has an", C2P_VERB_PHRASE="belongs to an", 
    FK_CONSTRAINT="FK_OrderDetail_Order", FK_COLUMNS="OrderId" */
    IF EXISTS (SELECT * FROM deleted,Sales.Orders
      WHERE
        /* %JoinFKPK(deleted,Sales.Orders," = "," AND") */
        deleted.OrderId = Sales.Orders.OrderId AND
        NOT EXISTS (
          SELECT * FROM Sales.OrderDetail
          WHERE
            /* %JoinFKPK(Sales.OrderDetail,Sales.Orders," = "," AND") */
            Sales.OrderDetail.OrderId = Sales.Orders.OrderId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Sales.OrderDetail because Sales.Orders exists.'
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




CREATE TRIGGER Sales.tD_Orders ON Sales.Orders FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on Orders */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Sales.Orders has an Sales.OrderDetail on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00072337", PARENT_OWNER="Sales", PARENT_TABLE="Orders"
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
             @errmsg = 'Cannot delete Sales.Orders because Sales.OrderDetail exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* DbSecurity.UserAuthorization authorizes Sales.Orders on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="DbSecurity", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="Sales", CHILD_TABLE="Orders"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Order_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
    IF EXISTS (SELECT * FROM deleted,DbSecurity.UserAuthorization
      WHERE
        /* %JoinFKPK(deleted,DbSecurity.UserAuthorization," = "," AND") */
        deleted.UserAuthorizationId = DbSecurity.UserAuthorization.UserAuthorizationId AND
        NOT EXISTS (
          SELECT * FROM Sales.Orders
          WHERE
            /* %JoinFKPK(Sales.Orders,DbSecurity.UserAuthorization," = "," AND") */
            Sales.Orders.UserAuthorizationId = DbSecurity.UserAuthorization.UserAuthorizationId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Sales.Orders because DbSecurity.UserAuthorization exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Sales.Shipper ships an Sales.Orders on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Sales", PARENT_TABLE="Shipper"
    CHILD_OWNER="Sales", CHILD_TABLE="Orders"
    P2C_VERB_PHRASE="ships an", C2P_VERB_PHRASE="is shipped by a", 
    FK_CONSTRAINT="FK_Order_Shipper", FK_COLUMNS="ShipperId" */
    IF EXISTS (SELECT * FROM deleted,Sales.Shipper
      WHERE
        /* %JoinFKPK(deleted,Sales.Shipper," = "," AND") */
        deleted.ShipperId = Sales.Shipper.ShipperId AND
        NOT EXISTS (
          SELECT * FROM Sales.Orders
          WHERE
            /* %JoinFKPK(Sales.Orders,Sales.Shipper," = "," AND") */
            Sales.Orders.ShipperId = Sales.Shipper.ShipperId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Sales.Orders because Sales.Shipper exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* HumanResources.Employee processes an Sales.Orders on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="HumanResources", PARENT_TABLE="Employee"
    CHILD_OWNER="Sales", CHILD_TABLE="Orders"
    P2C_VERB_PHRASE="processes an", C2P_VERB_PHRASE="is processed by an", 
    FK_CONSTRAINT="FK_Order_Employee", FK_COLUMNS="EmployeeId" */
    IF EXISTS (SELECT * FROM deleted,HumanResources.Employee
      WHERE
        /* %JoinFKPK(deleted,HumanResources.Employee," = "," AND") */
        deleted.EmployeeId = HumanResources.Employee.EmployeeId AND
        NOT EXISTS (
          SELECT * FROM Sales.Orders
          WHERE
            /* %JoinFKPK(Sales.Orders,HumanResources.Employee," = "," AND") */
            Sales.Orders.EmployeeId = HumanResources.Employee.EmployeeId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Sales.Orders because HumanResources.Employee exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Sales.Customer makes an Sales.Orders on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Sales", PARENT_TABLE="Customer"
    CHILD_OWNER="Sales", CHILD_TABLE="Orders"
    P2C_VERB_PHRASE="makes an", C2P_VERB_PHRASE="is made by a", 
    FK_CONSTRAINT="FK_Order_Customer", FK_COLUMNS="CustomerId" */
    IF EXISTS (SELECT * FROM deleted,Sales.Customer
      WHERE
        /* %JoinFKPK(deleted,Sales.Customer," = "," AND") */
        deleted.CustomerId = Sales.Customer.CustomerId AND
        NOT EXISTS (
          SELECT * FROM Sales.Orders
          WHERE
            /* %JoinFKPK(Sales.Orders,Sales.Customer," = "," AND") */
            Sales.Orders.CustomerId = Sales.Customer.CustomerId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Sales.Orders because Sales.Customer exists.'
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




CREATE TRIGGER Production.tD_Product ON Production.Product FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on Product */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Production.Product has an Sales.OrderDetail on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0005f120", PARENT_OWNER="Production", PARENT_TABLE="Product"
    CHILD_OWNER="Sales", CHILD_TABLE="OrderDetail"
    P2C_VERB_PHRASE="has an", C2P_VERB_PHRASE="belongs to a", 
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
    /* DbSecurity.UserAuthorization authorizes Production.Product on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="DbSecurity", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="Production", CHILD_TABLE="Product"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Product_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
    IF EXISTS (SELECT * FROM deleted,DbSecurity.UserAuthorization
      WHERE
        /* %JoinFKPK(deleted,DbSecurity.UserAuthorization," = "," AND") */
        deleted.UserAuthorizationId = DbSecurity.UserAuthorization.UserAuthorizationId AND
        NOT EXISTS (
          SELECT * FROM Production.Product
          WHERE
            /* %JoinFKPK(Production.Product,DbSecurity.UserAuthorization," = "," AND") */
            Production.Product.UserAuthorizationId = DbSecurity.UserAuthorization.UserAuthorizationId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Production.Product because DbSecurity.UserAuthorization exists.'
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
    /* Production.Category is of a Production.Product on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Production", PARENT_TABLE="Category"
    CHILD_OWNER="Production", CHILD_TABLE="Product"
    P2C_VERB_PHRASE="is of a", C2P_VERB_PHRASE="belongs to a", 
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




CREATE TRIGGER Sales.tD_Shipper ON Sales.Shipper FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on Shipper */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Sales.Shipper ships an Sales.Orders on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0002c764", PARENT_OWNER="Sales", PARENT_TABLE="Shipper"
    CHILD_OWNER="Sales", CHILD_TABLE="Orders"
    P2C_VERB_PHRASE="ships an", C2P_VERB_PHRASE="is shipped by a", 
    FK_CONSTRAINT="FK_Order_Shipper", FK_COLUMNS="ShipperId" */
    IF EXISTS (
      SELECT * FROM deleted,Sales.Orders
      WHERE
        /*  %JoinFKPK(Sales.Orders,deleted," = "," AND") */
        Sales.Orders.ShipperId = deleted.ShipperId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Sales.Shipper because Sales.Orders exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* DbSecurity.UserAuthorization authorizes Sales.Shipper on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="DbSecurity", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="Sales", CHILD_TABLE="Shipper"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Shipper_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
    IF EXISTS (SELECT * FROM deleted,DbSecurity.UserAuthorization
      WHERE
        /* %JoinFKPK(deleted,DbSecurity.UserAuthorization," = "," AND") */
        deleted.UserAuthorizationId = DbSecurity.UserAuthorization.UserAuthorizationId AND
        NOT EXISTS (
          SELECT * FROM Sales.Shipper
          WHERE
            /* %JoinFKPK(Sales.Shipper,DbSecurity.UserAuthorization," = "," AND") */
            Sales.Shipper.UserAuthorizationId = DbSecurity.UserAuthorization.UserAuthorizationId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Sales.Shipper because DbSecurity.UserAuthorization exists.'
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
           @insShipperId sdKeyIntegerNumber_JG.surrogateKeyIdentity_JG,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Sales.Shipper ships an Sales.Orders on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="000323d4", PARENT_OWNER="Sales", PARENT_TABLE="Shipper"
    CHILD_OWNER="Sales", CHILD_TABLE="Orders"
    P2C_VERB_PHRASE="ships an", C2P_VERB_PHRASE="is shipped by a", 
    FK_CONSTRAINT="FK_Order_Shipper", FK_COLUMNS="ShipperId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ShipperId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Sales.Orders
      WHERE
        /*  %JoinFKPK(Sales.Orders,deleted," = "," AND") */
        Sales.Orders.ShipperId = deleted.ShipperId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Sales.Shipper because Sales.Orders exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* DbSecurity.UserAuthorization authorizes Sales.Shipper on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="DbSecurity", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="Sales", CHILD_TABLE="Shipper"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Shipper_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(UserAuthorizationId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,DbSecurity.UserAuthorization
        WHERE
          /* %JoinFKPK(inserted,DbSecurity.UserAuthorization) */
          inserted.UserAuthorizationId = DbSecurity.UserAuthorization.UserAuthorizationId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.UserAuthorizationId IS NULL
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Sales.Shipper because DbSecurity.UserAuthorization does not exist.'
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
    /* ERWIN_RELATION:CHECKSUM="0002ff7d", PARENT_OWNER="Production", PARENT_TABLE="Supplier"
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
    /* DbSecurity.UserAuthorization authorizes Production.Supplier on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="DbSecurity", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="Production", CHILD_TABLE="Supplier"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Supplier_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
    IF EXISTS (SELECT * FROM deleted,DbSecurity.UserAuthorization
      WHERE
        /* %JoinFKPK(deleted,DbSecurity.UserAuthorization," = "," AND") */
        deleted.UserAuthorizationId = DbSecurity.UserAuthorization.UserAuthorizationId AND
        NOT EXISTS (
          SELECT * FROM Production.Supplier
          WHERE
            /* %JoinFKPK(Production.Supplier,DbSecurity.UserAuthorization," = "," AND") */
            Production.Supplier.UserAuthorizationId = DbSecurity.UserAuthorization.UserAuthorizationId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Production.Supplier because DbSecurity.UserAuthorization exists.'
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




CREATE TRIGGER DbSecurity.tD_UserAuthorization ON DbSecurity.UserAuthorization FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on UserAuthorization */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* DbSecurity.UserAuthorization authorizes Sales.OrderDetail on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="000a84c1", PARENT_OWNER="DbSecurity", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="Sales", CHILD_TABLE="OrderDetail"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_OrderDetail_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
    IF EXISTS (
      SELECT * FROM deleted,Sales.OrderDetail
      WHERE
        /*  %JoinFKPK(Sales.OrderDetail,deleted," = "," AND") */
        Sales.OrderDetail.UserAuthorizationId = deleted.UserAuthorizationId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete DbSecurity.UserAuthorization because Sales.OrderDetail exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* DbSecurity.UserAuthorization authorizes Production.Category on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="DbSecurity", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="Production", CHILD_TABLE="Category"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Category_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
    IF EXISTS (
      SELECT * FROM deleted,Production.Category
      WHERE
        /*  %JoinFKPK(Production.Category,deleted," = "," AND") */
        Production.Category.UserAuthorizationId = deleted.UserAuthorizationId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete DbSecurity.UserAuthorization because Production.Category exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* DbSecurity.UserAuthorization authorizes Sales.Orders on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="DbSecurity", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="Sales", CHILD_TABLE="Orders"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Order_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
    IF EXISTS (
      SELECT * FROM deleted,Sales.Orders
      WHERE
        /*  %JoinFKPK(Sales.Orders,deleted," = "," AND") */
        Sales.Orders.UserAuthorizationId = deleted.UserAuthorizationId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete DbSecurity.UserAuthorization because Sales.Orders exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* DbSecurity.UserAuthorization authorizes Sales.Customer on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="DbSecurity", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="Sales", CHILD_TABLE="Customer"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Customer_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
    IF EXISTS (
      SELECT * FROM deleted,Sales.Customer
      WHERE
        /*  %JoinFKPK(Sales.Customer,deleted," = "," AND") */
        Sales.Customer.UserAuthorizationId = deleted.UserAuthorizationId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete DbSecurity.UserAuthorization because Sales.Customer exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* DbSecurity.UserAuthorization authorizes HumanResources.Employee on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="DbSecurity", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="HumanResources", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Employee_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
    IF EXISTS (
      SELECT * FROM deleted,HumanResources.Employee
      WHERE
        /*  %JoinFKPK(HumanResources.Employee,deleted," = "," AND") */
        HumanResources.Employee.UserAuthorizationId = deleted.UserAuthorizationId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete DbSecurity.UserAuthorization because HumanResources.Employee exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* DbSecurity.UserAuthorization authorizes Production.Supplier on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="DbSecurity", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="Production", CHILD_TABLE="Supplier"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Supplier_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
    IF EXISTS (
      SELECT * FROM deleted,Production.Supplier
      WHERE
        /*  %JoinFKPK(Production.Supplier,deleted," = "," AND") */
        Production.Supplier.UserAuthorizationId = deleted.UserAuthorizationId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete DbSecurity.UserAuthorization because Production.Supplier exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* DbSecurity.UserAuthorization authorizes Production.Product on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="DbSecurity", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="Production", CHILD_TABLE="Product"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Product_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
    IF EXISTS (
      SELECT * FROM deleted,Production.Product
      WHERE
        /*  %JoinFKPK(Production.Product,deleted," = "," AND") */
        Production.Product.UserAuthorizationId = deleted.UserAuthorizationId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete DbSecurity.UserAuthorization because Production.Product exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* DbSecurity.UserAuthorization authorizes Sales.Shipper on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="DbSecurity", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="Sales", CHILD_TABLE="Shipper"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Shipper_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
    IF EXISTS (
      SELECT * FROM deleted,Sales.Shipper
      WHERE
        /*  %JoinFKPK(Sales.Shipper,deleted," = "," AND") */
        Sales.Shipper.UserAuthorizationId = deleted.UserAuthorizationId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete DbSecurity.UserAuthorization because Sales.Shipper exists.'
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


CREATE TRIGGER DbSecurity.tU_UserAuthorization ON DbSecurity.UserAuthorization FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on UserAuthorization */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insUserAuthorizationId dGroupMidterm.dNumber,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* DbSecurity.UserAuthorization authorizes Sales.OrderDetail on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="000b606e", PARENT_OWNER="DbSecurity", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="Sales", CHILD_TABLE="OrderDetail"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_OrderDetail_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(UserAuthorizationId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Sales.OrderDetail
      WHERE
        /*  %JoinFKPK(Sales.OrderDetail,deleted," = "," AND") */
        Sales.OrderDetail.UserAuthorizationId = deleted.UserAuthorizationId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update DbSecurity.UserAuthorization because Sales.OrderDetail exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* DbSecurity.UserAuthorization authorizes Production.Category on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="DbSecurity", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="Production", CHILD_TABLE="Category"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Category_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(UserAuthorizationId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Production.Category
      WHERE
        /*  %JoinFKPK(Production.Category,deleted," = "," AND") */
        Production.Category.UserAuthorizationId = deleted.UserAuthorizationId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update DbSecurity.UserAuthorization because Production.Category exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* DbSecurity.UserAuthorization authorizes Sales.Orders on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="DbSecurity", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="Sales", CHILD_TABLE="Orders"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Order_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(UserAuthorizationId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Sales.Orders
      WHERE
        /*  %JoinFKPK(Sales.Orders,deleted," = "," AND") */
        Sales.Orders.UserAuthorizationId = deleted.UserAuthorizationId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update DbSecurity.UserAuthorization because Sales.Orders exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* DbSecurity.UserAuthorization authorizes Sales.Customer on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="DbSecurity", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="Sales", CHILD_TABLE="Customer"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Customer_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(UserAuthorizationId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Sales.Customer
      WHERE
        /*  %JoinFKPK(Sales.Customer,deleted," = "," AND") */
        Sales.Customer.UserAuthorizationId = deleted.UserAuthorizationId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update DbSecurity.UserAuthorization because Sales.Customer exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* DbSecurity.UserAuthorization authorizes HumanResources.Employee on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="DbSecurity", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="HumanResources", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Employee_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(UserAuthorizationId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,HumanResources.Employee
      WHERE
        /*  %JoinFKPK(HumanResources.Employee,deleted," = "," AND") */
        HumanResources.Employee.UserAuthorizationId = deleted.UserAuthorizationId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update DbSecurity.UserAuthorization because HumanResources.Employee exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* DbSecurity.UserAuthorization authorizes Production.Supplier on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="DbSecurity", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="Production", CHILD_TABLE="Supplier"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Supplier_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(UserAuthorizationId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Production.Supplier
      WHERE
        /*  %JoinFKPK(Production.Supplier,deleted," = "," AND") */
        Production.Supplier.UserAuthorizationId = deleted.UserAuthorizationId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update DbSecurity.UserAuthorization because Production.Supplier exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* DbSecurity.UserAuthorization authorizes Production.Product on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="DbSecurity", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="Production", CHILD_TABLE="Product"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Product_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(UserAuthorizationId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Production.Product
      WHERE
        /*  %JoinFKPK(Production.Product,deleted," = "," AND") */
        Production.Product.UserAuthorizationId = deleted.UserAuthorizationId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update DbSecurity.UserAuthorization because Production.Product exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* DbSecurity.UserAuthorization authorizes Sales.Shipper on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="DbSecurity", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="Sales", CHILD_TABLE="Shipper"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Shipper_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(UserAuthorizationId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Sales.Shipper
      WHERE
        /*  %JoinFKPK(Sales.Shipper,deleted," = "," AND") */
        Sales.Shipper.UserAuthorizationId = deleted.UserAuthorizationId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update DbSecurity.UserAuthorization because Sales.Shipper exists.'
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


