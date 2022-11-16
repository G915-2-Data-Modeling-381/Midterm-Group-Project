DROP FUNCTION IF EXISTS `fn_diagramobjects`;

DROP FUNCTION IF EXISTS `CreateRowSha2_256HashKey`;

DROP FUNCTION IF EXISTS `CreateVarbinaryRowSha2_256HashKey`;

DROP FUNCTION IF EXISTS `CreateVarbinarySha2_256HashKey`;

DROP FUNCTION IF EXISTS `CreateVarcharHashKeySha2_256`;

DROP FUNCTION IF EXISTS `CreateHashKeyMD5`;

CREATE TABLE IF NOT EXISTS `AuditTriggeredEmployeeHistory`
(
	`TriggeredEmployeeHistoryId` INTEGER CONSTRAINT `CHK_IntegerIsGreaterThanZero_JG_360563888` CHECK (`TriggeredEmployeeHistoryId` > 0) COMMENT 'jas' NOT NULL ,
	`AuditDate` DATETIME  DEFAULT (CONVERT(SYSDATE(), DATETIME)) COMMENT 'wade' NULL ,
	`TransactionNumber` INTEGER COMMENT 'jas' NULL ,
	`IsDeleted` CHAR(1) CONSTRAINT `CHK_YesNoFlag_WL_183201200` CHECK (`IsDeleted` IN ('Y', 'N')) COMMENT 'oliver' NULL ,
	`DBAction` CHAR(1) CONSTRAINT `CHK_TriggerOptionUpdateDelete_JG_1635856640` CHECK (`DBAction` IN ('U', 'D', 'I')) NULL ,
	`SysStartTime` DATETIME CONSTRAINT `CHK_SysStart_WL_1721604136` CHECK (`SysStartTime`  < (CONVERT('9999-12-31',DATETIME))) COMMENT 'wade' NULL ,
	`SysEndTime` DATETIME CONSTRAINT `CHK_SysEnd_WL_438888481` CHECK (`SysEndTime` > (CONVERT('1900-01-01',DATETIME))) COMMENT 'wade' NULL ,
	`TimestampRowChanged` DATETIME  DEFAULT (CONVERT(SYSDATE(), DATETIME)) CONSTRAINT `CHK_TimeStamp_AN_1497629324` CHECK (`TimestampRowChanged` BETWEEN '1900-01-01' AND (CONVERT(SYSDATE(),DATE))) COMMENT 'an' NULL ,
	`Notes` VARCHAR(300) COMMENT 'oliver' NULL ,
	`UserAuthenticatedKey` INTEGER CONSTRAINT `CHK_IntegerIsGreaterThanZero_JG_729193813` CHECK (`UserAuthenticatedKey` > 0) COMMENT 'oliver' NULL ,
	`EmployeeId` INTEGER CONSTRAINT `CHK_IntegerIsGreaterThanZero_JG_1212872962` CHECK (`EmployeeId` > 0) COMMENT 'jas' NULL ,
	`FullName` VARCHAR(52) COMMENT 'an' NULL ,
	`Department` VARCHAR(25) CONSTRAINT `CHK_StartwithCapitalLetter_AG_810692677` CHECK (`Department` like '[A-Z]%') COMMENT 'an' NULL ,
	`Salary` INTEGER COMMENT 'jas' NULL ,
	`BirthDate` DATE  DEFAULT '1900-01-01' COMMENT 'amber' NULL ,
	`HireDate` DATE  DEFAULT (CONVERT(SYSDATE(), DATE)) COMMENT 'amber' NULL ,
	`PhoneNumber` CHAR(14) CONSTRAINT `CHK_PhoneNumber_AN_1744420262` CHECK (`PhoneNumber` LIKE '%[0-9\-]') COMMENT 'oliver' NULL ,
	`FullAddress` VARCHAR(100) NULL ,
	`DateAdded` DATETIME  DEFAULT (CONVERT(SYSDATE(), DATETIME)) COMMENT 'amber' NULL ,
	`DateOfLastUpdate` DATETIME  DEFAULT (CONVERT(SYSDATE(), DATETIME)) COMMENT 'jas' NULL 
);

ALTER TABLE `AuditTriggeredEmployeeHistory`
	ADD  CONSTRAINT PK_TriggeredEmployeeHistoryId PRIMARY KEY  ( `TriggeredEmployeeHistoryId` ASC );

CREATE UNIQUE INDEX  `ix_Employees` ON  `AuditTriggeredEmployeeHistory`
(
	`EmployeeId` ASC,
	`TriggeredEmployeeHistoryId` ASC
);

CREATE TABLE IF NOT EXISTS `Category`
(
	`CategoryId` INTEGER CONSTRAINT `CHK_IntegerIsGreaterThanZero_JG_911954493` CHECK (`CategoryId` > 0) COMMENT 'jas' NOT NULL ,
	`CategoryName` VARCHAR(52) COMMENT 'an' NULL ,
	`Description` VARCHAR(300) COMMENT 'an' NULL ,
	`UserAuthorizationId` INTEGER CONSTRAINT `CHK_IntegerIsGreaterThanZero_JG_1149603570` CHECK (`UserAuthorizationId` > 0) COMMENT 'jas' NULL ,
	`DateAdded` DATETIME  DEFAULT (CONVERT(SYSDATE(), DATETIME)) COMMENT 'amber' NULL ,
	`DateOfLastUpdate` DATETIME  DEFAULT (CONVERT(SYSDATE(), DATETIME)) COMMENT 'jas' NULL 
)
COMMENT = 'A taxonomy of things, like Product, grouped by shared characteristics.';

ALTER TABLE `Category`
	ADD  CONSTRAINT PK_Categories PRIMARY KEY  ( `CategoryId` ASC );

