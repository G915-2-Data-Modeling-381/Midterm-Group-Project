
CREATE DATABASE Audit

Execution Successful


CREATE DATABASE Data

Execution Successful


CREATE DATABASE DbSecurity

Execution Successful


CREATE DATABASE HumanResources

Execution Successful


CREATE DATABASE Json

Execution Successful


CREATE DATABASE Production

Execution Successful


CREATE DATABASE Sales

Execution Successful


CREATE DATABASE Service

Execution Successful


CREATE DATABASE SystemVersioned

Execution Successful


CREATE DATABASE Triggered

Execution Successful


CREATE TABLE Audit.VersionedEmployeeHistory
(
	EmployeeId INTEGER NOT NULL ,
	FullName VARCHAR(52) NULL ,
	Department VARCHAR(25) NULL ,
	Salary INTEGER NULL ,
	Notes VARCHAR(300) NULL ,
	SysStart DATETIME NOT NULL ,
	SysEnd DATETIME NOT NULL 
)

Execution Successful


CREATE TABLE Data.Membership
(
	MemberID INTEGER CHECK (MemberID > 0) NOT NULL ,
	FirstName VARCHAR(25) CHECK (FirstName like '[A-Z]%') NULL ,
	LastName VARCHAR(25) CHECK (LastName like '[A-Z]%') NULL ,
	Phone CHAR(14)  DEFAULT '(000)-000-0000' CHECK (Phone LIKE '%[0-9\-]') NULL ,
	Email VARCHAR(40) CHECK (Email LIKE '([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})') NULL ,
	DiscountCode INTEGER NULL ,
	BirthDay DATE  DEFAULT '1900-01-01' NULL 
)

Execution Successful


CREATE UNIQUE INDEX  PK__Membersh__0CF04B38AF0D3873 ON  Data.Membership
(
	MemberID ASC
)

Execution Successful


CREATE TABLE Data.Nums
(
	N INTEGER CHECK (N > 0) NOT NULL 
)

Execution Successful


CREATE UNIQUE INDEX  PK_Nums ON  Data.Nums
(
	N ASC
)

Execution Successful


CREATE TABLE DbSecurity.UserAuthorization
(
	UserAuthorizationId INTEGER NOT NULL ,
	ClassTime CHAR(5) NULL ,
	IndividualProject VARCHAR(52) NULL ,
	GroupMemberLastName VARCHAR(25) CHECK (GroupMemberLastName like '[A-Z]%') NULL ,
	GroupMemberFirstName VARCHAR(25) CHECK (GroupMemberFirstName like '[A-Z]%') NULL ,
	GroupName VARCHAR(52) NULL ,
	DateAdded DATETIME  DEFAULT (CONVERT(SYSDATE(), DATETIME)) NULL ,
	DateOfLastUpdate DATETIME  DEFAULT (CONVERT(SYSDATE(), DATETIME)) NULL 
)

Execution Successful


CREATE UNIQUE INDEX  XPKUserAuthorization ON  DbSecurity.UserAuthorization
(
	UserAuthorizationId ASC
)

Execution Successful


CREATE TABLE HumanResources.Employee
(
	EmployeeId INTEGER CHECK (EmployeeId > 0) NOT NULL ,
	EmployeeLastName VARCHAR(25) CHECK (EmployeeLastName like '[A-Z]%') NULL ,
	EmployeeFirstName VARCHAR(25) CHECK (EmployeeFirstName like '[A-Z]%') NULL ,
	EmployeeTitle VARCHAR(60) CHECK (EmployeeTitle != '') NULL ,
	EmployeeTitleOfCourtesy CHAR(4) CHECK (EmployeeTitleOfCourtesy='Mr.' OR EmployeeTitleOfCourtesy='Ms.' OR EmployeeTitleOfCourtesy='Mrs.' OR EmployeeTitleOfCourtesy='Dr.' OR EmployeeTitleOfCourtesy='Jr.') NULL ,
	EmployeeBirthDate DATE  DEFAULT '1900-01-01' NULL ,
	EmployeeHireDate DATE  DEFAULT (CONVERT(SYSDATE(), DATE)) NULL ,
	EmployeeDepartment VARCHAR(25) CHECK (EmployeeDepartment like '[A-Z]%') NULL ,
	EmployeeSalary INTEGER NULL ,
	EmployeeAddress VARCHAR(35) CHECK (EmployeeAddress LIKE '%[A-Z0-9a-z\-]') NULL ,
	EmployeeCity VARCHAR(20) NULL ,
	EmployeeRegion VARCHAR(40) NULL ,
	EmployeePostalCode CHAR(5) CHECK (EmployeePostalCode LIKE '[0-9][0-9][0-9][0-9][0-9]') NULL ,
	EmployeeCountry CHAR(3)  DEFAULT 'N/A' NULL ,
	EmployeePhoneNumber CHAR(14) CHECK (EmployeePhoneNumber LIKE '%[0-9\-]') NULL ,
	EmployeeManagerId INTEGER CHECK (EmployeeManagerId > 0) NULL ,
	UserAuthorizationId INTEGER CHECK (UserAuthorizationId > 0) NULL ,
	DateAdded DATETIME  DEFAULT (CONVERT(SYSDATE(), DATETIME)) NULL ,
	DateOfLastUpdate DATETIME  DEFAULT (CONVERT(SYSDATE(), DATETIME)) NULL 
)

