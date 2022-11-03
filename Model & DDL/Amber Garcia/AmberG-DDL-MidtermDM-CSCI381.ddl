
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

CREATE SCHEMA [DbSecurity]
go

CREATE TYPE [Udt].[address]
	FROM NVARCHAR(60) NULL
go

CREATE TYPE [Udt].[blobDefinition]
	FROM VARBINARY(MAX) NULL
go

CREATE TYPE [Udt].[categoryName]
	FROM NVARCHAR(15) NULL
go

CREATE TYPE [Udt].[city]
	FROM NVARCHAR(15) NULL
go

CREATE TYPE [Udt].[country]
	FROM NVARCHAR(15) NULL
go

CREATE TYPE [Udt].[currency]
	FROM MONEY NULL
go

CREATE TYPE [Udt].[dateYearMonthDay]
	FROM DATE NOT NULL
go

CREATE TYPE [Udt].[firstName]
	FROM NVARCHAR(25) NULL
go

CREATE TYPE [Udt].[flagBit]
	FROM BIT NULL
go

CREATE TYPE [Udt].[lastName]
	FROM NVARCHAR(25) NULL
go

CREATE TYPE [Udt].[name]
	FROM NVARCHAR(40) NULL
go

CREATE TYPE [Udt].[description]
	FROM NVARCHAR(200) NULL
go

CREATE TYPE [Udt].[percentage]
	FROM NUMERIC(4,3) NULL
go

CREATE TYPE [Udt].[postalCode]
	FROM NVARCHAR(10) NULL
go

CREATE TYPE [Udt].[quantitySmall]
	FROM SMALLINT NULL
go

CREATE TYPE [Udt].[region]
	FROM NVARCHAR(15) NULL
go

CREATE TYPE [Udt].[sequenceNo]
	FROM INT NULL
go

CREATE TYPE [Udt].[shortDescription]
	FROM NVARCHAR(100) NULL
go

CREATE TYPE [Udt].[stateName]
	FROM NVARCHAR(15) NOT NULL
go

CREATE TYPE [Udt].[surrogateKeyInt]
	FROM INT NULL
go

CREATE TYPE [Udt].[telephoneNumber]
	FROM NVARCHAR(24) NULL
go

CREATE TYPE [Udt].[title]
	FROM NVARCHAR(30) NOT NULL
go

CREATE TYPE [Udt].[titleOfCourtesy]
	FROM NVARCHAR(5) NOT NULL
go

CREATE TYPE [Udt].[year]
	FROM NCHAR(4) NOT NULL
go

CREATE TYPE [Udt].[triggerOption]
	FROM CHAR(1) NOT NULL
go

CREATE TYPE [Udt].[isDeletion]
	FROM CHAR(1) NOT NULL
go

CREATE TYPE [Udt].[flagChar]
	FROM CHAR(1) NOT NULL
go

CREATE TYPE [classTime]
	FROM NCHAR(5) NULL
go

CREATE TYPE [individualProject]
	FROM NVARCHAR(60) NULL
go

CREATE TYPE [groupName]
	FROM NVARCHAR(20) NULL
go

CREATE TYPE [systemTime]
	FROM DATETIME2(7) NULL
go

CREATE TYPE [dMidtermDataModel]
	FROM CHAR(18) NULL
go

CREATE TYPE [sdNumber]
	FROM INT NULL
go

CREATE TYPE [sdString]
	FROM NVARCHAR(1) NULL
go

CREATE TYPE [sdChar]
	FROM CHAR(1) NULL
go

CREATE TYPE [sdBinary]
	FROM BIT NULL
go

CREATE TYPE [sdDateTime]
	FROM DATETIME NULL
go

CREATE TYPE [sdMoney]
	FROM CHAR(18) NULL
go

CREATE TYPE [month]
	FROM CHAR(1) NULL
go

CREATE TYPE [day]
	FROM CHAR(1) NULL
go

CREATE TYPE [department]
	FROM NVARCHAR(60) NULL
go

CREATE TYPE [fullName]
	FROM NVARCHAR(50) NULL
go

CREATE TYPE [productName]
	FROM NVARCHAR(50) NULL
go

CREATE TYPE [contactName]
	FROM NVARCHAR(30) NULL
go

CREATE TYPE [companyName]
	FROM NVARCHAR(60) NULL
go

CREATE TYPE [sdName]
	FROM NVARCHAR(30) NULL
go

CREATE TABLE [Triggered].[AuditTriggeredEmployeeHistory]
( 
	[TriggeredEmployeeHistoryId] [Udt].[surrogateKeyInt]  IDENTITY ( 1,1 )  NOT NULL 
	CONSTRAINT [CHK_AuditTriggeredEmployeeHistory_TriggeredEmployeeHistoryId]
		CHECK  ( TriggeredEmployeeHistoryId >= 0 ),
	[AuditTriggeredEmployeeHistoryTimestamp] [systemTime]  NULL 
	CONSTRAINT [DF_AuditTriggeredEmployeeHistory_AuditTriggeredEmployeeHistoryTimestamp]
		 DEFAULT  sysdatetime()
	CONSTRAINT [CHK_AuditTriggeredEmployeeHistory_AuditTriggeredEmployeeHistoryTimeStamp]
		CHECK  ( AuditTriggeredEmployeeHistoryTimestamp BETWEEN '19000101 00:00:00' AND '99991212 23:59:59' ),
	[TriggerOption]      [Udt].[triggerOption]  NULL 
	CONSTRAINT [DF_AuditTriggeredEmployeeHistory_TriggerOption]
		 DEFAULT  'U',
	[EmployeeId]         [Udt].[surrogateKeyInt]  NOT NULL 
	CONSTRAINT [CHK_AuditTriggeredEmployeeHistory_EmployeeId]
		CHECK  ( EmployeeId >= 0 ),
	[EmployeeFullName]   [fullName]  NOT NULL 
	CONSTRAINT [CHK_AuditTriggeredEmployeeHistory_EmployeeFullName]
		CHECK  ( [EmployeeFullName] like '[A-Z]%' ),
	[Department]         [department]  NULL 
	CONSTRAINT [DF_AuditTriggeredEmployeeHistory_Department]
		 DEFAULT  'N/A',
	[Salary]             [Udt].[currency]  NOT NULL 
	CONSTRAINT [DF_AuditTriggeredEmployeeHistory_Salary]
		 DEFAULT  0.0
	CONSTRAINT [CHK_AuditTriggeredEmployeeHistory_Salary]
		CHECK  ( Salary >= 0 ),
	[Notes]              [Udt].[description]  NULL 
	CONSTRAINT [DF_AuditTriggeredEmployeeHistory_Notes]
		 DEFAULT  'N/A',
	[IsDeleted]          [Udt].[flagChar]  NULL 
	CONSTRAINT [DF_AuditTriggeredEmployeeHistory_IsDeleted]
		 DEFAULT  'N',
	[TransactionNumber]  [Udt].[sequenceNo]  NULL 
	CONSTRAINT [DF_AuditTriggeredEmployeeHistory_TransactionNumber]
		 DEFAULT  1,
	[UserAuthorizationId] [Udt].[surrogateKeyInt]  NOT NULL 
	CONSTRAINT [CHK_AuditTriggeredEmployeeHistory_UserAuthorizationId]
		CHECK  ( UserAuthorizationId >= 0 ),
	[SysStartTime]       [systemTime]  NULL 
	CONSTRAINT [DF_AuditTriggeredEmployeeHistory_SysStartTime]
		 DEFAULT  '19000101 00:00:00'
	CONSTRAINT [CHK_AuditTriggeredEmployeeHistory_SysStartTime]
		CHECK  ( SysStartTime BETWEEN '19000101 00:00:00' AND '99991212 23:59:59' ),
	[SysEndTime]         [systemTime]  NULL 
	CONSTRAINT [DF_AuditTriggeredEmployeeHistory_SysEndTime]
		 DEFAULT  '99991231 23:59:59'
	CONSTRAINT [CHK_AuditTriggeredEmployeeHistory_SysEndTime]
		CHECK  ( SysEndTime BETWEEN '19000101 00:00:00' AND '99991212 23:59:59' ),
	[TimestampRowChanged] [systemTime]  NULL 
	CONSTRAINT [DF_AuditTriggeredEmployeeHistory_TimeStampRowChanged]
		 DEFAULT  sysdatetime()
	CONSTRAINT [CHK_AuditTriggeredEmployeeHistory_TimeStampRowChanged]
		CHECK  ( TimestampRowChanged BETWEEN '19000101 00:00:00' AND '99991212 23:59:59' )
)
go