CREATE TABLE IF NOT EXISTS `Customer`
(
	`CustomerId` INTEGER CONSTRAINT `CHK_IntegerIsGreaterThanZero_JG_309805613` CHECK (`CustomerId` > 0) COMMENT 'jas' NOT NULL ,
	`CustomerCompanyName` VARCHAR(60) CONSTRAINT `CHK_StartwithCapitalLetter_AG_800970338` CHECK (`CustomerCompanyName` like '[A-Z]%') COMMENT 'an' NULL ,
	`CustomerContactName` VARCHAR(52) CONSTRAINT `CHK_FullName_AG_717737074` CHECK (`CustomerContactName` like '[A-Z]% [A-Z]%') COMMENT 'an' NULL ,
	`CustomerContactTitle` VARCHAR(60) CONSTRAINT `CHK_StringIsNotEmpty_JG_158049481` CHECK (`CustomerContactTitle` != '') COMMENT 'amber' NULL ,
	`CustomerAddress` VARCHAR(35) CONSTRAINT `CHK_ValidString_AN_824436934` CHECK (`CustomerAddress` LIKE '%[A-Z0-9a-z\-]') COMMENT 'an' NULL ,
	`CustomerCity` VARCHAR(20) COMMENT 'an' NULL ,
	`CustomerRegion` VARCHAR(40) COMMENT 'an' NULL ,
	`CustomerPostalCode` CHAR(5) CONSTRAINT `CHK_PostalCode_AN_987597584` CHECK (`CustomerPostalCode` LIKE '[0-9][0-9][0-9][0-9][0-9]') COMMENT 'an' NULL ,
	`CustomerCountry` CHAR(3)  DEFAULT 'N/A' CONSTRAINT `CHK_CountryCodes_AG_621145486` CHECK (`CustomerCountry` like '[A-Z][A-Z][A-Z]') COMMENT 'an' NULL ,
	`CustomerPhoneNumber` CHAR(14)  DEFAULT '(000)-000-0000' CONSTRAINT `CHK_PhoneNumber_AN_2069674448` CHECK (`CustomerPhoneNumber` LIKE '%[0-9\-]') COMMENT 'an' NULL ,
	`CustomerFaxNumber` CHAR(14)  DEFAULT '(000)-000-0000' COMMENT 'an' NULL ,
	`UserAuthorizationId` INTEGER CONSTRAINT `CHK_IntegerIsGreaterThanZero_JG_1383958240` CHECK (`UserAuthorizationId` > 0) COMMENT 'jas' NULL ,
	`DateAdded` DATETIME  DEFAULT (CONVERT(SYSDATE(), DATETIME)) COMMENT 'amber' NULL ,
	`DateOfLastUpdate` DATETIME  DEFAULT (CONVERT(SYSDATE(), DATETIME)) COMMENT 'jas' NULL 
)
COMMENT = 'A person or organization that buys Product from a business. ';

ALTER TABLE `Customer`
	ADD  CONSTRAINT PK_Customers PRIMARY KEY  ( `CustomerId` ASC );

CREATE TEMPORARY TABLE IF NOT EXISTS `Employee`
(
	`EmployeeId` INTEGER COMMENT 'jas' NOT NULL ,
	`FullName` VARCHAR(52) COMMENT 'an' NULL ,
	`Department` VARCHAR(25) COMMENT 'an' NULL ,
	`Salary` INTEGER COMMENT 'jas' NULL ,
	`Notes` VARCHAR(300) COMMENT 'oliver' NULL ,
	`SysStart` DATETIME COMMENT 'wade' NOT NULL ,
	`SysEnd` DATETIME COMMENT 'wade' NOT NULL 
);

ALTER TABLE `Employee`
	ADD  CONSTRAINT PK_EmployeeVersioned PRIMARY KEY  ( `EmployeeId` ASC );

CREATE TABLE IF NOT EXISTS `Employee`
(
	`EmployeeId` INTEGER CONSTRAINT `CHK_IntegerIsGreaterThanZero_JG_175991849` CHECK (`EmployeeId` > 0) COMMENT 'jas' NOT NULL ,
	`FullName` VARCHAR(52) COMMENT 'an' NULL ,
	`Department` VARCHAR(25) CONSTRAINT `CHK_StartwithCapitalLetter_AG_1552354697` CHECK (`Department` like '[A-Z]%') COMMENT 'an' NULL ,
	`Salary` INTEGER COMMENT 'jas' NULL ,
	`BirthDate` DATE  DEFAULT '1900-01-01' COMMENT 'amber' NULL ,
	`HireDate` DATE  DEFAULT (CONVERT(SYSDATE(), DATE)) COMMENT 'amber' NULL ,
	`PhoneNumber` CHAR(14) CONSTRAINT `CHK_PhoneNumber_AN_1513665921` CHECK (`PhoneNumber` LIKE '%[0-9\-]') COMMENT 'oliver' NULL ,
	`FullAddress` VARCHAR(100) NULL ,
	`DateAdded` DATETIME  DEFAULT (CONVERT(SYSDATE(), DATETIME)) COMMENT 'amber' NULL ,
	`DateOfLastUpdate` DATETIME  DEFAULT (CONVERT(SYSDATE(), DATETIME)) COMMENT 'jas' NULL 
);

ALTER TABLE `Employee`
	ADD  CONSTRAINT PK_TriggeredEmployee PRIMARY KEY  ( `EmployeeId` ASC );

CREATE INDEX  `ix_Employees` ON  `Employee`
(
	`EmployeeId` ASC
);