Execution Successful


CREATE UNIQUE INDEX  PK_Employees ON  HumanResources.Employee
(
	EmployeeId ASC
)

Execution Successful


CREATE INDEX  XIF2Employee ON  HumanResources.Employee
(
	UserAuthorizationId ASC
)

Execution Successful


CREATE TABLE Production.Category
(
	CategoryId INTEGER CHECK (CategoryId > 0) NOT NULL ,
	CategoryName VARCHAR(52) NULL ,
	Description VARCHAR(300) NULL ,
	UserAuthorizationId INTEGER CHECK (UserAuthorizationId > 0) NULL ,
	DateAdded DATETIME  DEFAULT (CONVERT(SYSDATE(), DATETIME)) NULL ,
	DateOfLastUpdate DATETIME  DEFAULT (CONVERT(SYSDATE(), DATETIME)) NULL 
)

Execution Successful


CREATE UNIQUE INDEX  PK_Categories ON  Production.Category
(
	CategoryId ASC
)

Execution Successful


CREATE INDEX  XIF1Category ON  Production.Category
(
	UserAuthorizationId ASC
)

Execution Successful


CREATE TABLE Production.Product
(
	ProductId INTEGER CHECK (ProductId > 0) NOT NULL ,
	ProductName VARCHAR(52) NULL ,
	SupplierId INTEGER CHECK (SupplierId > 0) NULL ,
	CategoryId INTEGER CHECK (CategoryId > 0) NULL ,
	UnitPrice INTEGER NULL ,
	Discontinued CHAR(1) NULL ,
	UserAuthorizationId INTEGER CHECK (UserAuthorizationId > 0) NULL ,
	DateAdded DATETIME  DEFAULT (CONVERT(SYSDATE(), DATETIME)) NULL ,
	DateOfLastUpdate DATETIME  DEFAULT (CONVERT(SYSDATE(), DATETIME)) NULL 
)

Execution Successful


CREATE UNIQUE INDEX  PK_Products ON  Production.Product
(
	ProductId ASC
)

Execution Successful


CREATE INDEX  XIF3Product ON  Production.Product
(
	UserAuthorizationId ASC
)

Execution Successful


CREATE TABLE Production.Supplier
(
	SupplierId INTEGER CHECK (SupplierId > 0) NOT NULL ,
	SupplierCompanyName VARCHAR(60) CHECK (SupplierCompanyName like '[A-Z]%') NULL ,
	SupplierContactName VARCHAR(52) CHECK (SupplierContactName like '[A-Z]% [A-Z]%') NULL ,
	SupplierContactTitle VARCHAR(60) CHECK (SupplierContactTitle != '') NULL ,
	SupplierAddress VARCHAR(35) CHECK (SupplierAddress LIKE '%[A-Z0-9a-z\-]') NULL ,
	SupplierCity VARCHAR(20) NULL ,
	SupplierRegion VARCHAR(40) NULL ,
	SupplierPostalCode CHAR(5) CHECK (SupplierPostalCode LIKE '[0-9][0-9][0-9][0-9][0-9]') NULL ,
	SupplierCountry CHAR(3)  DEFAULT 'N/A' CHECK (SupplierCountry like '[A-Z][A-Z][A-Z]') NULL ,
	SupplierPhoneNumber CHAR(14)  DEFAULT '(000)-000-0000' CHECK (SupplierPhoneNumber LIKE '%[0-9\-]') NULL ,
	SupplierFaxNumber CHAR(14)  DEFAULT '(000)-000-0000' NULL ,
	UserAuthorizationId INTEGER CHECK (UserAuthorizationId > 0) NULL ,
	DateAdded DATETIME  DEFAULT (CONVERT(SYSDATE(), DATETIME)) CHECK (DateAdded BETWEEN '1900-01-01' AND (CONVERT(SYSDATE(),DATE))) NULL ,
	DateOfLastUpdate DATETIME  DEFAULT (CONVERT(SYSDATE(), DATETIME)) CHECK (DateOfLastUpdate BETWEEN '1900-01-01' AND (CONVERT(SYSDATE(),DATE))) NULL 
)

