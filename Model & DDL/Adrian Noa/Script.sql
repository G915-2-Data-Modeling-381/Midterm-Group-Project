select GETDATE();


use midterm go

use [CSCi381-DataModeling] go

select * from Production.Supplier s 

select * from Service.Feedback f go go go

select * from sales.Shipper s 

select * from Service.Feedback f 

insert into sales.Shipper( ShipperCompanyName, PhoneNumber, UserAuthorizationId  ) values ('hello', '12312321321',123) go


INSERT INTO Sales.Shipper (ShipperCompanyName,PhoneNumber) VALUES
	 (N'Shipper GVSUA',N'(503) 555-0137'),
	 (N'Shipper ETYNR',N'(425) 555-0136'),
	 (N'Shipper ZHISN',N'(415) 555-0138'),
	 (N'hello',N'12312321321');
	
update sales.shipper set PhoneNumber = '1111111' where shipperid = 6














use midtermdatabase

select * from DbSecurity.UserAuthorization ua 

insert into DbSecurity.UserAuthorization (classtime, GroupName) values ('9:15', 'G915-2')

insert into DbSecurity.UserAuthorization 
(classtime, IndividualProject, GroupMemberLastName, GroupMemberFirstName, GroupName) 
values 
('9:15', 'Midterm Individual Project', 'Noa', 'Adrian', 'G915-2');





select * from sales.Shipper s 

--delete from sales.shipper where ShipperId != 0

insert into sales.Shipper (ShipperCompanyName,PhoneNumber) values ('test','test');

INSERT INTO Sales.Shipper (ShipperCompanyName,PhoneNumber, UserAuthorizationId) VALUES
	 (N'Shipper GVSUA',N'(503) 555-0137', 2),
	 (N'Shipper ETYNR',N'(425) 555-0136', 2),
	 (N'Shipper ZHISN',N'(415) 555-0138', 2);

INSERT INTO Sales.Shipper (ShipperCompanyName,PhoneNumber) VALUES
	 (N'Shipper GVSUA',N'(503) 555-0137'),
	 (N'Shipper ETYNR',N'(425) 555-0136'),
	 (N'Shipper ZHISN',N'(415) 555-0138');


	
	insert into sales.shipper (ShipperCompanyName, PhoneNumber) Values ('abc', '123');

	select * from sales.Shipper s 

update sales.shipper set PhoneNumber = '+000-000-123456' where shipperid > 7 and shipperid < 11
 
update sales.shipper set PhoneNumber = 'NEW VALUE' where shipperid = 10