CREATE TABLE IF NOT EXISTS `Employee`
(
	`EmployeeId` INTEGER CONSTRAINT `CHK_IntegerIsGreaterThanZero_JG_175991849` CHECK (`EmployeeId` > 0) COMMENT 'jas' NOT NULL ,
	`EmployeeLastName` VARCHAR(25) CONSTRAINT `CHK_StartwithCapitalLetter_AG_1413043674` CHECK (`EmployeeLastName` like '[A-Z]%') COMMENT 'an' NULL ,
	`EmployeeFirstName` VARCHAR(25) CONSTRAINT `CHK_StartwithCapitalLetter_AG_1127309915` CHECK (`EmployeeFirstName` like '[A-Z]%') COMMENT 'an' NULL ,
	`EmployeeTitle` VARCHAR(60) CONSTRAINT `CHK_StringIsNotEmpty_JG_509046343` CHECK (`EmployeeTitle` != '') COMMENT 'amber' NULL ,
	`EmployeeTitleOfCourtesy` CHAR(4) CONSTRAINT `CHK_TitleOfCourtesy_AG_2125145303` CHECK (`EmployeeTitleOfCourtesy`='Mr.' OR `EmployeeTitleOfCourtesy`='Ms.' OR `EmployeeTitleOfCourtesy`='Mrs.' OR `EmployeeTitleOfCourtesy`='Dr.' OR `EmployeeTitleOfCourtesy`='Jr.') COMMENT 'amber' NULL ,
	`EmployeeBirthDate` DATE  DEFAULT '1900-01-01' COMMENT 'amber' NULL ,
	`EmployeeHireDate` DATE  DEFAULT (CONVERT(SYSDATE(), DATE)) COMMENT 'amber' NULL ,
	`EmployeeDepartment` VARCHAR(25) CONSTRAINT `CHK_StartwithCapitalLetter_AG_775681119` CHECK (`EmployeeDepartment` like '[A-Z]%') COMMENT 'an' NULL ,
	`EmployeeSalary` INTEGER COMMENT 'jas' NULL ,
	`EmployeeAddress` VARCHAR(35) CONSTRAINT `CHK_ValidString_AN_958250698` CHECK (`EmployeeAddress` LIKE '%[A-Z0-9a-z\-]') COMMENT 'an' NULL ,
	`EmployeeCity` VARCHAR(20) COMMENT 'an' NULL ,
	`EmployeeRegion` VARCHAR(40) COMMENT 'oliver' NULL ,
	`EmployeePostalCode` CHAR(5) CONSTRAINT `CHK_PostalCode_AN_283218698` CHECK (`EmployeePostalCode` LIKE '[0-9][0-9][0-9][0-9][0-9]') COMMENT 'oliver' NULL ,
	`EmployeeCountry` CHAR(3)  DEFAULT 'N/A' COMMENT 'an' NULL ,
	`EmployeePhoneNumber` CHAR(14) CONSTRAINT `CHK_PhoneNumber_AN_1935860684` CHECK (`EmployeePhoneNumber` LIKE '%[0-9\-]') COMMENT 'oliver' NULL ,
	`EmployeeManagerId` INTEGER CONSTRAINT `CHK_IntegerIsGreaterThanZero_JG_1181449331` CHECK (`EmployeeManagerId` > 0) COMMENT 'jas' NULL ,
	`UserAuthorizationId` INTEGER CONSTRAINT `CHK_IntegerIsGreaterThanZero_JG_1435665628` CHECK (`UserAuthorizationId` > 0) COMMENT 'jas' NULL ,
	`DateAdded` DATETIME  DEFAULT (CONVERT(SYSDATE(), DATETIME)) COMMENT 'amber' NULL ,
	`DateOfLastUpdate` DATETIME  DEFAULT (CONVERT(SYSDATE(), DATETIME)) COMMENT 'jas' NULL 
)
COMMENT = 'A person employed by a business for a salary.';

ALTER TABLE `Employee`
	ADD  CONSTRAINT PK_Employees PRIMARY KEY  ( `EmployeeId` ASC );

CREATE TABLE IF NOT EXISTS `Feedback`
(
	`MemberID` INTEGER CONSTRAINT `CHK_IntegerIsGreaterThanZero_JG_976391844` CHECK (`MemberID` > 0) COMMENT 'jas' NOT NULL ,
	`Feedback` VARCHAR(300) COMMENT 'oliver' NULL ,
	`Rating` INTEGER CONSTRAINT `CHK_IntegerBetweenZeroAndOneHundred_JG_268904424` CHECK (`Rating` BETWEEN 0 AND 100) COMMENT 'oliver' NULL ,
	`Received_On` DATETIME  DEFAULT (CONVERT(SYSDATE(), DATETIME)) CONSTRAINT `CHK_TimeStamp_AN_179745409` CHECK (`Received_On` BETWEEN '1900-01-01' AND (CONVERT(SYSDATE(),DATE))) COMMENT 'oliver' NULL 
)
COMMENT = 'Information about reactions to a product, or a persons performance of a task, which is used as a basis for improvement.';

ALTER TABLE `Feedback`
	ADD  CONSTRAINT PK__Feedback__0CF04B38E2275530 PRIMARY KEY  ( `MemberID` ASC );

CREATE TABLE IF NOT EXISTS `Membership`
(
	`MemberID` INTEGER CONSTRAINT `CHK_IntegerIsGreaterThanZero_JG_1301638409` CHECK (`MemberID` > 0) COMMENT 'jas' NOT NULL ,
	`FirstName` VARCHAR(25) CONSTRAINT `CHK_StartwithCapitalLetter_AG_1277830824` CHECK (`FirstName` like '[A-Z]%') COMMENT 'oliver' NULL ,
	`LastName` VARCHAR(25) CONSTRAINT `CHK_StartwithCapitalLetter_AG_1370094161` CHECK (`LastName` like '[A-Z]%') COMMENT 'oliver' NULL ,
	`Phone` CHAR(14)  DEFAULT '(000)-000-0000' CONSTRAINT `CHK_PhoneNumber_AN_1496371262` CHECK (`Phone` LIKE '%[0-9\-]') COMMENT 'wade' NULL ,
	`Email` VARCHAR(40) CONSTRAINT `CK_Email_WL_1145602502` CHECK (`Email` LIKE '([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})') COMMENT 'an' NULL ,
	`DiscountCode` INTEGER COMMENT 'oliver' NULL ,
	`BirthDay` DATE  DEFAULT '1900-01-01' COMMENT 'amber' NULL 
)
COMMENT = 'The fact of being a member of a group.';

ALTER TABLE `Membership`
	ADD  CONSTRAINT PK__Membersh__0CF04B38AF0D3873 PRIMARY KEY  ( `MemberID` ASC );

CREATE TABLE IF NOT EXISTS `Nums`
(
	`N` INTEGER CONSTRAINT `CHK_IntegerIsGreaterThanZero_JG_1615617432` CHECK (`N` > 0) COMMENT 'oliver' NOT NULL 
);

ALTER TABLE `Nums`
	ADD  CONSTRAINT PK_Nums PRIMARY KEY  ( `N` ASC );

CREATE TABLE IF NOT EXISTS `OrderDetail`
(
	`UnitPrice` INTEGER COMMENT 'wade' NULL ,
	`Quantity` INTEGER COMMENT 'wade' NULL ,
	`DiscountPercentage` DECIMAL(4,3) CONSTRAINT `CHK_DecimalIsGreaterThanZero_JG_46183865` CHECK (`DiscountPercentage` > 0.000) COMMENT 'oliver' NULL ,
	`UserAuthorizationId` INTEGER CONSTRAINT `CHK_IntegerIsGreaterThanZero_JG_187588512` CHECK (`UserAuthorizationId` > 0) COMMENT 'jas' NULL ,
	`DateAdded` DATETIME  DEFAULT (CONVERT(SYSDATE(), DATETIME)) CONSTRAINT `CHK_TimeStamp_AN_1149131844` CHECK (`DateAdded` BETWEEN '1900-01-01' AND (CONVERT(SYSDATE(),DATE))) COMMENT 'amber' NULL ,
	`DateOfLastUpdate` DATETIME  DEFAULT (CONVERT(SYSDATE(), DATETIME)) CONSTRAINT `CHK_TimeStamp_AN_1589246382` CHECK (`DateOfLastUpdate` BETWEEN '1900-01-01' AND (CONVERT(SYSDATE(),DATE))) COMMENT 'jas' NULL ,
	`OrderId` INTEGER  DEFAULT 0 CONSTRAINT `CHK_IntegerIsGreaterThanZero_JG_1401779197` CHECK (`OrderId` > 0) COMMENT 'jas' NOT NULL ,
	`ProductId` INTEGER CONSTRAINT `CHK_IntegerIsGreaterThanZero_JG_942672888` CHECK (`ProductId` > 0) COMMENT 'jas' NOT NULL 
)
COMMENT = 'A detailed description of the sales order generated by a seller for its internal use in processing a customer order.';

