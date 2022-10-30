--Data type	    Format	                    Range	                                         Accuracy	          Storage size (bytes)	      User-defined fractional second precision

--time	        hh:mm:ss[.nnnnnnn]	        00:00:00.0000000 through 23:59:59.9999999	     100 nanoseconds	  3 to 5	                  Yes
--date	        YYYY-MM-DD	                0001-01-01 through 9999-12-31	                 1 day	              3	                          No
--smalldatetime	YYYY-MM-DD hh:mm:ss	        1900-01-01 through 2079-06-06	                 1 minute	          4	                          No
--datetime	    YYYY-MM-DD hh:mm:ss[.nnn]	1753-01-01 through 9999-12-31	                 0.00333 second	      8	                          No 
--....

DECLARE @mydate AS DATETIME = '2015-06-24 12:34:56.124'
SELECT @mydate AS Result

DECLARE @mydate3 AS DATETIME2(5)  = '2015-06-24 12:34:56.124'
SELECT  @mydate3 AS AcurrateResult
--It gives more accuracy than before

DECLARE @mydate2 AS DATETIME2  = '2015-06-24 12:34:56.124'
SELECT  @mydate2 AS MostAccurrateResult
--It gives more accuracy than before

SELECT YEAR(@mydate) AS myYear, MONTH(@mydate) AS myMonth, DAY(@mydate) AS myDay

------------------------------------DATE FUNCTIONS--------------------------------------
SELECT CURRENT_TIMESTAMP AS RightNow
--Gives Current Time
--Returns DateTime

SELECT GETDATE() AS RightNow
--Gives Current Time
--Returns DateTime

SELECT SYSDATETIME() AS RightNow
--Gives Current Time
--Returns DateTime2

SELECT DATEADD(YEAR,1,'1997-04-27 03:03:03') AS MyBirthday
--ReturnsSmallDateTime 

SELECT DATEPART(HOUR,'1997-04-27 03:03:03') AS MyHour

--------------------Converting DateTime Into a String---------------------------------------

DECLARE @myBirthDate AS DATETIME = '1997-04-27 03:03:03'       
SELECT CONVERT(NVARCHAR(20),@myBirthDate) AS Result

---------------------------YOU CAN ALSO LEARN------------------------------------------------

--How to add or subtract days or time in SQL Server using the DATEADD Function

--What is the difference between two dates? Using the DATEDIFF function

--Convert numbers year, month and days and more to dates in SQL Server - with ...FROMPARTS functions

--Extract parts of dates - using DATENAME, DATEPART, DAY, MONTH and YEAR functions in SQL Server

--The FORMAT function in SQL Server - extracting single or multiple parts of a datetime

--Getting the First day and last day of a month in SQL Server

--Getting the current date and time in SQL Server, and using timezones with DateTimeOffset