Execution Successful


CREATE UNIQUE INDEX  PK_Suppliers ON  Production.Supplier
(
	SupplierId ASC
)

Execution Successful


CREATE INDEX  XIF1Supplier ON  Production.Supplier
(
	UserAuthorizationId ASC
)

Execution Successful


CREATE TABLE Sales.Customer
(
	CustomerId INTEGER CHECK (CustomerId > 0) NOT NULL ,
	CustomerCompanyName VARCHAR(60) CHECK (CustomerCompanyName like '[A-Z]%') NULL ,
	CustomerContactName VARCHAR(52) CHECK (CustomerContactName like '[A-Z]% [A-Z]%') NULL ,
	CustomerContactTitle VARCHAR(60) CHECK (CustomerContactTitle != '') NULL ,
	CustomerAddress VARCHAR(35) CHECK (CustomerAddress LIKE '%[A-Z0-9a-z\-]') NULL ,
	CustomerCity VARCHAR(20) NULL ,
	CustomerRegion VARCHAR(40) NULL ,
	CustomerPostalCode CHAR(5) CHECK (CustomerPostalCode LIKE '[0-9][0-9][0-9][0-9][0-9]') NULL ,
	CustomerCountry CHAR(3)  DEFAULT 'N/A' CHECK (CustomerCountry like '[A-Z][A-Z][A-Z]') NULL ,
	CustomerPhoneNumber CHAR(14)  DEFAULT '(000)-000-0000' CHECK (CustomerPhoneNumber LIKE '%[0-9\-]') NULL ,
	CustomerFaxNumber CHAR(14)  DEFAULT '(000)-000-0000' NULL ,
	UserAuthorizationId INTEGER CHECK (UserAuthorizationId > 0) NULL ,
	DateAdded DATETIME  DEFAULT (CONVERT(SYSDATE(), DATETIME)) NULL ,
	DateOfLastUpdate DATETIME  DEFAULT (CONVERT(SYSDATE(), DATETIME)) NULL 
)

Execution Successful


CREATE UNIQUE INDEX  PK_Customers ON  Sales.Customer
(
	CustomerId ASC
)

Execution Successful


CREATE INDEX  XIF1Customer ON  Sales.Customer
(
	UserAuthorizationId ASC
)

Execution Successful


CREATE TABLE Sales.OrderDetail
(
	UnitPrice INTEGER NULL ,
	Quantity INTEGER NULL ,
	DiscountPercentage DECIMAL(4,3) CHECK (DiscountPercentage > 0.000) NULL ,
	UserAuthorizationId INTEGER CHECK (UserAuthorizationId > 0) NULL ,
	DateAdded DATETIME  DEFAULT (CONVERT(SYSDATE(), DATETIME)) CHECK (DateAdded BETWEEN '1900-01-01' AND (CONVERT(SYSDATE(),DATE))) NULL ,
	DateOfLastUpdate DATETIME  DEFAULT (CONVERT(SYSDATE(), DATETIME)) CHECK (DateOfLastUpdate BETWEEN '1900-01-01' AND (CONVERT(SYSDATE(),DATE))) NULL ,
	OrderId INTEGER  DEFAULT 0 CHECK (OrderId > 0) NOT NULL ,
	ProductId INTEGER CHECK (ProductId > 0) NOT NULL 
)

Execution Successful


CREATE UNIQUE INDEX  PK_OrderDetails ON  Sales.OrderDetail
(
	OrderId ASC,
	ProductId ASC
)

Execution Successful


CREATE INDEX  XIF1OrderDetail ON  Sales.OrderDetail
(
	OrderId ASC
)

Execution Successful


CREATE INDEX  XIF2OrderDetail ON  Sales.OrderDetail
(
	ProductId ASC
)