ALTER TABLE `OrderDetail`
	ADD  CONSTRAINT PK_OrderDetails PRIMARY KEY  ( `OrderId` ASC, `ProductId` ASC );

CREATE TABLE IF NOT EXISTS `Orders`
(
	`OrderId` INTEGER CONSTRAINT `CHK_IntegerIsGreaterThanZero_JG_1310856774` CHECK (`OrderId` > 0) COMMENT 'jas' NOT NULL ,
	`CustomerId` INTEGER CONSTRAINT `CHK_IntegerIsGreaterThanZero_JG_1886502021` CHECK (`CustomerId` > 0) COMMENT 'jas' NULL ,
	`EmployeeId` INTEGER CONSTRAINT `CHK_IntegerIsGreaterThanZero_JG_1953408903` CHECK (`EmployeeId` > 0) COMMENT 'jas' NULL ,
	`ShipperId` INTEGER CONSTRAINT `CHK_IntegerIsGreaterThanZero_JG_1342868932` CHECK (`ShipperId` > 0) COMMENT 'jas' NULL ,
	`OrderDate` DATETIME  DEFAULT (CONVERT(SYSDATE(), DATETIME)) COMMENT 'jas' NULL ,
	`RequiredDate` DATETIME  DEFAULT (CONVERT(SYSDATE(), DATETIME)) COMMENT 'oliver' NULL ,
	`ShipToDate` DATETIME  DEFAULT (CONVERT(SYSDATE(), DATETIME)) COMMENT 'amber' NULL ,
	`Freight` INTEGER  DEFAULT 0 CONSTRAINT `CHK_IntegerIsGreaterThanZero_JG_1596326501` CHECK (`Freight` > 0) COMMENT 'oliver' NULL ,
	`ShipToName` VARCHAR(52) CONSTRAINT `CHK_FullName_AG_743368731` CHECK (`ShipToName` like '[A-Z]% [A-Z]%') COMMENT 'wade' NULL ,
	`ShipToAddress` VARCHAR(35) CONSTRAINT `CHK_ValidString_AN_1048684405` CHECK (`ShipToAddress` LIKE '%[A-Z0-9a-z\-]') COMMENT 'wade' NULL ,
	`ShipToCity` VARCHAR(20) COMMENT 'wade' NULL ,
	`ShipToRegion` VARCHAR(40) COMMENT 'wade' NULL ,
	`ShipToPostalCode` CHAR(5) CONSTRAINT `CHK_PostalCode_AN_1432151190` CHECK (`ShipToPostalCode` LIKE '[0-9][0-9][0-9][0-9][0-9]') COMMENT 'wade' NULL ,
	`ShipToCountry` CHAR(3)  DEFAULT 'N/A' CONSTRAINT `CHK_CountryCodes_AG_2138419998` CHECK (`ShipToCountry` like '[A-Z][A-Z][A-Z]') COMMENT 'wade' NULL ,
	`UserAuthorizationId` INTEGER CONSTRAINT `CHK_IntegerIsGreaterThanZero_JG_1769919837` CHECK (`UserAuthorizationId` > 0) COMMENT 'jas' NULL ,
	`DateAdded` DATETIME  DEFAULT (CONVERT(SYSDATE(), DATETIME)) CONSTRAINT `CHK_TimeStamp_AN_2027942962` CHECK (`DateAdded` BETWEEN '1900-01-01' AND (CONVERT(SYSDATE(),DATE))) COMMENT 'amber' NULL ,
	`DateOfLastUpdate` DATETIME  DEFAULT (CONVERT(SYSDATE(), DATETIME)) CONSTRAINT `CHK_TimeStamp_AN_730376194` CHECK (`DateOfLastUpdate` BETWEEN '1900-01-01' AND (CONVERT(SYSDATE(),DATE))) COMMENT 'jas' NULL 
)
COMMENT = 'A Purchase of a Product made by a Customer.';

ALTER TABLE `Orders`
	ADD  CONSTRAINT PK_Orders PRIMARY KEY  ( `OrderId` ASC );

CREATE TABLE IF NOT EXISTS `Product`
(
	`ProductId` INTEGER CONSTRAINT `CHK_IntegerIsGreaterThanZero_JG_1383246262` CHECK (`ProductId` > 0) COMMENT 'jas' NOT NULL ,
	`ProductName` VARCHAR(52) COMMENT 'wade' NULL ,
	`SupplierId` INTEGER CONSTRAINT `CHK_IntegerIsGreaterThanZero_JG_863848814` CHECK (`SupplierId` > 0) COMMENT 'jas' NULL ,
	`CategoryId` INTEGER CONSTRAINT `CHK_IntegerIsGreaterThanZero_JG_1097616771` CHECK (`CategoryId` > 0) COMMENT 'jas' NULL ,
	`UnitPrice` INTEGER COMMENT 'wade' NULL ,
	`Discontinued` CHAR(1) COMMENT 'wade' NULL ,
	`UserAuthorizationId` INTEGER CONSTRAINT `CHK_IntegerIsGreaterThanZero_JG_1434506493` CHECK (`UserAuthorizationId` > 0) COMMENT 'jas' NULL ,
	`DateAdded` DATETIME  DEFAULT (CONVERT(SYSDATE(), DATETIME)) COMMENT 'amber' NULL ,
	`DateOfLastUpdate` DATETIME  DEFAULT (CONVERT(SYSDATE(), DATETIME)) COMMENT 'jas' NULL 
)
COMMENT = 'A thing that is marketed or sold as a commodity.';

ALTER TABLE `Product`
	ADD  CONSTRAINT PK_Products PRIMARY KEY  ( `ProductId` ASC );

