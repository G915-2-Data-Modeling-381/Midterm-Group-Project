
CREATE SCHEMA Audit;

CREATE SCHEMA Data;

CREATE SCHEMA dbo;

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
	CHECK (VALUE LIKE '%A-Z0-9a-z\-');

CREATE Domain sdAuditSysTime_AG.auditTriggeredTimestamp_WL
	AS TIMESTAMP NOT NULL
	CHECK (VALUE  > '0001-01-01' AND VALUE < '9999-12-31') ;

CREATE Domain sdYearMonthDay_AG.birthDate_AG
	AS DATE NULL;

CREATE Domain sdAddressString_AN.city_WL
	AS VARCHAR(20) NULL;

CREATE Domain sdMiscellanousStrings_AG.classTime_AN
	AS CHAR(5) NULL
	CHECK (VALUE LIKE '1-9:0-50-9' OR VALUE LIKE '1-20-9:0-50-9');

CREATE Domain sdNameString_AG.companyName_AG
	AS VARCHAR(60) NULL
	CHECK (VALUE LIKE 'A-Z%');

CREATE Domain sdTitleString_JG.contactTitle_JG
	AS VARCHAR(60) NULL
	CHECK (VALUE != '');

CREATE Domain sdAddressString_AN.country_AG
	AS CHAR(3) NULL
	CHECK (VALUE like 'A-ZA-ZA-Z');

CREATE Domain sdMoneyNumber_JG.currency_JG
	AS NUMERIC NULL
	CHECK (VALUE > 0.000);

CREATE Domain sdYearMonthDay_AG.day_AG
	AS CHAR(2) NULL;

CREATE Domain dGroupMidterm.dBlob
	AS BYTEA NULL;

CREATE Domain dGroupMidterm.dDateTime
	AS TIMESTAMP NULL;

CREATE Domain departmentName_AN
	AS VARCHAR(25) NULL
	CHECK (VALUE LIKE 'A-Z%');

CREATE Domain dbo.dGroupMidtermProject
	AS CHAR(1) NULL;

CREATE Domain dGroupMidterm.dNumber
	AS INTEGER NULL;

CREATE Domain dGroupMidterm.dString
	AS CHAR(1) NULL;

CREATE Domain email_WL
	AS VARCHAR(40) NULL
	CHECK (VALUE LIKE '(a-zA-Z0-9_\-\.+)@(a-zA-Z0-9_\-\.+)\.(a-zA-Z{2,5})');

CREATE Domain sdContactNumber_AG.faxNumber_AG
	AS CHAR(14) NULL;

CREATE Domain sdNameString_AG.firstName_AG
	AS VARCHAR(25) NULL
	CHECK (VALUE like 'A-Z%');

CREATE Domain sdFlagCharacter_JG.flag_WL
	AS CHAR(1) NOT NULL
	CHECK (VALUE IN ('Y', 'N'));

CREATE Domain fullAddress_AN
	AS VARCHAR(100) NULL;

CREATE Domain sdNameString_AG.fullName_AG
	AS VARCHAR(52) NULL
	CHECK (VALUE LIKE 'A-Z% A-Z%');

CREATE Domain sdPositiveIntegerNumber_JG.grade_JG
	AS INTEGER NULL
	CHECK (VALUE BETWEEN 0 AND 100);

CREATE Domain sdYearMonthDay_AG.hireDate_AG
	AS DATE NULL;

CREATE Domain sdNameString_AG.lastName_AG
	AS VARCHAR(25) NULL
	CHECK (VALUE LIKE 'A-Z%');

CREATE Domain sdYearMonthDay_AG.month_AG
	AS CHAR(2) NULL;

CREATE Domain sdMiscellanousStrings_AG.notes_WL
	AS VARCHAR(300) NULL;

CREATE Domain sdContactNumber_AG.phoneNumber_AN
	AS CHAR(14) NULL
	CHECK (VALUE LIKE '%0-9\-');

CREATE Domain sdAddressString_AN.postalCode_AN
	AS CHAR(5) NULL
	CHECK (VALUE LIKE '0-90-90-90-90-9');

CREATE Domain sdPositiveIntegerNumber_JG.quantity_WL
	AS INTEGER NOT NULL
	CHECK (VALUE >= 0);