CREATE TABLE [Production].[Category]
( 
	[CategoryId]         [Udt].[surrogateKeyInt]  IDENTITY ( 1,1 )  NOT NULL 
	CONSTRAINT [CHK_GreaterThanZero_1973072287]
		CHECK  ( CategoryId >= 0 ),
	[CategoryName]       [Udt].[categoryName]  NOT NULL 
	CONSTRAINT [CHK_Category_CategoryName]
		CHECK  ( [CategoryName] like '[A-Z]%' ),
	[Description]        [Udt].[description]  NOT NULL 
	CONSTRAINT [DF_Category_Description]
		 DEFAULT  'N/A',
	[UserAuthorizationId] [Udt].[surrogateKeyInt]  NOT NULL 
	CONSTRAINT [CHK_Category_UserAuthorizationId]
		CHECK  ( UserAuthorizationId >= 0 ),
	[DateAdded]          [systemTime] 
	CONSTRAINT [DF_Category_DateAdded]
		 DEFAULT  sysdatetime()
	CONSTRAINT [CHK_Category_DateAdded]
		CHECK  ( DateAdded BETWEEN '19000101 00:00:00' AND '99991212 23:59:59' ),
	[DateOfLastUpdate]   [systemTime] 
	CONSTRAINT [DF_Category_DateOfLastUpdate]
		 DEFAULT  sysdatetime()
	CONSTRAINT [CHK_Category_DateOfLastUpdate]
		CHECK  ( DateOfLastUpdate BETWEEN '19000101 00:00:00' AND '99991212 23:59:59' )
)
go

CREATE TABLE [Sales].[Customer]
( 
	[CustomerId]         [Udt].[surrogateKeyInt]  IDENTITY ( 1,1 )  NOT NULL 
	CONSTRAINT [CHK_GreaterThanZero_1719746129]
		CHECK  ( CustomerId >= 0 ),
	[CustomerCompanyName] [companyName]  NOT NULL 
	CONSTRAINT [CHK_Names_365544081]
		CHECK  ( [CustomerCompanyName] like '[A-Z]%' ),
	[CustomerContactName] [fullName]  NOT NULL 
	CONSTRAINT [CHK_Names_364822165]
		CHECK  ( [CustomerContactName] like '[A-Z]%' ),
	[CustomerContactTitle] [Udt].[title]  NOT NULL 
	CONSTRAINT [DF_NotApplicable_107579518]
		 DEFAULT  'N/A',
	[CustomerAddress]    [Udt].[address]  NOT NULL 
	CONSTRAINT [CHK_Address_1529490624]
		CHECK  ( [CustomerAddress]='%Street%' OR [CustomerAddress]='%Avenue%' OR [CustomerAddress]='%Road%' OR [CustomerAddress]='%Boulevard%' ),
	[CustomerCity]       [Udt].[city]  NOT NULL ,
	[CustomerRegion]     [Udt].[region]  NULL ,
	[CustomerPostalCode] [Udt].[postalCode]  NULL ,
	[CustomerCountry]    [Udt].[country]  NOT NULL 
	CONSTRAINT [CHK_Country_1849116641]
		CHECK  ( [CustomerCountry] like '[A-Z][A-Z][A-Z]' ),
	[CustomerPhoneNumber] [Udt].[telephoneNumber]  NOT NULL ,
	[CustomerFaxNumber]  [Udt].[telephoneNumber]  NULL ,
	[UserAuthorizationId] [Udt].[surrogateKeyInt]  NOT NULL 
	CONSTRAINT [CHK_GreaterThanZero_1501068540]
		CHECK  ( UserAuthorizationId >= 0 ),
	[DateAdded]          [systemTime]  NULL 
	CONSTRAINT [DF_Customer_DateAdded]
		 DEFAULT  sysdatetime()
	CONSTRAINT [CHK_SystemTime_992341435]
		CHECK  ( DateAdded BETWEEN '19000101 00:00:00' AND '99991212 23:59:59' ),
	[DateOfLastUpdate]   [systemTime]  NULL 
	CONSTRAINT [DF_Customer_DateOfLastUpdate]
		 DEFAULT  sysdatetime()
	CONSTRAINT [CHK_SystemTime_1992329236]
		CHECK  ( DateOfLastUpdate BETWEEN '19000101 00:00:00' AND '99991212 23:59:59' )
)
go

CREATE TABLE [HumanResources].[Employee]
( 
	[EmployeeId]         [Udt].[surrogateKeyInt]  IDENTITY ( 1,1 )  NOT NULL 
	CONSTRAINT [CHK_Employee_EmployeeId]
		CHECK  ( EmployeeId >= 0 ),
	[EmployeeLastName]   [Udt].[lastName]  NOT NULL 
	CONSTRAINT [CHK_Names_977617417]
		CHECK  ( [EmployeeLastName] like '[A-Z]%' ),
	[EmployeeFirstName]  [Udt].[firstName]  NOT NULL 
	CONSTRAINT [CHK_Names_691883658]
		CHECK  ( [EmployeeFirstName] like '[A-Z]%' ),
	[EmployeeTitle]      [Udt].[title]  NOT NULL 
	CONSTRAINT [DF_NotApplicable_1129740630]
		 DEFAULT  'N/A',
	[EmployeeTitleOfCourtesy] [Udt].[titleOfCourtesy]  NOT NULL 
	CONSTRAINT [DF_NotApplicable_1300358649]
		 DEFAULT  'N/A'
	CONSTRAINT [CHK_TitleOfCourtesy_174464384]
		CHECK  ( [EmployeeTitleOfCourtesy]='Mr.' OR [EmployeeTitleOfCourtesy]='Ms.' OR [EmployeeTitleOfCourtesy]='Mrs.' OR [EmployeeTitleOfCourtesy]='Dr.' OR [EmployeeTitleOfCourtesy]='Jr.' ),
	[BirthDate]          [Udt].[dateYearMonthDay]  NOT NULL 
	CONSTRAINT [DF_StartDate_1850539791]
		 DEFAULT  '19000101',
	[HireDate]           [Udt].[dateYearMonthDay]  NOT NULL 
	CONSTRAINT [DF_StartDate_1052443337]
		 DEFAULT  '19000101'
	CONSTRAINT [CHK_SystemTime_807818427]
		CHECK  ( HireDate BETWEEN '19000101 00:00:00' AND '99991212 23:59:59' ),
	[EmployeeAddress]    [Udt].[address]  NOT NULL 
	CONSTRAINT [CHK_Address_1426075848]
		CHECK  ( [EmployeeAddress]='%Street%' OR [EmployeeAddress]='%Avenue%' OR [EmployeeAddress]='%Road%' OR [EmployeeAddress]='%Boulevard%' ),
	[EmployeeCity]       [Udt].[city]  NULL ,
	[EmployeeRegion]     [Udt].[region]  NULL ,
	[EmployeePostalCode] [Udt].[postalCode]  NULL ,
	[EmployeeCountry]    [Udt].[country]  NOT NULL 
	CONSTRAINT [CHK_Country_1745701865]
		CHECK  ( [EmployeeCountry] like '[A-Z][A-Z][A-Z]' ),
	[EmployeePhoneNumber] [Udt].[telephoneNumber]  NOT NULL ,
	[EmployeeManagerId]  [Udt].[surrogateKeyInt]  NULL 
	CONSTRAINT [CHK_GreaterThanZero_228491186]
		CHECK  ( EmployeeManagerId >= 0 ),
	[UserAuthorizationId] [Udt].[surrogateKeyInt]  NOT NULL 
	CONSTRAINT [CHK_GreaterThanZero_1449361152]
		CHECK  ( UserAuthorizationId >= 0 ),
	[DateAdded]          [systemTime]  NULL 
	CONSTRAINT [DF_Employee_DateAdded]
		 DEFAULT  sysdatetime()
	CONSTRAINT [CHK_Employee_DateAdded]
		CHECK  ( DateAdded BETWEEN '19000101 00:00:00' AND '99991212 23:59:59' ),
	[DateOfLastUpdate]   [systemTime]  NULL 
	CONSTRAINT [DF_Employee_DateOfLastUpdate]
		 DEFAULT  sysdatetime()
	CONSTRAINT [CHK_Employee_DateOfLastUpdate]
		CHECK  ( DateOfLastUpdate BETWEEN '19000101 00:00:00' AND '99991212 23:59:59' )
)
go