CREATE TABLE IF NOT EXISTS `Shipper`
(
	`ShipperId` INTEGER CONSTRAINT `CHK_IntegerIsGreaterThanZero_JG_1550358970` CHECK (`ShipperId` > 0) COMMENT 'jas' NOT NULL ,
	`ShipperCompanyName` VARCHAR(60) CONSTRAINT `CHK_StartwithCapitalLetter_AG_372028990` CHECK (`ShipperCompanyName` like '[A-Z]%') COMMENT 'wade' NULL ,
	`PhoneNumber` CHAR(14)  DEFAULT '(000)-000-0000' CONSTRAINT `CHK_PhoneNumber_AN_2101390277` CHECK (`PhoneNumber` LIKE '%[0-9\-]') COMMENT 'wade' NULL ,
	`UserAuthorizationId` INTEGER CONSTRAINT `CHK_IntegerIsGreaterThanZero_JG_1569245439` CHECK (`UserAuthorizationId` > 0) COMMENT 'jas' NULL ,
	`DateAdded` DATETIME  DEFAULT (CONVERT(SYSDATE(), DATETIME)) CONSTRAINT `CHK_TimeStamp_AN_450100774` CHECK (`DateAdded` BETWEEN '1900-01-01' AND (CONVERT(SYSDATE(),DATE))) COMMENT 'amber' NULL ,
	`DateOfLastUpdate` DATETIME  DEFAULT (CONVERT(SYSDATE(), DATETIME)) CONSTRAINT `CHK_TimeStamp_AN_937866232` CHECK (`DateOfLastUpdate` BETWEEN '1900-01-01' AND (CONVERT(SYSDATE(),DATE))) COMMENT 'jas' NULL 
)
COMMENT = 'A person or business that ships an Order by sea, land, or air. ';

ALTER TABLE `Shipper`
	ADD  CONSTRAINT PK_Shippers PRIMARY KEY  ( `ShipperId` ASC );

CREATE TABLE IF NOT EXISTS `Supplier`
(
	`SupplierId` INTEGER CONSTRAINT `CHK_IntegerIsGreaterThanZero_JG_444418579` CHECK (`SupplierId` > 0) COMMENT 'jas' NOT NULL ,
	`SupplierCompanyName` VARCHAR(60) CONSTRAINT `CHK_StartwithCapitalLetter_AG_1236652122` CHECK (`SupplierCompanyName` like '[A-Z]%') COMMENT 'amber' NULL ,
	`SupplierContactName` VARCHAR(52) CONSTRAINT `CHK_FullName_AG_616556138` CHECK (`SupplierContactName` like '[A-Z]% [A-Z]%') COMMENT 'amber' NULL ,
	`SupplierContactTitle` VARCHAR(60) CONSTRAINT `CHK_StringIsNotEmpty_JG_290565327` CHECK (`SupplierContactTitle` != '') COMMENT 'amber' NULL ,
	`SupplierAddress` VARCHAR(35) CONSTRAINT `CHK_ValidString_AN_689823968` CHECK (`SupplierAddress` LIKE '%[A-Z0-9a-z\-]') COMMENT 'wade' NULL ,
	`SupplierCity` VARCHAR(20) COMMENT 'amber' NULL ,
	`SupplierRegion` VARCHAR(40) COMMENT 'amber' NULL ,
	`SupplierPostalCode` CHAR(5) CONSTRAINT `CHK_PostalCode_AN_855081738` CHECK (`SupplierPostalCode` LIKE '[0-9][0-9][0-9][0-9][0-9]') COMMENT 'amber' NULL ,
	`SupplierCountry` CHAR(3)  DEFAULT 'N/A' CONSTRAINT `CHK_CountryCodes_AG_519964550` CHECK (`SupplierCountry` like '[A-Z][A-Z][A-Z]') COMMENT 'amber' NULL ,
	`SupplierPhoneNumber` CHAR(14)  DEFAULT '(000)-000-0000' CONSTRAINT `CHK_PhoneNumber_AN_2090679882` CHECK (`SupplierPhoneNumber` LIKE '%[0-9\-]') COMMENT 'amber' NULL ,
	`SupplierFaxNumber` CHAR(14)  DEFAULT '(000)-000-0000' COMMENT 'amber' NULL ,
	`UserAuthorizationId` INTEGER CONSTRAINT `CHK_IntegerIsGreaterThanZero_JG_1434548708` CHECK (`UserAuthorizationId` > 0) COMMENT 'jas' NULL ,
	`DateAdded` DATETIME  DEFAULT (CONVERT(SYSDATE(), DATETIME)) CONSTRAINT `CHK_TimeStamp_AN_3410218` CHECK (`DateAdded` BETWEEN '1900-01-01' AND (CONVERT(SYSDATE(),DATE))) COMMENT 'amber' NULL ,
	`DateOfLastUpdate` DATETIME  DEFAULT (CONVERT(SYSDATE(), DATETIME)) CONSTRAINT `CHK_TimeStamp_AN_2029929473` CHECK (`DateOfLastUpdate` BETWEEN '1900-01-01' AND (CONVERT(SYSDATE(),DATE))) COMMENT 'jas' NULL 
);

ALTER TABLE `Supplier`
	ADD  CONSTRAINT PK_Suppliers PRIMARY KEY  ( `SupplierId` ASC );

CREATE TABLE IF NOT EXISTS `UserAuthorization`
(
	`UserAuthorizationId` INTEGER COMMENT 'jas' NOT NULL ,
	`ClassTime` CHAR(5) COMMENT 'an' NULL ,
	`IndividualProject` VARCHAR(52) COMMENT 'oliver' NULL ,
	`GroupMemberLastName` VARCHAR(25) CONSTRAINT `CHK_StartwithCapitalLetter_AG_1885322793` CHECK (`GroupMemberLastName` like '[A-Z]%') COMMENT 'oliver' NULL ,
	`GroupMemberFirstName` VARCHAR(25) CONSTRAINT `CHK_StartwithCapitalLetter_AG_1771680119` CHECK (`GroupMemberFirstName` like '[A-Z]%') COMMENT 'oliver' NULL ,
	`GroupName` VARCHAR(52) COMMENT 'oliver' NULL ,
	`DateAdded` DATETIME  DEFAULT (CONVERT(SYSDATE(), DATETIME)) COMMENT 'amber' NULL ,
	`DateOfLastUpdate` DATETIME  DEFAULT (CONVERT(SYSDATE(), DATETIME)) COMMENT 'jas' NULL 
)
COMMENT = 'The Authorization, by a User in the business, of transactions at an interval database level. ';

ALTER TABLE `UserAuthorization`
	ADD  CONSTRAINT XPKUserAuthorization PRIMARY KEY  ( `UserAuthorizationId` ASC );