CREATE Domain sdAddressString_AN.region_AG
	AS VARCHAR(40) NULL;

CREATE Domain salary_AN
	AS INTEGER NULL
	CHECK (VALUE > 0);

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
	CHECK (VALUE > 0);

CREATE Domain dString.sdMiscellanousStrings
	AS CHAR(1) NULL;

CREATE Domain dNumber.sdMoneyNumber_JG
	AS NUMERIC NULL;

CREATE Domain dString.sdNameString_AG
	AS CHAR(1) NULL
	CHECK (VALUE LIKE 'A-Z%');

CREATE Domain dDatetime.sdNanosecondPreciseDatetime_JG
	AS TIMESTAMP NULL;

CREATE Domain sdIntegerNumber_JG.sdPositiveIntegerNumber_JG
	AS INTEGER NULL
	CHECK (VALUE > 0);

CREATE Domain dString.sdTitleString_JG
	AS CHAR(1) NULL
	CHECK (VALUE != '');

CREATE Domain dDatetime.sdYearMonthDay_AG
	AS DATE NULL;

CREATE Domain sdIntegerNumber_JG.sequenceNumber_JG
	AS INTEGER NOT NULL;

CREATE Domain sdAddressString_AN.state_AN
	AS CHAR(2) NULL;

CREATE Domain SurrogateKey_AN
	AS INTEGER NULL
	CHECK (VALUE > 0);

CREATE Domain sdKeyIntegerNumber_JG.surrogateKeyIdentity_JG
	AS INTEGER NOT NULL
	CHECK (VALUE > 0);

CREATE Domain sdAuditSysTime_AG.sysEnd_WL
	AS TIMESTAMP NOT NULL
	CHECK (VALUE > '0001-01-01');

CREATE Domain sdAuditSysTime_AG.sysStart_WL
	AS TIMESTAMP NOT NULL
	CHECK (VALUE < '9999-12-31');

CREATE Domain sdNanosecondPreciseDatetime_JG.timeStamp_AN
	AS TIMESTAMP NULL
	CHECK (VALUE BETWEEN '1900-01-01' AND statement_timestamp());

CREATE Domain sdTitleString_JG.titleOfCourtesy_AG
	AS CHAR(4) NULL
	CHECK (VALUE = 'Mr.' OR VALUE ='Ms.' OR  VALUE ='Mrs.' OR VALUE = 'Dr.' OR VALUE ='Jr.');

CREATE Domain sdFlagCharacter_JG.triggerOption_JG
	AS CHAR(1) NULL
	CHECK (VALUE IN ('U', 'D', 'I'));

CREATE Domain sdMoneyNumber_JG.unitPrice_WL
	AS NUMERIC NOT NULL
	CHECK (VALUE >= 0);

CREATE Domain sdYearMonthDay_AG.year_AG
	AS CHAR(4) NULL;

CREATE Domain YearMonthDay
	AS DATE NULL;

CREATE TABLE Triggered.AuditTriggeredEmployeeHistory
( 
	TriggeredEmployeeHistoryId integer  NOT NULL ,
	CONSTRAINT CHK_IntegerIsGreaterThanZero_JG_360563888 CHECK  ( TriggeredEmployeeHistoryId > 0 ) ,
	AuditDate            timestamp  NULL   DEFAULT  statement_timestamp(),
	TransactionNumber    integer  NULL ,
	IsDeleted            char(1)  NULL ,
	CONSTRAINT CHK_YesNoFlag_WL_183201200 CHECK  ( IsDeleted IN ('Y', 'N') ) ,
	DBAction             char(1)  NULL ,
	CONSTRAINT CHK_TriggerOptionUpdateDelete_JG_1635856640 CHECK  ( DBAction IN ('U', 'D', 'I') ) ,
	SysStartTime         timestamp  NULL ,
	CONSTRAINT CHK_SysStart_WL_1721604136 CHECK  ( SysStartTime  < '9999-12-31' ) ,
	SysEndTime           timestamp  NULL ,
	CONSTRAINT CHK_SysEnd_WL_438888481 CHECK  ( SysEndTime > '0001-01-01' ) ,
	TimestampRowChanged  timestamp  NULL   DEFAULT  statement_timestamp(),
	CONSTRAINT CHK_TimeStamp_AN_1497629324 CHECK  ( TimestampRowChanged BETWEEN '1900-01-01' AND statement_timestamp() ) ,
	Notes                varchar(300)  NULL ,
	UserAuthenticatedKey integer  NULL ,
	CONSTRAINT CHK_IntegerIsGreaterThanZero_JG_729193813 CHECK  ( UserAuthenticatedKey > 0 ) ,
	EmployeeId           integer  NULL ,
	CONSTRAINT CHK_IntegerIsGreaterThanZero_JG_1212872962 CHECK  ( EmployeeId > 0 ) ,
	FullName             varchar(52)  NULL ,
	Department           varchar(25)  NULL ,
	CONSTRAINT CHK_StartwithCapitalLetter_AG_810692677 CHECK  ( Department like 'A-Z%' ) ,
	Salary               integer  NULL ,
	BirthDate            date  NULL   DEFAULT  '19000101',
	HireDate             date  NULL   DEFAULT  statement_timestamp(),
	PhoneNumber          char(14)  NULL ,
	CONSTRAINT CHK_PhoneNumber_AN_1744420262 CHECK  ( PhoneNumber LIKE '%0-9\-' ) ,
	FullAddress          varchar(100)  NULL ,
	DateAdded            date  NULL   DEFAULT  statement_timestamp(),
	DateOfLastUpdate     timestamp  NULL   DEFAULT  statement_timestamp()
);