ALTER TABLE [HumanResources].[Employee]
	 WITH CHECK ADD CONSTRAINT [CHK_birthdate] CHECK  ( BirthDate <= sysdatetime() )
go

CREATE TABLE [dbo].[Nums]
( 
	[N]                  [Udt].[surrogateKeyInt]  NOT NULL 
	CONSTRAINT [CHK_GreaterThanZero_205676916]
		CHECK  ( N >= 0 ),
	[UserAuthorizationId] [Udt].[surrogateKeyInt]  NOT NULL 
	CONSTRAINT [CHK_GreaterThanZero_301655922]
		CHECK  ( UserAuthorizationId >= 0 ),
	[DateAdded]          [systemTime] 
	CONSTRAINT [DF_Nums_DateAdded]
		 DEFAULT  sysdatetime()
	CONSTRAINT [CHK_SystemTime_1366664410]
		CHECK  ( DateAdded BETWEEN '19000101 00:00:00' AND '99991212 23:59:59' ),
	[DateOfLastUpdate]   [systemTime] 
	CONSTRAINT [DF_Nums_DateOfLastUpdate]
		 DEFAULT  sysdatetime()
	CONSTRAINT [CHK_SystemTime_189604775]
		CHECK  ( DateOfLastUpdate BETWEEN '19000101 00:00:00' AND '99991212 23:59:59' )
)
go

CREATE TABLE [Sales].[OrderDetail]
( 
	[OrderId]            [Udt].[surrogateKeyInt]  NOT NULL 
	CONSTRAINT [CHK_GreaterThanZero_1483247583]
		CHECK  ( OrderId >= 0 ),
	[ProductId]          [Udt].[surrogateKeyInt]  NOT NULL 
	CONSTRAINT [CHK_GreaterThanZero_1942353892]
		CHECK  ( ProductId >= 0 ),
	[UnitPrice]          [Udt].[currency]  NOT NULL 
	CONSTRAINT [DFT_OrderDetails_UnitPrice]
		 DEFAULT  0
	CONSTRAINT [CHK_GreaterThanZero_1422976782]
		CHECK  ( UnitPrice >= 0 ),
	[Quantity]           [Udt].[quantitySmall]  NOT NULL 
	CONSTRAINT [DFT_OrderDetails_Quantity]
		 DEFAULT  1,
	[DiscountPercentage] [Udt].[percentage]  NOT NULL 
	CONSTRAINT [DFT_OrderDetails_DiscountPercentage]
		 DEFAULT  0,
	[UserAuthorizationId] [Udt].[surrogateKeyInt]  NOT NULL 
	CONSTRAINT [CHK_GreaterThanZero_1597529028]
		CHECK  ( UserAuthorizationId >= 0 ),
	[DateAdded]          [systemTime] 
	CONSTRAINT [DF_OrderDetail_DateAdded]
		 DEFAULT  sysdatetime()
	CONSTRAINT [CHK_SystemTime_335630989]
		CHECK  ( DateAdded BETWEEN '19000101 00:00:00' AND '99991212 23:59:59' ),
	[DateOfLastUpdate]   [systemTime] 
	CONSTRAINT [DF_OrderDetail_DateOfLastUpdate]
		 DEFAULT  sysdatetime()
	CONSTRAINT [CHK_SystemTime_1106268332]
		CHECK  ( DateOfLastUpdate BETWEEN '19000101 00:00:00' AND '99991212 23:59:59' ),
	[OrderDetailId]      [Udt].[surrogateKeyInt]  NOT NULL 
	CONSTRAINT [CHK_GreaterThanZero_787461543]
		CHECK  ( OrderDetailId >= 0 )
)
go

ALTER TABLE [Sales].[OrderDetail]
	 WITH CHECK ADD CONSTRAINT [CHK_Quantity] CHECK  ( [Quantity]>(0) )
go

ALTER TABLE [Sales].[OrderDetail]
	 WITH CHECK ADD CONSTRAINT [CHK_DiscountPercentage] CHECK  ( DiscountPercentage BETWEEN 0 AND 1 )
go

CREATE TABLE [Sales].[Orders]
( 
	[OrderId]            [Udt].[surrogateKeyInt]  IDENTITY ( 1,1 )  NOT NULL 
	CONSTRAINT [CHK_GreaterThanZero_99083743]
		CHECK  ( OrderId >= 0 ),
	[CustomerId]         [Udt].[surrogateKeyInt]  NULL 
	CONSTRAINT [CHK_GreaterThanZero_476561505]
		CHECK  ( CustomerId >= 0 ),
	[EmployeeId]         [Udt].[surrogateKeyInt]  NOT NULL 
	CONSTRAINT [CHK_GreaterThanZero_543468387]
		CHECK  ( EmployeeId >= 0 ),
	[ShipperId]          [Udt].[surrogateKeyInt]  NOT NULL 
	CONSTRAINT [CHK_GreaterThanZero_67071585]
		CHECK  ( ShipperId >= 0 ),
	[OrderDate]          [Udt].[dateYearMonthDay]  NOT NULL 
	CONSTRAINT [DF_StartDate_428934584]
		 DEFAULT  '19000101'
	CONSTRAINT [CHK_SystemTime_758610405]
		CHECK  ( OrderDate BETWEEN '19000101 00:00:00' AND '99991212 23:59:59' ),
	[RequiredDate]       [Udt].[dateYearMonthDay]  NOT NULL 
	CONSTRAINT [DF_StartDate_1638421329]
		 DEFAULT  '19000101'
	CONSTRAINT [CHK_SystemTime_543280691]
		CHECK  ( RequiredDate BETWEEN '19000101 00:00:00' AND '99991212 23:59:59' ),
	[ShipToDate]         [Udt].[dateYearMonthDay]  NULL 
	CONSTRAINT [DF_StartDate_1824573135]
		 DEFAULT  '19000101'
	CONSTRAINT [CHK_SystemTime_1814046389]
		CHECK  ( ShipToDate BETWEEN '19000101 00:00:00' AND '99991212 23:59:59' ),
	[Freight]            [Udt].[currency]  NOT NULL 
	CONSTRAINT [DFT_Orders_freight]
		 DEFAULT  0
	CONSTRAINT [CHK_GreaterThanZero_186385985]
		CHECK  ( Freight >= 0 ),
	[ShipToName]         [fullName]  NOT NULL 
	CONSTRAINT [CHK_Names_1630693246]
		CHECK  ( [ShipToName] like '[A-Z]%' ),
	[ShipToAddress]      [Udt].[address]  NOT NULL 
	CONSTRAINT [CHK_Address_1248202160]
		CHECK  ( [ShipToAddress]='%Street%' OR [ShipToAddress]='%Avenue%' OR [ShipToAddress]='%Road%' OR [ShipToAddress]='%Boulevard%' ),
	[ShipToCity]         [Udt].[city]  NOT NULL ,
	[ShipToRegion]       [Udt].[region]  NULL ,
	[ShipToPostalCode]   [Udt].[postalCode]  NULL ,
	[ShipToCountry]      [Udt].[country]  NOT NULL 
	CONSTRAINT [CHK_Country_928576143]
		CHECK  ( [ShipToCountry] like '[A-Z][A-Z][A-Z]' ),
	[UserAuthorizationId] [Udt].[surrogateKeyInt]  NOT NULL 
	CONSTRAINT [CHK_GreaterThanZero_1115106943]
		CHECK  ( UserAuthorizationId >= 0 ),
	[DateAdded]          [systemTime]  NULL 
	CONSTRAINT [DF_Order_DateAdded]
		 DEFAULT  sysdatetime()
	CONSTRAINT [CHK_SystemTime_1014262482]
		CHECK  ( DateAdded BETWEEN '19000101 00:00:00' AND '99991212 23:59:59' ),
	[DateOfLastUpdate]   [systemTime]  NULL 
	CONSTRAINT [DF_Order_DateOfLastUpdate]
		 DEFAULT  sysdatetime()
	CONSTRAINT [CHK_SystemTime_1606367639]
		CHECK  ( DateOfLastUpdate BETWEEN '19000101 00:00:00' AND '99991212 23:59:59' )
)
go