Execution Successful


CREATE INDEX  XIF3OrderDetail ON  Sales.OrderDetail
(
	UserAuthorizationId ASC
)

Execution Successful


CREATE TABLE Sales.Orders
(
	OrderId INTEGER CHECK (OrderId > 0) NOT NULL ,
	CustomerId INTEGER CHECK (CustomerId > 0) NULL ,
	EmployeeId INTEGER CHECK (EmployeeId > 0) NULL ,
	ShipperId INTEGER CHECK (ShipperId > 0) NULL ,
	OrderDate DATETIME  DEFAULT (CONVERT(SYSDATE(), DATETIME)) NULL ,
	RequiredDate DATETIME  DEFAULT (CONVERT(SYSDATE(), DATETIME)) NULL ,
	ShipToDate DATETIME  DEFAULT (CONVERT(SYSDATE(), DATETIME)) NULL ,
	Freight INTEGER  DEFAULT 0 CHECK (Freight > 0) NULL ,
	ShipToName VARCHAR(52) CHECK (ShipToName like '[A-Z]% [A-Z]%') NULL ,
	ShipToAddress VARCHAR(35) CHECK (ShipToAddress LIKE '%[A-Z0-9a-z\-]') NULL ,
	ShipToCity VARCHAR(20) NULL ,
	ShipToRegion VARCHAR(40) NULL ,
	ShipToPostalCode CHAR(5) CHECK (ShipToPostalCode LIKE '[0-9][0-9][0-9][0-9][0-9]') NULL ,
	ShipToCountry CHAR(3)  DEFAULT 'N/A' CHECK (ShipToCountry like '[A-Z][A-Z][A-Z]') NULL ,
	UserAuthorizationId INTEGER CHECK (UserAuthorizationId > 0) NULL ,
	DateAdded DATETIME  DEFAULT (CONVERT(SYSDATE(), DATETIME)) CHECK (DateAdded BETWEEN '1900-01-01' AND (CONVERT(SYSDATE(),DATE))) NULL ,
	DateOfLastUpdate DATETIME  DEFAULT (CONVERT(SYSDATE(), DATETIME)) CHECK (DateOfLastUpdate BETWEEN '1900-01-01' AND (CONVERT(SYSDATE(),DATE))) NULL 
)

Execution Successful


CREATE UNIQUE INDEX  PK_Orders ON  Sales.Orders
(
	OrderId ASC
)

Execution Successful


CREATE INDEX  XIF4Order ON  Sales.Orders
(
	UserAuthorizationId ASC
)

Execution Successful


CREATE TABLE Sales.Shipper
(
	ShipperId INTEGER CHECK (ShipperId > 0) NOT NULL ,
	ShipperCompanyName VARCHAR(60) CHECK (ShipperCompanyName like '[A-Z]%') NULL ,
	PhoneNumber CHAR(14)  DEFAULT '(000)-000-0000' CHECK (PhoneNumber LIKE '%[0-9\-]') NULL ,
	UserAuthorizationId INTEGER CHECK (UserAuthorizationId > 0) NULL ,
	DateAdded DATETIME  DEFAULT (CONVERT(SYSDATE(), DATETIME)) CHECK (DateAdded BETWEEN '1900-01-01' AND (CONVERT(SYSDATE(),DATE))) NULL ,
	DateOfLastUpdate DATETIME  DEFAULT (CONVERT(SYSDATE(), DATETIME)) CHECK (DateOfLastUpdate BETWEEN '1900-01-01' AND (CONVERT(SYSDATE(),DATE))) NULL 
)

Execution Successful


CREATE UNIQUE INDEX  PK_Shippers ON  Sales.Shipper
(
	ShipperId ASC
)

Execution Successful


CREATE INDEX  XIF1Shipper ON  Sales.Shipper
(
	UserAuthorizationId ASC
)

Execution Successful


CREATE TABLE Service.Feedback
(
	MemberID INTEGER CHECK (MemberID > 0) NOT NULL ,
	Feedback VARCHAR(300) NULL ,
	Rating INTEGER CHECK (Rating BETWEEN 0 AND 100) NULL ,
	Received_On DATETIME  DEFAULT (CONVERT(SYSDATE(), DATETIME)) CHECK (Received_On BETWEEN '1900-01-01' AND (CONVERT(SYSDATE(),DATE))) NULL 
)

Execution Successful