ALTER TABLE Triggered.AuditTriggeredEmployeeHistory
	ADD CONSTRAINT PK_TriggeredEmployeeHistoryId PRIMARY KEY (TriggeredEmployeeHistoryId);

CREATE UNIQUE INDEX ix_AuditEmployees ON Triggered.AuditTriggeredEmployeeHistory
( 
	EmployeeId,
	TriggeredEmployeeHistoryId
);

CREATE TABLE Production.Category
( 
	CategoryId           integer  NOT NULL ,
	CONSTRAINT CHK_IntegerIsGreaterThanZero_JG_911954493 CHECK  ( CategoryId > 0 ) ,
	CategoryName         varchar(52)  NULL ,
	Description          varchar(300)  NULL ,
	UserAuthorizationId  integer  NULL ,
	CONSTRAINT CHK_IntegerIsGreaterThanZero_JG_1149603570 CHECK  ( UserAuthorizationId > 0 ) ,
	DateAdded            timestamp  NULL   DEFAULT  statement_timestamp(),
	DateOfLastUpdate     timestamp  NULL   DEFAULT  statement_timestamp()
);

ALTER TABLE Production.Category
	ADD CONSTRAINT PK_Categories PRIMARY KEY (CategoryId);

CREATE TABLE Sales.Customer
( 
	CustomerId           integer  NOT NULL ,
	CONSTRAINT CHK_IntegerIsGreaterThanZero_JG_309805613 CHECK  ( CustomerId > 0 ) ,
	CustomerCompanyName  varchar(60)  NULL ,
	CONSTRAINT CHK_StartwithCapitalLetter_AG_800970338 CHECK  ( CustomerCompanyName like 'A-Z%' ) ,
	CustomerContactName  varchar(52)  NULL ,
	CONSTRAINT CHK_FullName_AG_717737074 CHECK  ( CustomerContactName like 'A-Z% A-Z%' ) ,
	CustomerContactTitle varchar(60)  NULL ,
	CONSTRAINT CHK_StringIsNotEmpty_JG_158049481 CHECK  ( CustomerContactTitle != '' ) ,
	CustomerAddress      varchar(35)  NULL ,
	CONSTRAINT CHK_ValidString_AN_824436934 CHECK  ( CustomerAddress LIKE '%A-Z0-9a-z\-' ) ,
	CustomerCity         varchar(20)  NULL ,
	CustomerRegion       varchar(40)  NULL ,
	CustomerPostalCode   char(5)  NULL ,
	CONSTRAINT CHK_PostalCode_AN_987597584 CHECK  ( CustomerPostalCode LIKE '0-90-90-90-90-9' ) ,
	CustomerCountry      char(3)  NULL   DEFAULT  'N/A',
	CONSTRAINT CHK_CountryCodes_AG_621145486 CHECK  ( CustomerCountry like 'A-ZA-ZA-Z' ) ,
	CustomerPhoneNumber  char(14)  NULL   DEFAULT  '(000)-000-0000',
	CONSTRAINT CHK_PhoneNumber_AN_2069674448 CHECK  ( CustomerPhoneNumber LIKE '%0-9\-' ) ,
	CustomerFaxNumber    char(14)  NULL   DEFAULT  '(000)-000-0000',
	UserAuthorizationId  integer  NULL ,
	CONSTRAINT CHK_IntegerIsGreaterThanZero_JG_1383958240 CHECK  ( UserAuthorizationId > 0 ) ,
	DateAdded            timestamp  NULL   DEFAULT  statement_timestamp(),
	DateOfLastUpdate     timestamp  NULL   DEFAULT  statement_timestamp()
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
	CONSTRAINT CHK_StartwithCapitalLetter_AG_1552354697 CHECK  ( Department like 'A-Z%' ) ,
	Salary               integer  NULL ,
	BirthDate            date  NULL   DEFAULT  '19000101',
	HireDate             date  NULL   DEFAULT  statement_timestamp(),
	PhoneNumber          char(14)  NULL ,
	CONSTRAINT CHK_PhoneNumber_AN_1513665921 CHECK  ( PhoneNumber LIKE '%0-9\-' ) ,
	FullAddress          varchar(100)  NULL ,
	DateAdded            date  NULL   DEFAULT  statement_timestamp(),
	DateOfLastUpdate     timestamp  NULL   DEFAULT  statement_timestamp()
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
	CONSTRAINT CHK_StartwithCapitalLetter_AG_1413043674 CHECK  ( EmployeeLastName like 'A-Z%' ) ,
	EmployeeFirstName    varchar(25)  NULL ,
	CONSTRAINT CHK_StartwithCapitalLetter_AG_1127309915 CHECK  ( EmployeeFirstName like 'A-Z%' ) ,
	EmployeeTitle        varchar(60)  NULL ,
	CONSTRAINT CHK_StringIsNotEmpty_JG_509046343 CHECK  ( EmployeeTitle != '' ) ,
	EmployeeTitleOfCourtesy char(4)  NULL ,
	CONSTRAINT CHK_TitleOfCourtesy_AG_2125145303 CHECK  ( EmployeeTitleOfCourtesy='Mr.' OR EmployeeTitleOfCourtesy='Ms.' OR EmployeeTitleOfCourtesy='Mrs.' OR EmployeeTitleOfCourtesy='Dr.' OR EmployeeTitleOfCourtesy='Jr.' ) ,
	EmployeeBirthDate    date  NULL   DEFAULT  '19000101',
	EmployeeHireDate     date  NULL   DEFAULT  statement_timestamp(),
	EmployeeDepartment   varchar(25)  NULL ,
	CONSTRAINT CHK_StartwithCapitalLetter_AG_775681119 CHECK  ( EmployeeDepartment like 'A-Z%' ) ,
	EmployeeSalary       integer  NULL ,
	EmployeeAddress      varchar(35)  NULL ,
	CONSTRAINT CHK_ValidString_AN_958250698 CHECK  ( EmployeeAddress LIKE '%A-Z0-9a-z\-' ) ,
	EmployeeCity         varchar(20)  NULL ,
	EmployeeRegion       varchar(40)  NULL ,
	EmployeePostalCode   char(5)  NULL ,
	CONSTRAINT CHK_PostalCode_AN_283218698 CHECK  ( EmployeePostalCode LIKE '0-90-90-90-90-9' ) ,
	EmployeeCountry      char(3)  NULL   DEFAULT  'N/A',
	EmployeePhoneNumber  char(14)  NULL ,
	CONSTRAINT CHK_PhoneNumber_AN_1935860684 CHECK  ( EmployeePhoneNumber LIKE '%0-9\-' ) ,
	EmployeeManagerId    integer  NULL ,
	CONSTRAINT CHK_IntegerIsGreaterThanZero_JG_1181449331 CHECK  ( EmployeeManagerId > 0 ) ,
	UserAuthorizationId  integer  NULL ,
	CONSTRAINT CHK_IntegerIsGreaterThanZero_JG_1435665628 CHECK  ( UserAuthorizationId > 0 ) ,
	DateAdded            date  NULL   DEFAULT  statement_timestamp(),
	DateOfLastUpdate     timestamp  NULL   DEFAULT  statement_timestamp()
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
	Received_On          timestamp  NULL   DEFAULT  statement_timestamp(),
	CONSTRAINT CHK_TimeStamp_AN_179745409 CHECK  ( Received_On BETWEEN '1900-01-01' AND statement_timestamp() ) 
);

