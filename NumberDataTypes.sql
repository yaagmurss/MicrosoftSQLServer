------------------------------NUMBER DATA TYPES--------------------------------

--Declare Variable as 
DECLARE @myVar1 AS int = 2

--Declare and Set Variable as 
DECLARE @myVar2 AS int 
SET @myVar2 = 2 

--Declare Set and Select Variable as Result
DECLARE @myVar3 AS int 
SET @myVar3 = 2 
SELECT @myVar3 AS Result 



-- If we try to set a float number to @myVar variable 
--   2.01 turns into  2
--  -2.02 turns into -2
--   2.99 turns into  2

-- Bigint        -2^63 to 2^63     8 byte   
-- Int           -2^31 to 2^31     4 byte 
-- Smallint      -2^15 to 2^15     2 byte
-- Tinyint        0 to 255         1 byte



--DECIMAL AND NUMERIC
--Numeric is functionally equivalent to decimal

--First we need to declare is the number of digits total
--Second thing you need to declare is the number of digits to the right

DECLARE @myVar4 AS DECIMAL(7,2)
--12345.67 is valid for above 
--123456.7 is not valid for above (Aritmetic overflow error)
--1234.567 is round down 1234.57
SET @myVar4 = 1234.567
SELECT @myVar4 AS myVariable

DECLARE @myVar5 AS NUMERIC(7,2)
--12345.67 is valid for above 
--123456.7 is not valid for above (Aritmetic overflow error)
--1234.567 is round down 1234.57
SET @myVar5 = 12345.67
SELECT @myVar5 AS myVariable


--FLOAT AND REAL
--Approximate number data types for use wth floating point numeric data is approximate


--MATHEMATICAL FUNCTIONS

DECLARE @myVar6 AS NUMERIC(7,2) = 3
SELECT POWER(@myVar6,3) AS PowerResult --Calculates Power of the Number
SELECT SQUARE(@myVar6) AS SquareResult --Calculates Square of the Number
SELECT POWER(@myVar6,0.5) RootResult   --Calculates Root of the Number
SELECT SQRT(@myVar6) RootResult        --Calculates SquareRoot of the Number

DECLARE @myVar7 AS NUMERIC(7,2) = 3.3
SELECT FLOOR(@myVar7) AS FloorResult     --Floor round down to the nearest Whole Number
SELECT CEILING(@myVar7) AS CeilingResult --Ceiling up to nearest Whole Number 
SELECT ROUND(@myVar7,1) AS RoundResult     --Round goes up or down to nearest                    

DECLARE @myVar8 AS NUMERIC(7,2) = -3.7
SELECT FLOOR(@myVar8) AS FloorResult     --Floor round down to the nearest Whole Number
SELECT CEILING(@myVar8) AS CeilingResult --Ceiling up to nearest Whole Number 
SELECT ROUND(@myVar8,0) AS RoundResult     --Round goes up or down to nearest     

SELECT PI() AS PINumber
SELECT EXP(1) AS ExpNumber

DECLARE @MyVar9 AS NUMERIC(7,2) = -456
SELECT ABS(@myVar9) AS AbsResult
SELECT SIGN(@myVar9) AS SignResult --Sign Functions onlt gives value of 1, -1, 0

DECLARE @MyVar10 AS NUMERIC(7,2) = 456
SELECT ABS(@myVar10) AS AbsResult
SELECT SIGN(@myVar10) AS SignResult --Sign Functions onlt gives value of 1, -1, 0

DECLARE @MyVar11 AS NUMERIC(7,2) = 0
SELECT ABS(@myVar11) AS AbsResult
SELECT SIGN(@myVar11) AS SignResult --Sign Functions onlt gives value of 1, -1, 0

SELECT RAND(12345) AS RandResult --Gives Random Value


--IMPLICIT
--Implicit is to converting data type by declaring it
--"3" is an integer value first but we declare as it's decimal
DECLARE @myVar12 AS DECIMAL(5,2) = 3
SELECT @myVar12 AS DecimalResult 

--EXPLICIT
--Explicit is to converting data type by using functions called "Convert" OR "Cast"
--"3" is an integer value first but we Convert as it's decimal
SELECT CONVERT(decimal(5,2),3) AS ConvertResult 
SELECT CONVERT(int,3.5) AS ConvertResult 
SELECT CAST(3 AS decimal(5,2)) AS CastResult
