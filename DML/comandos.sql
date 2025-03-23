/*
DML - DATA MANAGEMENT LANGUAGE 
*/

use AdventureWorks2022
go
/*
SELECT
*/

--[Server].[Database].[Schema].[Table];
SELECT * FROM [DAMN\MSSQLSERVER2022].[AdventureWorks2022].[Person].[Address];
select * from AdventureWorks2022.Person.Address;
select AddressTypeID,Name,rowguid,ModifiedDate from Person.AddressType;
--select AddressTypeID,Name,rowguid,ModifiedDate from AddressType;


select * from [Production].[Product] where color is NOT NULL AND color != 'Blue' ;
select COALESCE(Color, 'Sin Color') ,*  from [Production].[Product] where (ReorderPoint > 500 AND  [name] like '%s') OR color = 'Silver';

-- INSERT

-- UPDATE

-- DELETE