CREATE TABLE [Production].[Product]
( 
	[ProductId]          [Udt].[surrogateKeyInt]  IDENTITY ( 1,1 )  NOT NULL 
	CONSTRAINT [CHK_GreaterThanZero_26694255]
		CHECK  ( ProductId >= 0 ),
	[ProductName]        [Udt].[name]  NOT NULL 
	CONSTRAINT [CHK_Names_901899163]
		CHECK  ( [ProductName] like '[A-Z]%' ),
	[SupplierId]         [Udt].[surrogateKeyInt]  NOT NULL 
	CONSTRAINT [CHK_GreaterThanZero_2021177966]
		CHECK  ( SupplierId >= 0 ),
	[CategoryId]         [Udt].[surrogateKeyInt]  NOT NULL 
	CONSTRAINT [CHK_GreaterThanZero_1787410009]
		CHECK  ( CategoryId >= 0 ),
	[UnitPrice]          [Udt].[currency]  NOT NULL 
	CONSTRAINT [DFT_Products_unitprice]
		 DEFAULT  0,
	[Discontinued]       [Udt].[flagBit]  NOT NULL 
	CONSTRAINT [DFT_Products_discontinued]
		 DEFAULT  0,
	[UserAuthorizationId] [Udt].[surrogateKeyInt]  NOT NULL 
	CONSTRAINT [CHK_GreaterThanZero_1450520287]
		CHECK  ( UserAuthorizationId >= 0 ),
	[DateAdded]          [systemTime] 
	CONSTRAINT [DF_Product_DateAdded]
		 DEFAULT  sysdatetime()
	CONSTRAINT [CHK_SystemTime_1047792318]
		CHECK  ( DateAdded BETWEEN '19000101 00:00:00' AND '99991212 23:59:59' ),
	[DateOfLastUpdate]   [systemTime] 
	CONSTRAINT [DF_Product_DateOfLastUpdate]
		 DEFAULT  sysdatetime()
	CONSTRAINT [CHK_SystemTime_1941780983]
		CHECK  ( DateOfLastUpdate BETWEEN '19000101 00:00:00' AND '99991212 23:59:59' )
)
go

ALTER TABLE [Production].[Product]
	 WITH CHECK ADD CONSTRAINT [CHK_Products_unitprice] CHECK  ( UnitPrice >= 0 )
go

CREATE TABLE [Sales].[Shipper]
( 
	[ShipperId]          [Udt].[surrogateKeyInt]  IDENTITY ( 1,1 )  NOT NULL 
	CONSTRAINT [CHK_Shipper_ShipperId_GreaterThanZero]
		CHECK  ( ShipperId >= 0 ),
	[ShipperCompanyName] [companyName]  NOT NULL 
	CONSTRAINT [CHK_Names_63397268]
		CHECK  ( [ShipperCompanyName] like '[A-Z]%' ),
	[PhoneNumber]        [Udt].[telephoneNumber]  NOT NULL ,
	[UserAuthorizationId] [Udt].[surrogateKeyInt]  NOT NULL 
	CONSTRAINT [CHK_Shipper_UserAuthorizationId]
		CHECK  ( UserAuthorizationId >= 0 ),
	[DateAdded]          [systemTime]  NULL 
	CONSTRAINT [DF_Shipper_DateAdded]
		 DEFAULT  sysdatetime()
	CONSTRAINT [CHK_Shipper_DateAdded]
		CHECK  ( DateAdded BETWEEN '19000101 00:00:00' AND '99991212 23:59:59' ),
	[DateOfLastUpdate]   [systemTime]  NULL 
	CONSTRAINT [DF_Shipper_DateOfLastUpdate]
		 DEFAULT  sysdatetime()
	CONSTRAINT [CHK_Shipper_DateOfLastUpdate]
		CHECK  ( DateOfLastUpdate BETWEEN '19000101 00:00:00' AND '99991212 23:59:59' )
)
go

CREATE TABLE [Production].[Supplier]
( 
	[SupplierId]         [Udt].[surrogateKeyInt]  IDENTITY ( 1,1 )  NOT NULL 
	CONSTRAINT [CHK_GreaterThanZero_1854359095]
		CHECK  ( SupplierId >= 0 ),
	[SupplierCompanyName] [Udt].[name]  NOT NULL 
	CONSTRAINT [CHK_Names_801225865]
		CHECK  ( [SupplierCompanyName] like '[A-Z]%' ),
	[SupplierContactName] [fullName]  NOT NULL 
	CONSTRAINT [CHK_Names_800503949]
		CHECK  ( [SupplierContactName] like '[A-Z]%' ),
	[SupplierContactTitle] [Udt].[title]  NOT NULL 
	CONSTRAINT [DF_NotApplicable_328102267]
		 DEFAULT  'N/A',
	[SupplierAddress]    [Udt].[address]  NOT NULL 
	CONSTRAINT [CHK_Address_1428309688]
		CHECK  ( [SupplierAddress]='%Street%' OR [SupplierAddress]='%Avenue%' OR [SupplierAddress]='%Road%' OR [SupplierAddress]='%Boulevard%' ),
	[SupplierCity]       [Udt].[city]  NOT NULL ,
	[SupplierRegion]     [Udt].[region]  NULL ,
	[SupplierPostalCode] [Udt].[postalCode]  NULL ,
	[SupplierCountry]    [Udt].[country]  NOT NULL 
	CONSTRAINT [CHK_Country_1747935705]
		CHECK  ( [SupplierCountry] like '[A-Z][A-Z][A-Z]' ),
	[SupplierPhoneNumber] [Udt].[telephoneNumber]  NOT NULL ,
	[SupplierFaxNumber]  [Udt].[telephoneNumber]  NULL ,
	[UserAuthorizationId] [Udt].[surrogateKeyInt]  NOT NULL 
	CONSTRAINT [CHK_GreaterThanZero_1450478072]
		CHECK  ( UserAuthorizationId >= 0 ),
	[DateAdded]          [systemTime] 
	CONSTRAINT [DF_Supplier_DateAdded]
		 DEFAULT  sysdatetime()
	CONSTRAINT [CHK_SystemTime_1058599358]
		CHECK  ( DateAdded BETWEEN '19000101 00:00:00' AND '99991212 23:59:59' ),
	[DateOfLastUpdate]   [systemTime] 
	CONSTRAINT [DF_Supplier_DateOfLastUpdate]
		 DEFAULT  sysdatetime()
	CONSTRAINT [CHK_SystemTime_1941738768]
		CHECK  ( DateOfLastUpdate BETWEEN '19000101 00:00:00' AND '99991212 23:59:59' )
)
go