ALTER TABLE Service.Feedback
	ADD CONSTRAINT PK__Feedback__0CF04B38E2275530 PRIMARY KEY (MemberID);

CREATE TABLE Data.Membership
( 
	MemberID             integer  NOT NULL ,
	CONSTRAINT CHK_IntegerIsGreaterThanZero_JG_1301638409 CHECK  ( MemberID > 0 ) ,
	FirstName            varchar(25)  NULL ,
	CONSTRAINT CHK_StartwithCapitalLetter_AG_1277830824 CHECK  ( FirstName like 'A-Z%' ) ,
	LastName             varchar(25)  NULL ,
	CONSTRAINT CHK_StartwithCapitalLetter_AG_1370094161 CHECK  ( LastName like 'A-Z%' ) ,
	Phone                char(14)  NULL   DEFAULT  '(000)-000-0000',
	CONSTRAINT CHK_PhoneNumber_AN_1496371262 CHECK  ( Phone LIKE '%0-9\-' ) ,
	Email                varchar(40)  NULL ,
	CONSTRAINT CK_Email_WL_1145602502 CHECK  ( Email LIKE '(a-zA-Z0-9_\-\.+)@(a-zA-Z0-9_\-\.+)\.(a-zA-Z{2,5})' ) ,
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
	Quantity             integer  NULL ,
	DiscountPercentage   decimal(4,3)  NULL ,
	CONSTRAINT CHK_DecimalIsGreaterThanZero_JG_46183865 CHECK  ( DiscountPercentage > 0.000 ) ,
	UserAuthorizationId  integer  NULL ,
	CONSTRAINT CHK_IntegerIsGreaterThanZero_JG_187588512 CHECK  ( UserAuthorizationId > 0 ) ,
	DateAdded            timestamp  NULL   DEFAULT  statement_timestamp(),
	CONSTRAINT CHK_TimeStamp_AN_1149131844 CHECK  ( DateAdded BETWEEN '1900-01-01' AND statement_timestamp() ) ,
	DateOfLastUpdate     timestamp  NULL   DEFAULT  statement_timestamp(),
	CONSTRAINT CHK_TimeStamp_AN_1589246382 CHECK  ( DateOfLastUpdate BETWEEN '1900-01-01' AND statement_timestamp() ) ,
	OrderId              integer  NOT NULL   DEFAULT  0.000,
	CONSTRAINT CHK_IntegerIsGreaterThanZero_JG_1401779197 CHECK  ( OrderId > 0 ) ,
	ProductId            integer  NOT NULL ,
	CONSTRAINT CHK_IntegerIsGreaterThanZero_JG_942672888 CHECK  ( ProductId > 0 ) 
);