CREATE TABLE IF NOT EXISTS `VersionedEmployeeHistory`
(
	`EmployeeId` INTEGER COMMENT 'jas' NOT NULL ,
	`FullName` VARCHAR(52) COMMENT 'an' NULL ,
	`Department` VARCHAR(25) COMMENT 'an' NULL ,
	`Salary` INTEGER COMMENT 'jas' NULL ,
	`Notes` VARCHAR(300) COMMENT 'oliver' NULL ,
	`SysStart` DATETIME COMMENT 'wade' NOT NULL ,
	`SysEnd` DATETIME COMMENT 'wade' NOT NULL 
);

ALTER TABLE `Category`
	ADD  CONSTRAINT `FK_Category_UserAuthorization` FOREIGN KEY (`UserAuthorizationId`) REFERENCES `UserAuthorization` (`UserAuthorizationId`)
		ON DELETE NO ACTION 
		ON UPDATE NO ACTION ;

ALTER TABLE `Customer`
	ADD  CONSTRAINT `FK_Customer_UserAuthorization` FOREIGN KEY (`UserAuthorizationId`) REFERENCES `UserAuthorization` (`UserAuthorizationId`)
		ON DELETE NO ACTION 
		ON UPDATE NO ACTION ;

ALTER TABLE `Employee`
	ADD  CONSTRAINT `FK_Employees_Employee` FOREIGN KEY (`EmployeeManagerId`) REFERENCES `Employee` (`EmployeeId`)
		ON DELETE NO ACTION 
		ON UPDATE NO ACTION ;

ALTER TABLE `Employee`
	ADD  CONSTRAINT `FK_Employee_UserAuthorization` FOREIGN KEY (`UserAuthorizationId`) REFERENCES `UserAuthorization` (`UserAuthorizationId`)
		ON DELETE NO ACTION 
		ON UPDATE NO ACTION ;

ALTER TABLE `OrderDetail`
	ADD  CONSTRAINT `FK_OrderDetail_Order` FOREIGN KEY (`OrderId`) REFERENCES `Orders` (`OrderId`)
		ON DELETE NO ACTION 
		ON UPDATE NO ACTION ;

ALTER TABLE `OrderDetail`
	ADD  CONSTRAINT `FK_OrderDetail_Product` FOREIGN KEY (`ProductId`) REFERENCES `Product` (`ProductId`)
		ON DELETE NO ACTION 
		ON UPDATE NO ACTION ;

ALTER TABLE `OrderDetail`
	ADD  CONSTRAINT `FK_OrderDetail_UserAuthorization` FOREIGN KEY (`UserAuthorizationId`) REFERENCES `UserAuthorization` (`UserAuthorizationId`)
		ON DELETE NO ACTION 
		ON UPDATE NO ACTION ;

ALTER TABLE `Orders`
	ADD  CONSTRAINT `FK_Order_Customer` FOREIGN KEY (`CustomerId`) REFERENCES `Customer` (`CustomerId`)
		ON DELETE NO ACTION 
		ON UPDATE NO ACTION ;

ALTER TABLE `Orders`
	ADD  CONSTRAINT `FK_Order_Employee` FOREIGN KEY (`EmployeeId`) REFERENCES `Employee` (`EmployeeId`)
		ON DELETE NO ACTION 
		ON UPDATE NO ACTION ;

ALTER TABLE `Orders`
	ADD  CONSTRAINT `FK_Order_Shipper` FOREIGN KEY (`ShipperId`) REFERENCES `Shipper` (`ShipperId`)
		ON DELETE NO ACTION 
		ON UPDATE NO ACTION ;

ALTER TABLE `Orders`
	ADD  CONSTRAINT `FK_Order_UserAuthorization` FOREIGN KEY (`UserAuthorizationId`) REFERENCES `UserAuthorization` (`UserAuthorizationId`)
		ON DELETE NO ACTION 
		ON UPDATE NO ACTION ;

ALTER TABLE `Product`
	ADD  CONSTRAINT `FK_Product_Category` FOREIGN KEY (`CategoryId`) REFERENCES `Category` (`CategoryId`)
		ON DELETE NO ACTION 
		ON UPDATE NO ACTION ;

ALTER TABLE `Product`
	ADD  CONSTRAINT `FK_Product_Supplier` FOREIGN KEY (`SupplierId`) REFERENCES `Supplier` (`SupplierId`)
		ON DELETE NO ACTION 
		ON UPDATE NO ACTION ;

ALTER TABLE `Product`
	ADD  CONSTRAINT `FK_Product_UserAuthorization` FOREIGN KEY (`UserAuthorizationId`) REFERENCES `UserAuthorization` (`UserAuthorizationId`)
		ON DELETE NO ACTION 
		ON UPDATE NO ACTION ;

ALTER TABLE `Shipper`
	ADD  CONSTRAINT `FK_Shipper_UserAuthorization` FOREIGN KEY (`UserAuthorizationId`) REFERENCES `UserAuthorization` (`UserAuthorizationId`)
		ON DELETE NO ACTION 
		ON UPDATE NO ACTION ;

ALTER TABLE `Supplier`
	ADD  CONSTRAINT `FK_Supplier_UserAuthorization` FOREIGN KEY (`UserAuthorizationId`) REFERENCES `UserAuthorization` (`UserAuthorizationId`)
		ON DELETE NO ACTION 
		ON UPDATE NO ACTION ;

CREATE  Function `fn_diagramobjects`
( 
) RETURNS 
DELIMITER //

	CREATE FUNCTION fn_diagramobjects()
RETURNS int
RETURN 0;
//
DELIMITER ;

CREATE  Function `CreateRowSha2_256HashKey`
(
@ConcatenatedRowColumns varchar(4096) 
) RETURNS 
DELIMITER //

	
CREATE  Function CreateRowSha2_256HashKey
(
ConcatenatedRowColumns varchar(4096) 
)
RETURNS varchar(4096)
RETURN SHA2(ConcatenatedRowColumns, 256);

//
DELIMITER ;

CREATE  Function `CreateVarbinaryRowSha2_256HashKey`
(
@ConcatenatedRowColumns varchar(4096) 
) RETURNS 
DELIMITER //

	CREATE  Function CreateVarbinaryRowSha2_256HashKey
(
ConcatenatedRowColumns varchar(4096) 
) 
RETURNS varchar(4096)
RETURN SHA2(ConcatenatedRowColumns, 256);
//
DELIMITER ;

CREATE  Function `CreateVarbinarySha2_256HashKey`
(
@ConcatenatedColumns varchar(4096) 
) RETURNS 
DELIMITER //

	CREATE  Function CreateVarbinarySha2_256HashKey
(
ConcatenatedRowColumns varchar(4096) 
) 
RETURNS varchar(4096)
RETURN SHA2(ConcatenatedRowColumns, 256);
//
DELIMITER ;

