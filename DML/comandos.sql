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


select DATEADD(YEAR, 1, SellStartDate) ,* from [Production].[Product] where color is NOT NULL AND color != 'Blue' AND ReorderPoint BETWEEN  650 and 1500;
select DATEDIFF(DAY, SellStartDate, SellEndDate) ,* from [Production].[Product] where SellEndDate IS NOT NULL AND SellStartDate IS NOT NULL  ;
select SUBSTRING([ProductNumber],CHARINDEX('-',[ProductNumber])+1,CHARINDEX('-', [ProductNumber], 2)+1),PARSENAME(REPLACE([ProductNumber], '-', '.'), 2) AS Resultado
,LEN([Name]),* from [Production].[Product] where SellEndDate IS NOT NULL AND SellStartDate IS NOT NULL  ;
select COALESCE(Color, 'Sin Color'),UPPER([Name]),LOWER([Name]) ,*  from [Production].[Product] where (ReorderPoint > 500 AND  [name] like '%s') OR color = 'Silver';

-- INSERT

-- UPDATE

-- DELETE