ALTER TABLE Sales.OrderDetail
	ADD CONSTRAINT PK_OrderDetails PRIMARY KEY (OrderId,ProductId);

CREATE TABLE Sales.Orders
( 
	OrderId              integer  NOT NULL ,
	CONSTRAINT CHK_IntegerIsGreaterThanZero_JG_1310856774 CHECK  ( OrderId > 0 ) ,
	CustomerId           integer  NULL ,
	CONSTRAINT CHK_IntegerIsGreaterThanZero_JG_1886502021 CHECK  ( CustomerId > 0 ) ,
	EmployeeId           integer  NULL ,
	CONSTRAINT CHK_IntegerIsGreaterThanZero_JG_1953408903 CHECK  ( EmployeeId > 0 ) ,
	ShipperId            integer  NULL ,
	CONSTRAINT CHK_IntegerIsGreaterThanZero_JG_1342868932 CHECK  ( ShipperId > 0 ) ,
	OrderDate            timestamp  NULL   DEFAULT  statement_timestamp(),
	RequiredDate         timestamp  NULL   DEFAULT  statement_timestamp(),
	ShipToDate           timestamp  NULL   DEFAULT  statement_timestamp(),
	Freight              integer  NULL   DEFAULT  0,
	CONSTRAINT CHK_IntegerIsGreaterThanZero_JG_1596326501 CHECK  ( Freight > 0 ) ,
	ShipToName           varchar(52)  NULL ,
	CONSTRAINT CHK_FullName_AG_743368731 CHECK  ( ShipToName like 'A-Z% A-Z%' ) ,
	ShipToAddress        varchar(35)  NULL ,
	CONSTRAINT CHK_ValidString_AN_1048684405 CHECK  ( ShipToAddress LIKE '%A-Z0-9a-z\-' ) ,
	ShipToCity           varchar(20)  NULL ,
	ShipToRegion         varchar(40)  NULL ,
	ShipToPostalCode     char(5)  NULL ,
	CONSTRAINT CHK_PostalCode_AN_1432151190 CHECK  ( ShipToPostalCode LIKE '0-90-90-90-90-9' ) ,
	ShipToCountry        char(3)  NULL   DEFAULT  'N/A',
	CONSTRAINT CHK_CountryCodes_AG_2138419998 CHECK  ( ShipToCountry like 'A-ZA-ZA-Z' ) ,
	UserAuthorizationId  integer  NULL ,
	CONSTRAINT CHK_IntegerIsGreaterThanZero_JG_1769919837 CHECK  ( UserAuthorizationId > 0 ) ,
	DateAdded            timestamp  NULL   DEFAULT  statement_timestamp(),
	CONSTRAINT CHK_TimeStamp_AN_2027942962 CHECK  ( DateAdded BETWEEN '1900-01-01' AND statement_timestamp() ) ,
	DateOfLastUpdate     timestamp  NULL   DEFAULT  statement_timestamp(),
	CONSTRAINT CHK_TimeStamp_AN_730376194 CHECK  ( DateOfLastUpdate BETWEEN '1900-01-01' AND statement_timestamp() ) 
);