CREATE  Function `CreateVarcharHashKeySha2_256`
(
@DisplayNumberOfBytes int,
@ConcatenatedColumns varchar(4096) 
) RETURNS 
DELIMITER //

	CREATE Function CreateVarcharHashKeySha2_256
(
DisplayNumberOfBytes int,
ConcatenatedColumns varchar(4096) 
) 
RETURNS int
RETURN (CASE when DisplayNumberOfBytes between 5 and 31 then substring(SHA2(ConcatenatedColumns,256),1,DisplayNumberOfBytes)
ELSE (CONVERT(SHA2(ConcatenatedColumns,256), CHAR(32))) END);
//
DELIMITER ;

CREATE  Function `CreateHashKeyMD5`
(
@AccountOrMeterNumber varchar(15) 
) RETURNS 
DELIMITER //

	CREATE  Function CreateHashKeyMD5 (AccountOrMeterNumber varchar(15) ) 
RETURNS varchar(15)
RETURN md5(AccountOrMeterNumber);
//
DELIMITER ;

CREATE VIEW `uvw_HumanResourcesEmployee` (`EmployeeObjectId`,
`EmployeeLastName`,
`EmployeeFirstName`,
`EmployeeTitle`,
`EmployeeTitleOfCourtesy`,
`EmployeeBirthDate`,
`HireDate`,
`EmployeeAddress`,
`EmployeeCity`,
`EmployeeRegion`,
`EmployeePostalCode`,
`EmployeeCountry`,
`EmployeePhoneNumber`,
`EmployeeManagerId`)
AS 
SELECT `Employee`.`EmployeeId`,`Employee`.`EmployeeLastName`,`Employee`.`EmployeeFirstName`,`Employee`.`EmployeeTitle`,`Employee`.`EmployeeTitleOfCourtesy`,`Employee`.`EmployeeBirthDate`,`Employee`.`EmployeeHireDate`,`Employee`.`EmployeeAddress`,`Employee`.`EmployeeCity`,`Employee`.`EmployeeRegion`,`Employee`.`EmployeePostalCode`,`Employee`.`EmployeeCountry`,`Employee`.`EmployeePhoneNumber`,`Employee`.`EmployeeManagerId`
FROM `Employee` ;

CREATE VIEW `uvw_ProductionCategory` (`CategoryObjectId`,
`CategoryName`,
`Description`)
AS 
SELECT `CategoryId`,`CategoryName`,`Description`
FROM `Category` ;

CREATE VIEW `uvw_ProductionProduct` (`ProductObjectId`,
`ProductName`,
`SupplierId`,
`CategoryId`,
`UnitPrice`,
`Discontinued`,
`CategoryObjectId`,
`CategoryName`,
`Description`,
`SupplierCompanyName`,
`SupplierContactName`,
`SupplierPhoneNumber`,
`SupplierFaxNumber`)
AS 
SELECT `Product`.`ProductId`,`Product`.`ProductName`,`Supplier`.`SupplierId`,`Product`.`CategoryId`,`Product`.`UnitPrice`,`Product`.`Discontinued`,`Category`.`CategoryId`,`Category`.`CategoryName`,`Category`.`Description`,`Supplier`.`SupplierCompanyName`,`Supplier`.`SupplierContactName`,`Supplier`.`SupplierPhoneNumber`,`Supplier`.`SupplierFaxNumber`
FROM `Supplier` ,`Category` ,`Product` ;

CREATE VIEW `uvw_ProductionSupplier` (`SupplierObjectId`,
`SupplierCompanyName`,
`SupplierContactName`,
`SupplierContactTitle`,
`SupplierAddress`,
`SupplierCity`,
`SupplierRegion`,
`SupplierPostalCode`,
`SupplierCountry`,
`SupplierPhoneNumber`,
`SupplierFaxNumber`)
AS 
SELECT `Supplier`.`SupplierId`,`Supplier`.`SupplierCompanyName`,`Supplier`.`SupplierContactName`,`Supplier`.`SupplierContactTitle`,`Supplier`.`SupplierAddress`,`Supplier`.`SupplierCity`,`Supplier`.`SupplierRegion`,`Supplier`.`SupplierPostalCode`,`Supplier`.`SupplierCountry`,`Supplier`.`SupplierPhoneNumber`,`Supplier`.`SupplierFaxNumber`
FROM `Supplier` ;

CREATE VIEW `uvw_SalesCustomer` (`CustomerObjectId`,
`CustomerCompanyName`,
`CustomerContactName`,
`CustomerContactTitle`,
`CustomerAddress`,
`CustomerCity`,
`CustomerRegion`,
`CustomerPostalCode`,
`CustomerCountry`,
`CustomerPhoneNumber`,
`CustomerFaxNumber`)
AS 
SELECT `Customer`.`CustomerId`,`Customer`.`CustomerCompanyName`,`Customer`.`CustomerContactName`,`Customer`.`CustomerContactTitle`,`Customer`.`CustomerAddress`,`Customer`.`CustomerCity`,`Customer`.`CustomerRegion`,`Customer`.`CustomerPostalCode`,`Customer`.`CustomerCountry`,`Customer`.`CustomerPhoneNumber`,`Customer`.`CustomerFaxNumber`
FROM `Customer` ;

CREATE VIEW `uvw_SalesShipper` (`ShipperObjectId`,
`ShipperCompanyName`,
`PhoneNumber`)
AS 
SELECT `Shipper`.`ShipperId`,`Shipper`.`ShipperCompanyName`,`Shipper`.`PhoneNumber`
FROM `Shipper` ;

CREATE VIEW `uvw_Order` (`OrderId`,
`CustomerId`,
`EmployeeId`,
`ShipperId`,
`OrderDate`,
`RequiredDate`,
`ShipToDate`,
`Freight`,
`ShipToName`,
`ShipToAddress`,
`ShipToCity`,
`ShipToRegion`,
`ShipToPostalCode`,
`ShipToCountry`)
AS 
SELECT `Orders`.`OrderId`,`Orders`.`CustomerId`,`Orders`.`EmployeeId`,`Orders`.`ShipperId`,`Orders`.`OrderDate`,`Orders`.`RequiredDate`,`Orders`.`ShipToDate`,`Orders`.`Freight`,`Orders`.`ShipToName`,`Orders`.`ShipToAddress`,`Orders`.`ShipToCity`,`Orders`.`ShipToRegion`,`Orders`.`ShipToPostalCode`,`Orders`.`ShipToCountry`
FROM `Orders` ;