CREATE UNIQUE INDEX  PK__Feedback__0CF04B38E2275530 ON  Service.Feedback
(
	MemberID ASC
)

Execution Successful


CREATE TEMPORARY TABLE SystemVersioned.EmployeeSV
(
	EmployeeId INTEGER NOT NULL ,
	FullName VARCHAR(52) NULL ,
	Department VARCHAR(25) NULL ,
	Salary INTEGER NULL ,
	Notes VARCHAR(300) NULL ,
	SysStart DATETIME NOT NULL ,
	SysEnd DATETIME NOT NULL 
)

Execution Successful


CREATE UNIQUE INDEX  PK_EmployeeVersioned ON  SystemVersioned.EmployeeSV
(
	EmployeeId ASC
)

Execution Successful


CREATE TABLE Triggered.AuditTriggeredEmployeeHistory
(
	TriggeredEmployeeHistoryId INTEGER CHECK (TriggeredEmployeeHistoryId > 0) NOT NULL ,
	AuditDate DATETIME  DEFAULT (CONVERT(SYSDATE(), DATETIME)) NULL ,
	TransactionNumber INTEGER NULL ,
	IsDeleted CHAR(1) CHECK (IsDeleted IN ('Y', 'N')) NULL ,
	DBAction CHAR(1) CHECK (DBAction IN ('U', 'D', 'I')) NULL ,
	SysStartTime DATETIME CHECK (SysStartTime  < (CONVERT('9999-12-31',DATETIME))) NULL ,
	SysEndTime DATETIME CHECK (SysEndTime > (CONVERT('1900-01-01',DATETIME))) NULL ,
	TimestampRowChanged DATETIME  DEFAULT (CONVERT(SYSDATE(), DATETIME)) CHECK (TimestampRowChanged BETWEEN '1900-01-01' AND (CONVERT(SYSDATE(),DATE))) NULL ,
	Notes VARCHAR(300) NULL ,
	UserAuthenticatedKey INTEGER CHECK (UserAuthenticatedKey > 0) NULL ,
	EmployeeId INTEGER CHECK (EmployeeId > 0) NULL ,
	FullName VARCHAR(52) NULL ,
	Department VARCHAR(25) CHECK (Department like '[A-Z]%') NULL ,
	Salary INTEGER NULL ,
	BirthDate DATE  DEFAULT '1900-01-01' NULL ,
	HireDate DATE  DEFAULT (CONVERT(SYSDATE(), DATE)) NULL ,
	PhoneNumber CHAR(14) CHECK (PhoneNumber LIKE '%[0-9\-]') NULL ,
	FullAddress VARCHAR(100) NULL ,
	DateAdded DATETIME  DEFAULT (CONVERT(SYSDATE(), DATETIME)) NULL ,
	DateOfLastUpdate DATETIME  DEFAULT (CONVERT(SYSDATE(), DATETIME)) NULL 
)

Execution Successful


CREATE UNIQUE INDEX  PK_TriggeredEmployeeHistoryId ON  Triggered.AuditTriggeredEmployeeHistory
(
	TriggeredEmployeeHistoryId ASC
)

Execution Successful


CREATE UNIQUE INDEX  ix_Employees ON  Triggered.AuditTriggeredEmployeeHistory
(
	EmployeeId ASC,
	TriggeredEmployeeHistoryId ASC
)

Execution Successful


CREATE TABLE Triggered.Employee
(
	EmployeeId INTEGER CHECK (EmployeeId > 0) NOT NULL ,
	FullName VARCHAR(52) NULL ,
	Department VARCHAR(25) CHECK (Department like '[A-Z]%') NULL ,
	Salary INTEGER NULL ,
	BirthDate DATE  DEFAULT '1900-01-01' NULL ,
	HireDate DATE  DEFAULT (CONVERT(SYSDATE(), DATE)) NULL ,
	PhoneNumber CHAR(14) CHECK (PhoneNumber LIKE '%[0-9\-]') NULL ,
	FullAddress VARCHAR(100) NULL ,
	DateAdded DATETIME  DEFAULT (CONVERT(SYSDATE(), DATETIME)) NULL ,
	DateOfLastUpdate DATETIME  DEFAULT (CONVERT(SYSDATE(), DATETIME)) NULL 
)

Execution Successful


CREATE UNIQUE INDEX  PK_TriggeredEmployee ON  Triggered.Employee
(
	EmployeeId ASC
)