ALTER TABLE Sales.Orders
	ADD CONSTRAINT PK_Orders PRIMARY KEY (OrderId);

CREATE TABLE Production.Product
( 
	ProductId            integer  NOT NULL ,
	CONSTRAINT CHK_IntegerIsGreaterThanZero_JG_1383246262 CHECK  ( ProductId > 0 ) ,
	ProductName          varchar(52)  NULL ,
	SupplierId           integer  NULL ,
	CONSTRAINT CHK_IntegerIsGreaterThanZero_JG_863848814 CHECK  ( SupplierId > 0 ) ,
	CategoryId           integer  NULL ,
	CONSTRAINT CHK_IntegerIsGreaterThanZero_JG_1097616771 CHECK  ( CategoryId > 0 ) ,
	UnitPrice            integer  NULL ,
	Discontinued         char(1)  NULL ,
	UserAuthorizationId  integer  NULL ,
	CONSTRAINT CHK_IntegerIsGreaterThanZero_JG_1434506493 CHECK  ( UserAuthorizationId > 0 ) ,
	DateAdded            timestamp  NULL   DEFAULT  statement_timestamp(),
	DateOfLastUpdate     timestamp  NULL   DEFAULT  statement_timestamp()
);

ALTER TABLE Production.Product
	ADD CONSTRAINT PK_Products PRIMARY KEY (ProductId);

CREATE TABLE Sales.Shipper
( 
	ShipperId            integer  NOT NULL ,
	CONSTRAINT CHK_IntegerIsGreaterThanZero_JG_1550358970 CHECK  ( ShipperId > 0 ) ,
	ShipperCompanyName   varchar(60)  NULL ,
	CONSTRAINT CHK_StartwithCapitalLetter_AG_372028990 CHECK  ( ShipperCompanyName like 'A-Z%' ) ,
	PhoneNumber          char(14)  NULL   DEFAULT  '(000)-000-0000',
	CONSTRAINT CHK_PhoneNumber_AN_2101390277 CHECK  ( PhoneNumber LIKE '%0-9\-' ) ,
	UserAuthorizationId  integer  NULL ,
	CONSTRAINT CHK_IntegerIsGreaterThanZero_JG_1569245439 CHECK  ( UserAuthorizationId > 0 ) ,
	DateAdded            timestamp  NULL   DEFAULT  statement_timestamp(),
	CONSTRAINT CHK_TimeStamp_AN_450100774 CHECK  ( DateAdded BETWEEN '1900-01-01' AND statement_timestamp() ) ,
	DateOfLastUpdate     timestamp  NULL   DEFAULT  statement_timestamp(),
	CONSTRAINT CHK_TimeStamp_AN_937866232 CHECK  ( DateOfLastUpdate BETWEEN '1900-01-01' AND statement_timestamp() ) 
);