CREATE TABLE [Triggered].[TriggeredEmployee]
( 
	[EmployeeId]         [Udt].[surrogateKeyInt]  NOT NULL 
	CONSTRAINT [CHK_GreaterThanZero_2101720971]
		CHECK  ( EmployeeId >= 0 ),
	[EmployeeFullName]   [fullName]  NOT NULL 
	CONSTRAINT [CHK_Names_705386971]
		CHECK  ( [EmployeeFullName] like '[A-Z]%' ),
	[Department]         [department]  NOT NULL 
	CONSTRAINT [DF_NotApplicable_104999064]
		 DEFAULT  'N/A',
	[Salary]             [Udt].[currency]  NOT NULL 
	CONSTRAINT [DF_ZeroPtZero_1720105628]
		 DEFAULT  0.0
	CONSTRAINT [CHK_GreaterThanZero_215762771]
		CHECK  ( Salary >= 0 ),
	[Notes]              [Udt].[description]  NOT NULL 
	CONSTRAINT [DF_NotApplicable_1214198315]
		 DEFAULT  'N/A',
	[IsDeleted]          [Udt].[flagChar]  NULL 
	CONSTRAINT [DF_Triggered_Employee_IsDeleted]
		 DEFAULT  'N',
	[TransactionNumber]  [Udt].[sequenceNo]  NULL 
	CONSTRAINT [DF_Triggered_Employee_TransactionNumber]
		 DEFAULT  1,
	[UserAuthorizationId] [Udt].[surrogateKeyInt]  NOT NULL 
	CONSTRAINT [CHK_GreaterThanZero_595810012]
		CHECK  ( UserAuthorizationId >= 0 ),
	[SysStartTime]       [systemTime]  NULL 
	CONSTRAINT [DF_Triggered_Employee_SysStartTime]
		 DEFAULT  '19000101 00:00:00'
	CONSTRAINT [CHK_SystemTime_157029019]
		CHECK  ( SysStartTime BETWEEN '19000101 00:00:00' AND '99991212 23:59:59' ),
	[SysEndTime]         [systemTime]  NULL 
	CONSTRAINT [DF_Triggered_Employee_SysEndTime]
		 DEFAULT  '99991231 23:59:59'
	CONSTRAINT [CHK_SystemTime_817703884]
		CHECK  ( SysEndTime BETWEEN '19000101 00:00:00' AND '99991212 23:59:59' ),
	[TimestampRowChanged] [systemTime]  NULL 
	CONSTRAINT [DF_Triggered_Employee_TimestampRowChanged]
		 DEFAULT  sysdatetime()
	CONSTRAINT [CHK_SystemTime_740027389]
		CHECK  ( TimestampRowChanged BETWEEN '19000101 00:00:00' AND '99991212 23:59:59' )
)
go

CREATE TABLE [DbSecurity].[UserAuthorization]
( 
	[UserAuthorizationId] [Udt].[surrogateKeyInt]  NOT NULL 
	CONSTRAINT [CHK_GreaterThanZero_1164417478]
		CHECK  ( UserAuthorizationId >= 0 ),
	[ClassTime]          [classTime] 
	CONSTRAINT [DF_ClassTime]
		 DEFAULT  '9:15',
	[IndividualProject]  [individualProject]  NULL 
	CONSTRAINT [DF_UserAuthorization_IndividualProject_1563001659]
		 DEFAULT  'CSCI381 Midterm Project',
	[GroupMemberLastName] [Udt].[lastName]  NOT NULL 
	CONSTRAINT [CHK_Names_1449896536]
		CHECK  ( [GroupMemberLastName] like '[A-Z]%' ),
	[GroupMemberFirstName] [Udt].[firstName]  NOT NULL 
	CONSTRAINT [CHK_Names_1336253862]
		CHECK  ( [GroupMemberFirstName] like '[A-Z]%' ),
	[GroupName]          [groupName]  NOT NULL 
	CONSTRAINT [CHK_Names_1064415602]
		CHECK  ( [GroupName] like '[A-Z]%' ),
	[DateAdded]          [systemTime] 
	CONSTRAINT [DF_UserAuthorization_DateAdded]
		 DEFAULT  sysdatetime()
	CONSTRAINT [CHK_SystemTime_1275667407]
		CHECK  ( DateAdded BETWEEN '19000101 00:00:00' AND '99991212 23:59:59' ),
	[DateOfLastUpdate]   [systemTime] 
	CONSTRAINT [DF_UserAuthorization_DateOfLastUpdate]
		 DEFAULT  sysdatetime()
	CONSTRAINT [CHK_SystemTime_1655678174]
		CHECK  ( DateOfLastUpdate BETWEEN '19000101 00:00:00' AND '99991212 23:59:59' )
)
go

CREATE TABLE [Audit].[VersionedEmployeeHistory]
( 
	[EmployeeId]         int  NOT NULL ,
	[EmployeeFullName]   [fullName]  NOT NULL ,
	[Department]         [department]  NOT NULL ,
	[Salary]             [Udt].[currency]  NOT NULL ,
	[Notes]              [Udt].[description]  NOT NULL ,
	[SysStart]           [systemTime]  NOT NULL ,
	[SysEnd]             [systemTime]  NOT NULL ,
	[UserAuthorizationId] [Udt].[surrogateKeyInt]  NOT NULL 
)
go

ALTER TABLE [Triggered].[AuditTriggeredEmployeeHistory]
	ADD CONSTRAINT [PK_TriggeredEmployeeHistoryId] PRIMARY KEY  NONCLUSTERED ([TriggeredEmployeeHistoryId] ASC)
go

CREATE UNIQUE CLUSTERED INDEX [ix_Employees] ON [Triggered].[AuditTriggeredEmployeeHistory]
( 
	[EmployeeId]          ASC,
	[SysStartTime]        ASC,
	[SysEndTime]          ASC,
	[TriggeredEmployeeHistoryId]  ASC
)
go

ALTER TABLE [Production].[Category]
	ADD CONSTRAINT [PK_Categories] PRIMARY KEY  CLUSTERED ([CategoryId] ASC)
go

ALTER TABLE [Sales].[Customer]
	ADD CONSTRAINT [PK_Customers] PRIMARY KEY  CLUSTERED ([CustomerId] ASC)
go

ALTER TABLE [HumanResources].[Employee]
	ADD CONSTRAINT [PK_Employees] PRIMARY KEY  CLUSTERED ([EmployeeId] ASC)
go

ALTER TABLE [dbo].[Nums]
	ADD CONSTRAINT [PK_Nums] PRIMARY KEY  CLUSTERED ([N] ASC)
go

ALTER TABLE [Sales].[OrderDetail]
	ADD CONSTRAINT [PK_OrderDetails] PRIMARY KEY  CLUSTERED ([OrderDetailId] ASC)
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