Execution Successful


CREATE INDEX  ix_Employees ON  Triggered.Employee
(
	EmployeeId ASC
)

Execution Successful


ALTER TABLE HumanResources.Employee
	ADD  FOREIGN KEY (EmployeeManagerId) REFERENCES HumanResources.Employee (EmployeeId)
		ON DELETE NO ACTION 
		ON UPDATE NO ACTION 

Execution Successful


ALTER TABLE HumanResources.Employee
	ADD  FOREIGN KEY (UserAuthorizationId) REFERENCES DbSecurity.UserAuthorization (UserAuthorizationId)
		ON DELETE NO ACTION 
		ON UPDATE NO ACTION 

Execution Successful


ALTER TABLE Production.Category
	ADD  FOREIGN KEY (UserAuthorizationId) REFERENCES DbSecurity.UserAuthorization (UserAuthorizationId)
		ON DELETE NO ACTION 
		ON UPDATE NO ACTION 

Execution Successful


ALTER TABLE Production.Product
	ADD  FOREIGN KEY (CategoryId) REFERENCES Production.Category (CategoryId)
		ON DELETE NO ACTION 
		ON UPDATE NO ACTION 

Execution Successful


ALTER TABLE Production.Product
	ADD  FOREIGN KEY (SupplierId) REFERENCES Production.Supplier (SupplierId)
		ON DELETE NO ACTION 
		ON UPDATE NO ACTION 

Execution Successful


ALTER TABLE Production.Product
	ADD  FOREIGN KEY (UserAuthorizationId) REFERENCES DbSecurity.UserAuthorization (UserAuthorizationId)
		ON DELETE NO ACTION 
		ON UPDATE NO ACTION 

Execution Successful


ALTER TABLE Production.Supplier
	ADD  FOREIGN KEY (UserAuthorizationId) REFERENCES DbSecurity.UserAuthorization (UserAuthorizationId)
		ON DELETE NO ACTION 
		ON UPDATE NO ACTION 

Execution Successful


ALTER TABLE Sales.Customer
	ADD  FOREIGN KEY (UserAuthorizationId) REFERENCES DbSecurity.UserAuthorization (UserAuthorizationId)
		ON DELETE NO ACTION 
		ON UPDATE NO ACTION 

Execution Successful


ALTER TABLE Sales.OrderDetail
	ADD  FOREIGN KEY (OrderId) REFERENCES Sales.Orders (OrderId)
		ON DELETE NO ACTION 
		ON UPDATE NO ACTION 

Execution Successful


ALTER TABLE Sales.OrderDetail
	ADD  FOREIGN KEY (ProductId) REFERENCES Production.Product (ProductId)
		ON DELETE NO ACTION 
		ON UPDATE NO ACTION 

Execution Successful


ALTER TABLE Sales.OrderDetail
	ADD  FOREIGN KEY (UserAuthorizationId) REFERENCES DbSecurity.UserAuthorization (UserAuthorizationId)
		ON DELETE NO ACTION 
		ON UPDATE NO ACTION 

Execution Successful


ALTER TABLE Sales.Orders
	ADD  FOREIGN KEY (CustomerId) REFERENCES Sales.Customer (CustomerId)
		ON DELETE NO ACTION 
		ON UPDATE NO ACTION 

Execution Successful


ALTER TABLE Sales.Orders
	ADD  FOREIGN KEY (EmployeeId) REFERENCES HumanResources.Employee (EmployeeId)
		ON DELETE NO ACTION 
		ON UPDATE NO ACTION 

Execution Successful


ALTER TABLE Sales.Orders
	ADD  FOREIGN KEY (ShipperId) REFERENCES Sales.Shipper (ShipperId)
		ON DELETE NO ACTION 
		ON UPDATE NO ACTION 

Execution Successful


ALTER TABLE Sales.Orders
	ADD  FOREIGN KEY (UserAuthorizationId) REFERENCES DbSecurity.UserAuthorization (UserAuthorizationId)
		ON DELETE NO ACTION 
		ON UPDATE NO ACTION 

Execution Successful


ALTER TABLE Sales.Shipper
	ADD  FOREIGN KEY (UserAuthorizationId) REFERENCES DbSecurity.UserAuthorization (UserAuthorizationId)
		ON DELETE NO ACTION 
		ON UPDATE NO ACTION 

Execution Successful

Schema Generation Complete
69 query succeeded.  
