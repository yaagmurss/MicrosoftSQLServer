--CREATE TABLE tblEmployee(
--EmployeeNumber INT NOT NULL,
--EmployeeFirstName VARCHAR(50) NOT NULL,
--EmployeeMidddleName VARCHAR(50) NULL,
--EmployeeGovermentId CHAR(10) NOT NULL,
--DateOfBirth DATE NULL
--)


--Adding New Column To The tblEmployee
ALTER TABLE [dbo].[tblEmployee]
ADD Departman VARCHAR(10);


--Adding New Values To The tblEmployee
INSERT INTO [dbo].[tblEmployee]
VALUES(200741, 'Yaðmur', 'Solmaz', '1452145', '19970404', 'Endüstri')

--Adding New Values To The Spesific Column in tblEmployee
INSERT INTO [dbo].[tblEmployee]([EmployeeNumber], [EmployeeFirstName], [EmployeeGovermentId])
VALUES(200632, 'Burak', '200456')

--Adding Multiple Values To Column in tblEmployee
INSERT INTO [dbo].[tblEmployee]
VALUES(1, 'Yaðmur', 'Solmaz', '1452145', '19970404', 'Endüstri'),
(2, 'Burak', 'Fil', '1452145', '19970404', 'Endüstri'),
(3, 'Nury', 'Amanmadov', '1452145', '19970404', 'Endüstri'),
(4, 'Safa', 'Yürektürk', '1452145', '19970404', 'Endüstri')


--Select Everything where EmployeeMidddleName equals to "Solmaz"
SELECT * FROM [dbo].[tblEmployee]
WHERE [EmployeeMidddleName] = 'Solmaz'


--Select Everything where EmployeeMidddleName is not equal to "Solmaz"
SELECT * FROM [dbo].[tblEmployee]
WHERE [EmployeeMidddleName] <> 'Solmaz'


--Select Everything where EmployeeMidddleName Starts with "S"
--Use % sign instead of *
SELECT * FROM [dbo].[tblEmployee]
WHERE [EmployeeMidddleName] like 'F%'


--LIKE METHOD

--WHERE CustomerName LIKE 'a%'	Finds any values that start with "a"
--WHERE CustomerName LIKE '%a'	Finds any values that end with "a"
--WHERE CustomerName LIKE '%or%'	Finds any values that have "or" in any position
--WHERE CustomerName LIKE '_r%'	Finds any values that have "r" in the second position
--WHERE CustomerName LIKE 'a_%'	Finds any values that start with "a" and are at least 2 characters in length
--WHERE CustomerName LIKE 'a__%'	Finds any values that start with "a" and are at least 3 characters in length
--WHERE ContactName LIKE 'a%o'	Finds any values that start with "a" and ends with "o"


--Not Operator and != Sign
SELECT * FROM [dbo].[tblEmployee]
WHERE [EmployeeMidddleName] != 'Fil'

SELECT * FROM [dbo].[tblEmployee]
WHERE not [EmployeeMidddleName] = 'Solmaz'


--Between and Where

SELECT * FROM [dbo].[tblEmployee]
WHERE EmployeeNumber>2 

SELECT * FROM [dbo].[tblEmployee]
WHERE EmployeeNumber<2 or EmployeeNumber>5

SELECT * FROM [dbo].[tblEmployee]
WHERE EmployeeNumber<2 and EmployeeNumber<5

SELECT * FROM [dbo].[tblEmployee]
WHERE EmployeeNumber between 2 and 5

SELECT [EmployeeNumber], [EmployeeFirstName], [EmployeeMidddleName] FROM [dbo].[tblEmployee]
WHERE EmployeeNumber in(1, 2, 3)