ALTER TABLE [Triggered].[TriggeredEmployee]
	ADD CONSTRAINT [PK_TriggeredEmployee] PRIMARY KEY  NONCLUSTERED ([EmployeeId] ASC)
go

CREATE CLUSTERED INDEX [IX_TransEmployee] ON [Triggered].[TriggeredEmployee]
( 
	[EmployeeId]          ASC,
	[SysStartTime]        ASC,
	[SysEndTime]          ASC
)
go

ALTER TABLE [DbSecurity].[UserAuthorization]
	ADD CONSTRAINT [XPKUserAuthorization] PRIMARY KEY  CLUSTERED ([UserAuthorizationId] ASC)
go

CREATE TABLE [SystemVersioned].[VersionedEmployee]
( 
	[EmployeeId]         [Udt].[surrogateKeyInt]  NOT NULL 
	CONSTRAINT [CHK_GreaterThanZero_2108572792]
		CHECK  ( EmployeeId >= 0 ),
	[EmployeeFullName]   [fullName]  NOT NULL 
	CONSTRAINT [CHK_Names_790060504]
		CHECK  ( [EmployeeFullName] like '[A-Z]%' ),
	[Department]         [department]  NOT NULL 
	CONSTRAINT [DF_NotApplicable_306587037]
		 DEFAULT  'N/A',
	[Salary]             [Udt].[currency]  NOT NULL 
	CONSTRAINT [DF_ZeroPtZero_1787019176]
		 DEFAULT  0.0
	CONSTRAINT [CHK_GreaterThanZero_300436304]
		CHECK  ( Salary >= 0 ),
	[Notes]              [Udt].[description]  NOT NULL 
	CONSTRAINT [DF_NotApplicable_1129524782]
		 DEFAULT  'N/A',
	[SysStart]           [systemTime]  GENERATED ALWAYS AS ROW START HIDDEN  NOT NULL 
	CONSTRAINT [DFT_VersionedHistory_Employees_SysStart]
		 DEFAULT  '19000101 00:00:00'
	CONSTRAINT [CHK_SystemTime_1476740298]
		CHECK  ( SysStart BETWEEN '19000101 00:00:00' AND '99991212 23:59:59' ),
	[SysEnd]             [systemTime]  GENERATED ALWAYS AS ROW END HIDDEN  NOT NULL 
	CONSTRAINT [DFT_VersionedHistory_Employees_SysEnd]
		 DEFAULT  '99991231 23:59:59'
	CONSTRAINT [CHK_SystemTime_1591905231]
		CHECK  ( SysEnd BETWEEN '19000101 00:00:00' AND '99991212 23:59:59' ),
	[UserAuthorizationId] [Udt].[surrogateKeyInt]  NOT NULL 
	CONSTRAINT [CHK_GreaterThanZero_797397985]
		CHECK  ( UserAuthorizationId >= 0 ),
	CONSTRAINT [PK_EmployeeVersioned] PRIMARY KEY  NONCLUSTERED ([EmployeeId] ASC),
	PERIOD FOR SYSTEM_TIME (SysStart,SysEnd)
)
WITH 
(
	SYSTEM_VERSIONING = ON (HISTORY_TABLE = [Audit].[VersionedEmployeeHistory], DATA_CONSISTENCY_CHECK = OFF)
)
go

CREATE CLUSTERED INDEX [ix_VersionedEmployeeHistory] ON [Audit].[VersionedEmployeeHistory]
( 
	[SysStart]            ASC,
	[SysEnd]              ASC
)
go

CREATE VIEW [JsonOutput].[uvw_HumanResourcesEmployee]([EmployeeLastName],[EmployeeFirstName],[EmployeeTitle],[EmployeeTitleOfCourtesy],[BirthDate],[HireDate],[EmployeeAddress],[EmployeeCity],[EmployeeRegion],[EmployeePostalCode],[EmployeeCountry],[EmployeePhoneNumber],[EmployeeManagerId],[EmployeeId])
AS
SELECT E.[EmployeeLastName],E.[EmployeeFirstName],E.[EmployeeTitle],E.[EmployeeTitleOfCourtesy],E.[BirthDate],E.[HireDate],E.[EmployeeAddress],E.[EmployeeCity],E.[EmployeeRegion],E.[EmployeePostalCode],E.[EmployeeCountry],E.[EmployeePhoneNumber],E.[EmployeeManagerId],E.[EmployeeId]
	FROM [HumanResources].[Employee] E
go

CREATE VIEW [JsonOutput].[uvw_ProductionCategory]([CategoryName],[Description],[CategoryId])
AS
SELECT [Production].[Category].[CategoryName],[Production].[Category].[Description],[Production].[Category].[CategoryId]
	FROM [Production].[Category]
go

CREATE VIEW [JsonOutput].[uvw_ProductionProduct]([ProductName],[SupplierId],[CategoryId],[UnitPrice],[Discontinued],[CategoryObjectId],[CategoryName],[Description],[SupplierCompanyName],[SupplierContactName],[SupplierPhoneNumber],[SupplierFaxNumber],[ProductId])
AS
SELECT P.[ProductName],S.[SupplierId],P.[CategoryId],P.[UnitPrice],P.[Discontinued],C.[CategoryId],C.[CategoryName],C.[Description],S.[SupplierCompanyName],S.[SupplierContactName],S.[SupplierPhoneNumber],S.[SupplierFaxNumber],P.[ProductId]
	FROM [Production].[Supplier] S,[Production].[Category] C,[Production].[Product] P
go

CREATE VIEW [JsonOutput].[uvw_ProductionSupplier]([SupplierCompanyName],[SupplierContactName],[SupplierContactTitle],[SupplierAddress],[SupplierCity],[SupplierRegion],[SupplierPostalCode],[SupplierCountry],[SupplierPhoneNumber],[SupplierFaxNumber],[SupplierId])
AS
SELECT S.[SupplierCompanyName],S.[SupplierContactName],S.[SupplierContactTitle],S.[SupplierAddress],S.[SupplierCity],S.[SupplierRegion],S.[SupplierPostalCode],S.[SupplierCountry],S.[SupplierPhoneNumber],S.[SupplierFaxNumber],S.[SupplierId]
	FROM [Production].[Supplier] S
go

CREATE VIEW [JsonOutput].[uvw_SalesCustomer]([CustomerCompanyName],[CustomerContactName],[CustomerContactTitle],[CustomerAddress],[CustomerCity],[CustomerRegion],[CustomerPostalCode],[CustomerCountry],[CustomerPhoneNumber],[CustomerFaxNumber],[CustomerId])
AS
SELECT C.[CustomerCompanyName],C.[CustomerContactName],C.[CustomerContactTitle],C.[CustomerAddress],C.[CustomerCity],C.[CustomerRegion],C.[CustomerPostalCode],C.[CustomerCountry],C.[CustomerPhoneNumber],C.[CustomerFaxNumber],C.[CustomerId]
	FROM [Sales].[Customer] C
go

CREATE VIEW [JsonOutput].[uvw_SalesShipper]([ShipperCompanyName],[PhoneNumber],[ShipperId])
AS
SELECT S.[ShipperCompanyName],S.[PhoneNumber],S.[ShipperId]
	FROM [Sales].[Shipper] S
go

CREATE VIEW [JsonOutput].[uvw_Order]([OrderId],[CustomerId],[EmployeeId],[ShipperId],[OrderDate],[RequiredDate],[ShipToDate],[Freight],[ShipToName],[ShipToAddress],[ShipToCity],[ShipToRegion],[ShipToPostalCode],[ShipToCountry])
AS
SELECT O.[OrderId],O.[CustomerId],O.[EmployeeId],O.[ShipperId],O.[OrderDate],O.[RequiredDate],O.[ShipToDate],O.[Freight],O.[ShipToName],O.[ShipToAddress],O.[ShipToCity],O.[ShipToRegion],O.[ShipToPostalCode],O.[ShipToCountry]
	FROM [Sales].[Orders] O