ALTER TABLE Sales.Shipper
	ADD CONSTRAINT PK_Shippers PRIMARY KEY (ShipperId);

CREATE TABLE Production.Supplier
( 
	SupplierId           integer  NOT NULL ,
	CONSTRAINT CHK_IntegerIsGreaterThanZero_JG_444418579 CHECK  ( SupplierId > 0 ) ,
	SupplierCompanyName  varchar(60)  NULL ,
	CONSTRAINT CHK_StartwithCapitalLetter_AG_1236652122 CHECK  ( SupplierCompanyName like 'A-Z%' ) ,
	SupplierContactName  varchar(52)  NULL ,
	CONSTRAINT CHK_FullName_AG_616556138 CHECK  ( SupplierContactName like 'A-Z% A-Z%' ) ,
	SupplierContactTitle varchar(60)  NULL ,
	CONSTRAINT CHK_StringIsNotEmpty_JG_290565327 CHECK  ( SupplierContactTitle != '' ) ,
	SupplierAddress      varchar(35)  NULL ,
	CONSTRAINT CHK_ValidString_AN_689823968 CHECK  ( SupplierAddress LIKE '%A-Z0-9a-z\-' ) ,
	SupplierCity         varchar(20)  NULL ,
	SupplierRegion       varchar(40)  NULL ,
	SupplierPostalCode   char(5)  NULL ,
	CONSTRAINT CHK_PostalCode_AN_855081738 CHECK  ( SupplierPostalCode LIKE '0-90-90-90-90-9' ) ,
	SupplierCountry      char(3)  NULL   DEFAULT  'N/A',
	CONSTRAINT CHK_CountryCodes_AG_519964550 CHECK  ( SupplierCountry like 'A-ZA-ZA-Z' ) ,
	SupplierPhoneNumber  char(14)  NULL   DEFAULT  '(000)-000-0000',
	CONSTRAINT CHK_PhoneNumber_AN_2090679882 CHECK  ( SupplierPhoneNumber LIKE '%0-9\-' ) ,
	SupplierFaxNumber    char(14)  NULL   DEFAULT  '(000)-000-0000',
	UserAuthorizationId  integer  NULL ,
	CONSTRAINT CHK_IntegerIsGreaterThanZero_JG_1434548708 CHECK  ( UserAuthorizationId > 0 ) ,
	DateAdded            timestamp  NULL   DEFAULT  statement_timestamp(),
	CONSTRAINT CHK_TimeStamp_AN_3410218 CHECK  ( DateAdded BETWEEN '1900-01-01' AND statement_timestamp() ) ,
	DateOfLastUpdate     timestamp  NULL   DEFAULT  statement_timestamp(),
	CONSTRAINT CHK_TimeStamp_AN_2029929473 CHECK  ( DateOfLastUpdate BETWEEN '1900-01-01' AND statement_timestamp() ) 
);

ALTER TABLE Production.Supplier
	ADD CONSTRAINT PK_Suppliers PRIMARY KEY (SupplierId);

CREATE TABLE DbSecurity.UserAuthorization
( 
	UserAuthorizationId  integer  NOT NULL ,
	ClassTime            char(5)  NULL ,
	IndividualProject    varchar(52)  NULL ,
	GroupMemberLastName  varchar(25)  NULL ,
	CONSTRAINT CHK_StartwithCapitalLetter_AG_1885322793 CHECK  ( GroupMemberLastName like 'A-Z%' ) ,
	GroupMemberFirstName varchar(25)  NULL ,
	CONSTRAINT CHK_StartwithCapitalLetter_AG_1771680119 CHECK  ( GroupMemberFirstName like 'A-Z%' ) ,
	GroupName            varchar(52)  NULL ,
	DateAdded            timestamp  NULL   DEFAULT  statement_timestamp(),
	DateOfLastUpdate     timestamp  NULL   DEFAULT  statement_timestamp()
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
	SELECT CategoryId,CategoryName,Description
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