CREATE VIEW `Utils`.`uvw_FindColumnDefinitionPlusDefaultAndCheckConstraint` AS  SELECT  concat( tbl.TABLE_SCHEMA , '.' , tbl.TABLE_NAME )  AS FullyQualifiedTableName, tbl.TABLE_SCHEMA AS SchemaName, tbl.TABLE_NAME AS TableName, col.COLUMN_NAME AS ColumnName, col.ORDINAL_POSITION AS OrdinalPosition,  concat( col.DOMAIN_SCHEMA , '.' , col.DOMAIN_NAME )  AS FullyQualifiedDomainName, col.DOMAIN_NAME AS DomainName, CASE WHEN col.DATA_TYPE = 'varchar' THEN  concat( 'varchar(' , CHARACTER_MAXIMUM_LENGTH , ')' )  WHEN col.DATA_TYPE = 'char' THEN  concat( 'char(' , CHARACTER_MAXIMUM_LENGTH , ')' )  WHEN col.DATA_TYPE = 'nvarchar' THEN  concat( 'nvarchar(' , CHARACTER_MAXIMUM_LENGTH , ')' )  WHEN col.DATA_TYPE = 'nchar' THEN  concat( 'nchar(' , CHARACTER_MAXIMUM_LENGTH , ')' )  WHEN col.DATA_TYPE = 'numeric' THEN  concat( 'numeric(' , NUMERIC_PRECISION_RADIX , ', ' , NUMERIC_SCALE , ')' )  WHEN col.DATA_TYPE = 'decimal' THEN  concat( 'decimal(' , NUMERIC_PRECISION_RADIX , ', ' , NUMERIC_SCALE , ')' )  ELSE col.DATA_TYPE END AS DataType, col.IS_NULLABLE AS IsNullable, dcn.DefaultName, col.COLUMN_DEFAULT AS DefaultNameDefinition, cc.CONSTRAINT_NAME AS CheckConstraintRuleName, cc.CHECK_CLAUSE AS CheckConstraintRuleNameDefinition FROM (  SELECT TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, TABLE_TYPE FROM INFORMATION_SCHEMA.TABLES WHERE ( TABLE_TYPE = 'BASE TABLE' ) ) AS tbl    INNER JOIN   (  SELECT TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, ORDINAL_POSITION, COLUMN_DEFAULT, IS_NULLABLE, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH, CHARACTER_OCTET_LENGTH, NUMERIC_PRECISION, NUMERIC_PRECISION_RADIX, NUMERIC_SCALE, DATETIME_PRECISION, CHARACTER_SET_CATALOG, CHARACTER_SET_SCHEMA, CHARACTER_SET_NAME, COLLATION_CATALOG, COLLATION_SCHEMA, COLLATION_NAME, DOMAIN_CATALOG, DOMAIN_SCHEMA, DOMAIN_NAME FROM INFORMATION_SCHEMA.COLUMNS ) AS col  ON col.TABLE_CATALOG = tbl.TABLE_CATALOG AND col.TABLE_SCHEMA = tbl.TABLE_SCHEMA AND col.TABLE_NAME = tbl.TABLE_NAME   LEFT OUTER JOIN   (  SELECT t.name AS TableName,  schema_name( s.schema_id )  AS SchemaName, ac.name AS ColumnName, d.name AS DefaultName FROM sys.all_columns AS ac   INNER JOIN   sys.tables AS t ON ac.object_id = t.object_id   INNER JOIN   sys.schemas AS s ON t.schema_id = s.schema_id   INNER JOIN   sys.default_constraints AS d ON ac.default_object_id = d.object_id ) AS dcn  ON dcn.SchemaName = tbl.TABLE_SCHEMA AND dcn.TableName = tbl.TABLE_NAME AND dcn.ColumnName = col.COLUMN_NAME   LEFT OUTER JOIN   (  SELECT cu.TABLE_CATALOG, cu.TABLE_SCHEMA, cu.TABLE_NAME, cu.COLUMN_NAME, c.CONSTRAINT_CATALOG, c.CONSTRAINT_SCHEMA, c.CONSTRAINT_NAME, c.CHECK_CLAUSE FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE AS cu   INNER JOIN   INFORMATION_SCHEMA.CHECK_CONSTRAINTS AS c ON c.CONSTRAINT_NAME = cu.CONSTRAINT_NAME ) AS cc  ON cc.TABLE_SCHEMA = tbl.TABLE_SCHEMA AND cc.TABLE_NAME = tbl.TABLE_NAME AND cc.COLUMN_NAME = col.COLUMN_NAME;

CREATE VIEW `uw_FindAllDatabaseColumnsOnTheServer` (`FullyQualifiedTableName`,
`SchemaName`,
`ColumnName`,
`OrdinalPosition`,
`FullyQualifiedDomainName`,
`DataType`,
`IsNullable`,
`DefaultName`,
`DefaultNameDefinition`,
`CheckConstraintRuleName`,
`CheckConstraintRuleNameDefinition`,
`Server_Name`,
`Target_Database_Version`,
`Instance_Name`,
`Database_Name`,
`Host_Name`)
AS 
SELECT `uvw_FindColumnDefinitionPlusDefaultAndCheckConstraint`.`FullyQualifiedTableName`,`uvw_FindColumnDefinitionPlusDefaultAndCheckConstraint`.`SchemaName`,`uvw_FindColumnDefinitionPlusDefaultAndCheckConstraint`.`ColumnName`,`uvw_FindColumnDefinitionPlusDefaultAndCheckConstraint`.`OrdinalPosition`,`uvw_FindColumnDefinitionPlusDefaultAndCheckConstraint`.`FullyQualifiedDomainName`,`uvw_FindColumnDefinitionPlusDefaultAndCheckConstraint`.`DataType`,`uvw_FindColumnDefinitionPlusDefaultAndCheckConstraint`.`IsNullable`,`uvw_FindColumnDefinitionPlusDefaultAndCheckConstraint`.`DefaultName`,`uvw_FindColumnDefinitionPlusDefaultAndCheckConstraint`.`DefaultNameDefinition`,`uvw_FindColumnDefinitionPlusDefaultAndCheckConstraint`.`CheckConstraintRuleName`,`uvw_FindColumnDefinitionPlusDefaultAndCheckConstraint`.`CheckConstraintRuleNameDefinition`,@@servername,@@version,@@servicename,db_name(),host_name()
FROM `uvw_FindColumnDefinitionPlusDefaultAndCheckConstraint` 
		WHERE vw.SchemaName IN ('Sales' , 'Production' , 'HumanResources');