go

CREATE VIEW [JsonOutput].[uvw_OrderDetail]([OrderId],[ProductId],[UnitPrice],[Quantity],[DiscountPercentage])
AS
SELECT OD.[OrderId],OD.[ProductId],OD.[UnitPrice],OD.[Quantity],OD.[DiscountPercentage]
	FROM [Sales].[OrderDetail] OD
go

CREATE VIEW [Utils].[uvw_FindColumnDefinitionPlusDefaultAndCheckConstraint] AS  SELECT  concat( tbl.TABLE_SCHEMA , '.' , tbl.TABLE_NAME )  AS FullyQualifiedTableName, tbl.TABLE_SCHEMA AS SchemaName, tbl.TABLE_NAME AS TableName, col.COLUMN_NAME AS ColumnName, col.ORDINAL_POSITION AS OrdinalPosition,  concat( col.DOMAIN_SCHEMA , '.' , col.DOMAIN_NAME )  AS FullyQualifiedDomainName, col.DOMAIN_NAME AS DomainName, CASE WHEN col.DATA_TYPE = 'varchar' THEN  concat( 'varchar(' , CHARACTER_MAXIMUM_LENGTH , ')' )  WHEN col.DATA_TYPE = 'char' THEN  concat( 'char(' , CHARACTER_MAXIMUM_LENGTH , ')' )  WHEN col.DATA_TYPE = 'nvarchar' THEN  concat( 'nvarchar(' , CHARACTER_MAXIMUM_LENGTH , ')' )  WHEN col.DATA_TYPE = 'nchar' THEN  concat( 'nchar(' , CHARACTER_MAXIMUM_LENGTH , ')' )  WHEN col.DATA_TYPE = 'numeric' THEN  concat( 'numeric(' , NUMERIC_PRECISION_RADIX , ', ' , NUMERIC_SCALE , ')' )  WHEN col.DATA_TYPE = 'decimal' THEN  concat( 'decimal(' , NUMERIC_PRECISION_RADIX , ', ' , NUMERIC_SCALE , ')' )  ELSE col.DATA_TYPE END AS DataType, col.IS_NULLABLE AS IsNullable, dcn.DefaultName, col.COLUMN_DEFAULT AS DefaultNameDefinition, cc.CONSTRAINT_NAME AS CheckConstraintRuleName, cc.CHECK_CLAUSE AS CheckConstraintRuleNameDefinition FROM (  SELECT TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, TABLE_TYPE FROM INFORMATION_SCHEMA.TABLES WHERE ( TABLE_TYPE = 'BASE TABLE' ) ) AS tbl    INNER JOIN   (  SELECT TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, ORDINAL_POSITION, COLUMN_DEFAULT, IS_NULLABLE, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH, CHARACTER_OCTET_LENGTH, NUMERIC_PRECISION, NUMERIC_PRECISION_RADIX, NUMERIC_SCALE, DATETIME_PRECISION, CHARACTER_SET_CATALOG, CHARACTER_SET_SCHEMA, CHARACTER_SET_NAME, COLLATION_CATALOG, COLLATION_SCHEMA, COLLATION_NAME, DOMAIN_CATALOG, DOMAIN_SCHEMA, DOMAIN_NAME FROM INFORMATION_SCHEMA.COLUMNS ) AS col  ON col.TABLE_CATALOG = tbl.TABLE_CATALOG AND col.TABLE_SCHEMA = tbl.TABLE_SCHEMA AND col.TABLE_NAME = tbl.TABLE_NAME   LEFT OUTER JOIN   (  SELECT t.name AS TableName,  schema_name( s.schema_id )  AS SchemaName, ac.name AS ColumnName, d.name AS DefaultName FROM sys.all_columns AS ac   INNER JOIN   sys.tables AS t ON ac.object_id = t.object_id   INNER JOIN   sys.schemas AS s ON t.schema_id = s.schema_id   INNER JOIN   sys.default_constraints AS d ON ac.default_object_id = d.object_id ) AS dcn  ON dcn.SchemaName = tbl.TABLE_SCHEMA AND dcn.TableName = tbl.TABLE_NAME AND dcn.ColumnName = col.COLUMN_NAME   LEFT OUTER JOIN   (  SELECT cu.TABLE_CATALOG, cu.TABLE_SCHEMA, cu.TABLE_NAME, cu.COLUMN_NAME, c.CONSTRAINT_CATALOG, c.CONSTRAINT_SCHEMA, c.CONSTRAINT_NAME, c.CHECK_CLAUSE FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE AS cu   INNER JOIN   INFORMATION_SCHEMA.CHECK_CONSTRAINTS AS c ON c.CONSTRAINT_NAME = cu.CONSTRAINT_NAME ) AS cc  ON cc.TABLE_SCHEMA = tbl.TABLE_SCHEMA AND cc.TABLE_NAME = tbl.TABLE_NAME AND cc.COLUMN_NAME = col.COLUMN_NAME
go

CREATE VIEW Utils.uw_FindAllDatabaseColumnsOnTheServer(Server_Name,Target_Database_Version,Instance_Name,Database_Name,Host_Name,SchemaName,FullyQualifiedTableName,TableName,ColumnName,OrdinalPosition,FullyQualifiedDomainName,DomainName,DataType,IsNullable,DefaultName,DefaultNameDefinition,CheckConstraintRuleName,CheckConstraintRuleNameDefinition)
AS
SELECT @@servername,@@version,@@servicename,db_name(),host_name(),fcd.SchemaName,fcd.FullyQualifiedTableName,fcd.TableName,fcd.ColumnName,fcd.OrdinalPosition,fcd.FullyQualifiedDomainName,fcd.DomainName,fcd.DataType,fcd.IsNullable,fcd.DefaultName,fcd.DefaultNameDefinition,fcd.CheckConstraintRuleName,fcd.CheckConstraintRuleNameDefinition
	FROM Utils.uvw_FindColumnDefinitionPlusDefaultAndCheckConstraint fcd
		WHERE fcd.SchemaName IN ('Sales' , 'Production' , 'HumanResources')
go


