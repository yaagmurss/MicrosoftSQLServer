--char     - ASCII   - 1Byte
--varchar  - ASCII   - 1Byte
--nchar    - UNICODE - 2Byte
--nvarchar - UNICODE - 2Byte

----------------------------------CHAR--------------------------------------------------
DECLARE @myChar AS CHAR(10)
SET @myChar = 'HELLO'
SELECT @myChar AS String, len(@myChar) AS StringLenght, DATALENGTH(@myChar) AS DataLenght
--There is a  difference between LEN and DATALENGHT. 
--LEN measure lenght of variable
--DATALENGHT measure bytes to store

DECLARE @myChar2 AS CHAR(10)
SET @myChar2 = 'HELLO WORLD'
SELECT @myChar2 AS String, len(@myChar2) AS StringLenght, DATALENGTH(@myChar2) AS DataLenght
--If you write a string contain more than 10 character, 
--It curtails the lenght of the variable

DECLARE @myChar3 AS CHAR(10)
SET @myChar3 = ''
SELECT @myChar3 AS String, len(@myChar3) AS StringLenght, DATALENGTH(@myChar3) AS DataLenght
----DataLenght = 10


------------------------------------VARCHAR----------------------------------------------
DECLARE @myChar4 AS VARCHAR(10)
SET @myChar4 = ''
SELECT @myChar4 AS String, len(@myChar4) AS StringLenght, DATALENGTH(@myChar4) AS DataLenght
--DataLenght = 0
--But VARCHAR needs additional two bytes


-------------------------------------NCHAR-----------------------------------------------
DECLARE @NChar AS NCHAR(10)
SET @NChar = ''
SELECT @NChar AS String, len(@NChar) AS StringLenght, DATALENGTH(@NChar) AS DataLenght


-------------------------------------NVARCHAR---------------------------------------------
DECLARE @NVarChar AS NVARCHAR(10)
SET @NVarChar = ''
SELECT @NVarChar AS String, len(@NVarChar) AS StringLenght, DATALENGTH(@NVarChar) AS DataLenght


--------------------------------NULL-----------------------------------------------------

DECLARE @firstName AS NVARCHAR(20)
DECLARE @middleName AS NVARCHAR(20)
DECLARE @lastName AS NVARCHAR(20)


SET @firstName = 'John'
SET @lastName  = 'Smith'
SELECT @firstName + ' ' + @middleName + ' ' + @lastName AS FName
--It  Returns Null because middleName is Null

--IFF
SET @firstName = 'Melinda'
--SET @middleName  = 'Jane'
SET @lastName  = 'Gates'
SELECT @firstName + ' ' + IIF(@middleName is Null,'', @middleName) + ' ' + @lastName AS IfResult
--It  does not return Null because if middle name is Null than writes ''

--CONCAT
SET @firstName = 'Hilary'
--@middleName is Null
SET @lastName  = 'Clinton'
SELECT CONCAT(@firstName, @middleName, @lastName) AS ConcatResult
--Concat take many arguments and If one them is Null than disregards it

---------------------------------Joining Two Strings------------------------------------
DECLARE @FName AS NVARCHAR(20)
DECLARE @MName AS NVARCHAR(20)
DECLARE @LName AS NVARCHAR(20)

SET @FName = 'John'
SET @MName = 'Walker'
SET @LName = 'Smith'

SELECT @FName + ' ' + @MName + ' ' + @LName AS FName


---------------------------------Joining String To a Number------------------------------------

SELECT 'My salary is : ' + CONVERT(VARCHAR(20),4567) AS Result
SELECT 'My salary is : ' + CAST(4567 AS VARCHAR(20)) AS Result

SELECT 'My salary is : $' + CONVERT(VARCHAR(20),4567) AS Result --works but not well
SELECT 'My salary is : ' + FORMAT(4567,'C','fr-FR') AS Result -- Culture Code
SELECT 'My salary is : ' + FORMAT(4567,'C','tr-TR') AS Result -- Culture Code