--SQL SERVER FOR AZURE
--Microsoft in the cloud, you can get SQL Server in the cloud

--SQL SERVER AT THE AGE
--SQL to Iot Services

--EXPRESS EDITION
--Ideal for Development and Production for desktop,web and small server app

--DEVELOPER EDITION
--Full featured enterprise system but it is unlicensed so it is for test system not for production.
--Developer edition includes
--Database Engine
--Analysis Service
--Reporting Service
--Integration Service

--F5 execute the code or you can just press execute button
--dbo stands for database owner

--Checks If you are in the right database, and goes that database
USE [70-461] -- Use DataBase name
GO

--Creates Table
CREATE TABLE tbldeneme
(myNumbers int)

--Inserts a value into a table
INSERT INTO [dbo].[tbldeneme]
VALUES (1),(2),(3)

--Selects everything from table
SELECT *
FROM tbldeneme

--Delete From deletes : content of a table 
DELETE FROM [dbo].[tbldeneme]

--Truncate table : deletes content of a table 
TRUNCATE TABLE[dbo].[tbldeneme]

--DROP TABLE : remove completely 
DROP TABLE [dbo].[tbldeneme]

--Selects everything from table
SELECT *
FROM tbldeneme