ALTER TABLE [HumanResources].[Employee] WITH CHECK 
	ADD CONSTRAINT [FK_Employees_Employees] FOREIGN KEY ([EmployeeManagerId]) REFERENCES [HumanResources].[Employee]([EmployeeId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [HumanResources].[Employee]
	  WITH CHECK CHECK CONSTRAINT [FK_Employees_Employees]
go


ALTER TABLE [Sales].[OrderDetail] WITH CHECK 
	ADD CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY ([OrderId]) REFERENCES [Sales].[Orders]([OrderId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [Sales].[OrderDetail]
	  WITH CHECK CHECK CONSTRAINT [FK_OrderDetail_Order]
go

ALTER TABLE [Sales].[OrderDetail] WITH CHECK 
	ADD CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY ([ProductId]) REFERENCES [Production].[Product]([ProductId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [Sales].[OrderDetail]
	  WITH CHECK CHECK CONSTRAINT [FK_OrderDetail_Product]
go


ALTER TABLE [Sales].[Orders] WITH CHECK 
	ADD CONSTRAINT [FK_Order_Shipper] FOREIGN KEY ([ShipperId]) REFERENCES [Sales].[Shipper]([ShipperId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [Sales].[Orders]
	  WITH CHECK CHECK CONSTRAINT [FK_Order_Shipper]
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
	ADD CONSTRAINT [FK_Order_Customer] FOREIGN KEY ([CustomerId]) REFERENCES [Sales].[Customer]([CustomerId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [Sales].[Orders]
	  WITH CHECK CHECK CONSTRAINT [FK_Order_Customer]
go


ALTER TABLE [Production].[Product] WITH CHECK 
	ADD CONSTRAINT [FK_product_supplier] FOREIGN KEY ([SupplierId]) REFERENCES [Production].[Supplier]([SupplierId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [Production].[Product]
	  WITH CHECK CHECK CONSTRAINT [FK_product_supplier]
go

ALTER TABLE [Production].[Product] WITH CHECK 
	ADD CONSTRAINT [FK_Product_Category] FOREIGN KEY ([CategoryId]) REFERENCES [Production].[Category]([CategoryId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [Production].[Product]
	  WITH CHECK CHECK CONSTRAINT [FK_Product_Category]
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

CREATE FUNCTION Triggered.[utvf_EmployeeCurrentAndHistoryCTE] (@EmployeeId int )  
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
				 , UserAuthorizationId
				 , SysStartTime
				 , SysEndTime
				 , TimestampRowChanged
			from [Triggered].[TriggeredEmployee]
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
				 , UserAuthorizationId
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
			 , AllTransactions.UserAuthorizationId
			 , AllTransactions.SysStartTime
			 , AllTransactions.SysEndTime
			 , AllTransactions.TimestampRowChanged
		from AllTransactions
	);




go

CREATE FUNCTION Triggered.[utvf_EmployeeCurrentAndHistory] (@EmployeeId int )  
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
				 , UserAuthorizationId
				 , SysStartTime
				 , SysEndTime
				 , TimestampRowChanged
			from [Triggered].[TriggeredEmployee]
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
				 , UserAuthorizationId
				 , SysStartTime
				 , SysEndTime
				 , TimestampRowChanged
			from [Triggered].[AuditTriggeredEmployeeHistory]
			where EmployeeId = @EmployeeId
		);





go

CREATE PROCEDURE Sales.[usp_getorders] @country nvarchar(40)   
   
 AS begin
    select o.OrderId
         , o.CustomerId
         , o.EmployeeId
         , o.OrderDate
		 ,@country as Country
    from Sales.[Orders] as o
    where o.ShipToCountry = @country;
end;
go

CREATE TRIGGER Triggered.[uTdu_AuditTriggeredEmployeeHistory] ON Triggered.TriggeredEmployee
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
				  , UserAuthorizationId
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
					 , UserAuthorizationId
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


ENABLE TRIGGER [Triggered].[uTdu_AuditTriggeredEmployeeHistory] ON [Triggered].TriggeredEmployee
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
           @insCategoryId Udt.surrogateKeyInt,
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
    /* Sales.Customer  Sales.Orders on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0001212d", PARENT_OWNER="Sales", PARENT_TABLE="Customer"
    CHILD_OWNER="Sales", CHILD_TABLE="Orders"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
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
           @insCustomerId Udt.surrogateKeyInt,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Sales.Customer  Sales.Orders on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00014402", PARENT_OWNER="Sales", PARENT_TABLE="Customer"
    CHILD_OWNER="Sales", CHILD_TABLE="Orders"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Order_Customer", FK_COLUMNS="CustomerId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(CustomerId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Sales.Orders
      WHERE
        /*  %JoinFKPK(Sales.Orders,deleted," = "," AND") */
        Sales.Orders.CustomerId = deleted.CustomerId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Sales.Customer because Sales.Orders exists.'
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
    /* HumanResources.Employee  Sales.Orders on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00042750", PARENT_OWNER="HumanResources", PARENT_TABLE="Employee"
    CHILD_OWNER="Sales", CHILD_TABLE="Orders"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
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
           @insEmployeeId Udt.surrogateKeyInt,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* HumanResources.Employee  Sales.Orders on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="000451c3", PARENT_OWNER="HumanResources", PARENT_TABLE="Employee"
    CHILD_OWNER="Sales", CHILD_TABLE="Orders"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
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
    /* ERWIN_RELATION:CHECKSUM="0002e33a", PARENT_OWNER="Production", PARENT_TABLE="Product"
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
    /* Sales.Orders  Sales.OrderDetail on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Sales", PARENT_TABLE="Orders"
    CHILD_OWNER="Sales", CHILD_TABLE="OrderDetail"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
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


CREATE TRIGGER Sales.tU_OrderDetail ON Sales.OrderDetail FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on OrderDetail */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insOrderDetailId Udt.surrogateKeyInt,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Production.Product  Sales.OrderDetail on child update no action */
  /* ERWIN_RELATION:CHECKSUM="0002f790", PARENT_OWNER="Production", PARENT_TABLE="Product"
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
  /* Sales.Orders  Sales.OrderDetail on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Sales", PARENT_TABLE="Orders"
    CHILD_OWNER="Sales", CHILD_TABLE="OrderDetail"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_OrderDetail_Order", FK_COLUMNS="OrderId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(OrderId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Sales.Orders
        WHERE
          /* %JoinFKPK(inserted,Sales.Orders) */
          inserted.OrderId = Sales.Orders.OrderId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Sales.OrderDetail because Sales.Orders does not exist.'
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




CREATE TRIGGER Sales.tD_Orders ON Sales.Orders FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on Orders */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Sales.Orders  Sales.OrderDetail on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="000540ee", PARENT_OWNER="Sales", PARENT_TABLE="Orders"
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
             @errmsg = 'Cannot delete Sales.Orders because Sales.OrderDetail exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Sales.Shipper  Sales.Orders on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Sales", PARENT_TABLE="Shipper"
    CHILD_OWNER="Sales", CHILD_TABLE="Orders"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
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
    /* HumanResources.Employee  Sales.Orders on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="HumanResources", PARENT_TABLE="Employee"
    CHILD_OWNER="Sales", CHILD_TABLE="Orders"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
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
    /* Sales.Customer  Sales.Orders on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Sales", PARENT_TABLE="Customer"
    CHILD_OWNER="Sales", CHILD_TABLE="Orders"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
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


CREATE TRIGGER Sales.tU_Orders ON Sales.Orders FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on Orders */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insOrderId Udt.surrogateKeyInt,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Sales.Orders  Sales.OrderDetail on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="0005b848", PARENT_OWNER="Sales", PARENT_TABLE="Orders"
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
             @errmsg = 'Cannot update Sales.Orders because Sales.OrderDetail exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Sales.Shipper  Sales.Orders on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Sales", PARENT_TABLE="Shipper"
    CHILD_OWNER="Sales", CHILD_TABLE="Orders"
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
             @errmsg = 'Cannot update Sales.Orders because Sales.Shipper does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* HumanResources.Employee  Sales.Orders on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="HumanResources", PARENT_TABLE="Employee"
    CHILD_OWNER="Sales", CHILD_TABLE="Orders"
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
             @errmsg = 'Cannot update Sales.Orders because HumanResources.Employee does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Sales.Customer  Sales.Orders on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Sales", PARENT_TABLE="Customer"
    CHILD_OWNER="Sales", CHILD_TABLE="Orders"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
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
             @errmsg = 'Cannot update Sales.Orders because Sales.Customer does not exist.'
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
           @insProductId Udt.surrogateKeyInt,
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
    /* Sales.Shipper  Sales.Orders on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00011ad6", PARENT_OWNER="Sales", PARENT_TABLE="Shipper"
    CHILD_OWNER="Sales", CHILD_TABLE="Orders"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
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
           @insShipperId Udt.surrogateKeyInt,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Sales.Shipper  Sales.Orders on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="000132f9", PARENT_OWNER="Sales", PARENT_TABLE="Shipper"
    CHILD_OWNER="Sales", CHILD_TABLE="Orders"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
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
           @insSupplierId Udt.surrogateKeyInt,
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

go


