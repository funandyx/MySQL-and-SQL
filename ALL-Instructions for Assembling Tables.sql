
#A
#INTRODUCING TABLES

#In the MySQL Command Line Client, you can display a list of all databases on your MySQL Server using this query:
SHOW DATABASES ;

#To work with any database, you must first tell the MySQL Server which database to use by issuing this query
USE database-name ;

#Once the database has been selected, it is possible to view a list of all the tables it contains with this query
SHOW TABLES ;


#FIRST
# 1. Launch the MySQL Command Line Client then enter the root password (if you set one) you chose during installation
# 2. At the mysql> command prompt, issue this query to list all databases that exist on your MySQL Server

SHOW DATABASES ;

# 3. Next, issue this query to use an existing database
USE site_db ;

# 4. Now, issue a further query to display all tables that exist within the "site_db" database
SHOW TABLES ;

#You can discover the format of any table using this query
EXPLAIN table-name ;

# A table may also be deleted from a database using this query
DROP TABLE IF EXISTS table-name ;




#CREATING TABLES

# 1. Launch a plain text editor, such as Notepad, and create a query defining a "fruit" table
CREATE TABLE IF NOT EXISTS fruit
(
id    INT, 
name  TEXT, 
color TEXT
) ;

# 2. Save the file on your desktop as "create_table.sql", then launch the MySQL Comman Line Client and login as a user with full access privileges, such as root

# 3. Next, issue a query to use the established database
USE site_db ;

# 4. Now, implement the SQL query by stating the source path to the SQL file on your system, such as
SOURCE C:\Users\funan\Desktop\.......\create_table.sql

# 5. Issue a query to confirm the table's existence and format
EXPLAIN fruit ;

# 6. Now, delete the table and confirm its removal
DROP TABLE IF EXISTS fruit ;
SHOW TABLES ;





#DEFINING DATA TYPES (repeat same as above)
# 1. Launch a plain text editor, such as Notepad, and create a query defining a table with columns of various data types
CREATE TABLE IF NOT EXISTS user_log
(
id            INT, 
date          TIMESTAMP, 
first_name    VARCHAR(20) , 
last_name     VARCHAR(20)
) ;

# 2. Save the file on your desktop as data_types.sql, then launch the MySQL Command Line Client and login as user with full access privileges, such as root

# 3. Next, issue a query to use the established database
USE site_db ;

# 4. Now, implement the SQL query by stating the source path to the SQL file on your system, such as
SOURCE C:\Users\funan\Desktop\.......\data_types.sql

# 5. Issue a query to confirm the table's existence and format
EXPLAIN user_log ;




#ADDING MODIFIERS 
# 1. Launch a plain text editor, such as Notepad, and create a query defining a table with columns of various data types
CREATE TABLE IF NOT EXISTS products
(
id            	INT UNIQUE			AUTO_INCREMENT , 
code         	INT 				NOT NULL ,
name    		VARCHAR(25) 		NOT NULL , 
quantity	    INT 				DEFAULT 1 ,
price			DECIMAL(6.2)		NOT NULL
) ;

# 2. Save the file on your desktop as modifiers.sql, then launch the MySQL Command Line Client and login as user with full access privileges, such as root

# 3. Next, issue a query to use the established database
USE site_db ;

# 4. Now, implement the SQL query by stating the source path to the SQL file on your system, such as
SOURCE C:\Users\funan\Desktop\.......\modifiers.sql

# 5. Issue a query to confirm the table's existence and format
EXPLAIN products ;




#SETTING PRIMARY KEYS
# 1. Launch a plain text editor, such as Notepad, and create a query defining a table with columns of various data types
CREATE TABLE IF NOT EXISTS cups
(
id            	INT AUTO_INCREMENT	PRIMARY KEY , 
cup_pattern		VARCHAR(25)
) ;

CREATE TABLE IF NOT EXISTS products
(
id            	INT AUTO_INCREMENT , 
pot_pattern		VARCHAR(25), PRIMARY KEY( id )
) ;

# 2. Save the file on your desktop as primary_key.sql, then launch the MySQL Command Line Client and login as user with full access privileges, such as root and issue a query to use the established database
USE site_db ;

# 3. Now, implement the SQL query by stating the source path to the SQL file on your system, such as
SOURCE C:\Users\funan\Desktop\.......\primary_key.sql

# 4. Issue a query to confirm the table's existence and format
EXPLAIN cups ; EXPLAIN pots ;




#ALTERING TABLES
# 1. Launch a plain text editor, such as Notepad, and create a query defining a table with three columns 

CREATE TABLE IF NOT EXISTS pans
(
id            	INT 				NOT NULL ,
pattern   		VARCHAR(25) 		NOT NULL , 
price			DECIMAL(6.2)		
) ;

# 2. Next, add a query to confirm the table's format
EXPLAIN pans ;

# 3. Now add a query to update the table
ALTER TABLE pans ;
ADD PRIMARY KEY ( id ) ,
ADD COLUMN code INT UNIQUE NOT NULL , 
CHANGE pattern pan_pattern VARCHAR(25) NOT NULL , 
DROP COLUMN price ;

# 4. Add a query to confirm the altered table format
EXPLAIN pans ; 

# 5. Save the file on your desktop as alter_table.sql, then launch the MySQL Command Line Client and login as user with full access privileges, such as root and issue a query to use the established database
USE site_db ;

# 3. Now, implement the SQL query by stating the source path to the SQL file on your system, such as
SOURCE C:\Users\funan\Desktop\.......\alter_table.sql


#END OF THIS PART




#PART TWO
#HANDLING DATA (MORE OF THIS LATER IN THE COURSE)

#. 1. INSERTING DATA

CREATE TABLE IF NOT EXISTS prints
(
  id	INT AUTO_INCREMENT PRIMARY KEY ,
  name	VARCHAR(32) ,
  price	DECIMAL(6,2)
) ;

INSERT INTO prints ( name , price )
VALUES  ( "Merry Structure" , 29.99 ) , ( "Heavy Red" , 24.99 ) , ( "Black Lines" , 45.99 ) ;

SELECT * FROM prints ;





#. 2. UPDATING COLUMNS

CREATE TABLE IF NOT EXISTS towels
(
  id	INT AUTO_INCREMENT PRIMARY KEY ,
  name	CHAR(16) ,
  color	CHAR(16) ,
  price	DECIMAL(6,2)
) ;

INSERT INTO towels ( name , color , price )
VALUES  
( "Dolphin" , "Blue" , 9.99 ) , 
( "Wine" , "Maroon" , 12.99 ) ,
( "Harvest" , "Beige" , 7.99 ) ,
( "Daisy" , "Lilac" , 8.99 ) ,
( "Starburst" , "Yellow" , 10.99 ) ;

SELECT * FROM towels ;

UPDATE towels SET color = "White" ;
SELECT * FROM towels ;

UPDATE towels SET price = 5.99 ;
SELECT * FROM towels ;




# 3. UPDATING FIELDS

CREATE TABLE IF NOT EXISTS tiles
(
  id	INT AUTO_INCREMENT PRIMARY KEY ,
  pattern	CHAR(16) ,
  color	CHAR(16) ,
  price	DECIMAL(6,2)
) ;

INSERT INTO tiles ( pattern , color , price )
VALUES  
( "Spring" , "Green" , 9.99 ) , 
( "Summer" , "Yellow" , 12.99 ) ,
( "Autumn" , "Brown" , 9.99 ) ,
( "Winter" , "Blue" , 8.99 ) ;

SELECT * FROM tiles ;

UPDATE tiles SET pattern = "Fall" WHERE pattern = "Autumn" ;
UPDATE tiles SET color = "Gold" WHERE color = "Yellow" ;
UPDATE tiles SET price = 10.99 WHERE price = 9.99 ;
UPDATE tiles SET price = 11.99 WHERE id = 4 ;

SELECT * FROM tiles ;




#HANDLING DATA (MORE OF THIS LATER IN THE COURSE)

  
  
	
	
	

#SQL FOR DATA ANALYSES
  
#Formatting convention
#You might have noticed that the SELECT and `FROM’ commands are capitalized. This isn’t actually necessary—SQL will understand these commands if you type them in lowercase.
  
#1. SELECT
#There are two required ingredients in any SQL query: SELECT and FROM—and they have to be in that order. SELECT indicates which columns you’d like to view, and FROM identifies the table that they live in.
  
SELECT `Country Name`,
       `Birth rate`,
       `Income Group`
  FROM `demographics`
  
  
#SELECT ALL
#If you want to select every column in a table, you can use * instead of the column names:

SELECT *
  FROM `demographics`

  
#2. SELECT COUNT

#Counting all rows
#COUNT is a SQL aggregate function for counting the number of rows in a particular column. COUNT is the easiest aggregate function to begin with because verifying your results is extremely simple. Let’s begin by using * to select all rows 
  
 SELECT COUNT(*)
  FROM `demographics`
  

#Counting individual columns 
#The following code will provide a count of all of rows in which the high column is not null.
  
SELECT COUNT(`Country Name`)
FROM `demographics`
  
	
#3. SQL SUM
#SUM is a SQL aggregate function that totals the values in a given column. Unlike COUNT, you can only use SUM on columns containing numerical values.
#The query below selects the sum of the volume column from the Demographics dataset:
  
SELECT SUM(`Birth rate`)
FROM `demographics`
  
#If you’d like your results to look a bit more presentable, you can rename columns to include spaces. For example, if you want the Birth rate column to appear as "Birth Rate" in the results, you would have to type:
  
SELECT `Birth rate` AS "Birth Rate-2"
FROM `demographics`
  
#Without the double quotes, that query would read ‘Birth’ and ‘rate’ as separate objects and would return an error. Note that the results will only return capital letters if you put column names in double quotes. 
  
	
#4. SQL LIMIT
#Using the SQL LIMIT command

SELECT *
FROM `demographics`
LIMIT 10

	
#5. The SQL WHERE clause
  
SELECT *
FROM `demographics`
WHERE `Internet users` = 20
  
  
#6. Comparison operators on numerical data
#SQL SELECT WHERE clause	
	
 SELECT *
 FROM `demographics`
 WHERE `Birth rate` > 30
 ORDER BY `Income Group`

  
#The most basic way to filter data is using comparison operators. The easiest way to understand them is to start by looking at a list of them:
#Equal to 			=
#Not equal to			<> or !=
#Greater than			>
#Less than			<
#Greater than or equal to	>=
#Less than or equal to		<=
  
  
 SELECT *
 FROM `demographics`
 WHERE `Country Name` != 'Estonia'
  
  
  
#7. SQL Logical Operators
#Each logical operator is a special snowflake, so we’ll go through them individually in the following lessons. Here’s a quick preview:

#LIKE allows you to match similar values, instead of exact values.
#IN allows you to specify a list of values you’d like to include.
#BETWEEN allows you to select only rows within a certain range.
#IS NULL allows you to select rows that contain no data in a given column.
#AND allows you to select only rows that satisfy two conditions.
#OR allows you to select rows that satisfy either of two conditions.
#NOT allows you to select rows that do not match a certain condition.
  
  
SELECT *
FROM `demographics`
ORDER BY `Income Group` DESC, 'High Income'


  
#SQL LIKE
#LIKE is a logical operator in SQL that allows you to match on similar values rather than exact ones.

SELECT *
FROM `demographics`
WHERE "Country Name" LIKE 'Country Name'
  
#Note: "country name" appears in quotations above. The double quotes (as opposed to single: ') are a way of indicating that you are referring to the column name "Country Name", not a SQL function like "group". In general, putting double quotes around a word or phrase will indicate that you are referring to that column name.
 
	
#SQL_BETWEEN
#BETWEEN is a logical operator in SQL that allows you to select only rows that are within a specific range. It has to be paired with the AND operator, which you’ll learn about in a later lesson

SELECT *
FROM `demographics`
WHERE `Birth rate` BETWEEN 5 AND 10
 
SELECT *
FROM `demographics`
WHERE `Birth rate` >= 5 AND `Internet users` <= 10	

	
	
#8. SQL_IS_NULL
#IS NULL is a logical operator in SQL that allows you to exclude rows with missing data from your results.
 
 SELECT *
 FROM `demographics`
 WHERE `Birth rate` IS NULL
  
  
  
#9. SQL_AND
#AND is a logical operator in SQL that allows you to select only rows that satisfy two conditions.
  
  SELECT *
  FROM `demographics`
  WHERE `Birth rate` = 10 AND `Internet Users` <= 100
  
	
#10. SQL_OR
#OR is a logical operator in SQL that allows you to select rows that satisfy either of two conditions. It works the same way as AND, which selects the rows that satisfy both of two conditions.
  
SELECT *
FROM `demographics`
WHERE `Birth rate` = 5 OR `Internet users` = 20
  
	
  
#11. SQL_ORDER_BY
#The ORDER BY clause allows you to reorder your results based on the data in one or more columns. 

 SELECT *
 FROM `demographics`
 WHERE `Internet users` = 20
 ORDER BY `Income group`
  
  
	
#12. SQL Aggregate Functions
#SQL is excellent at aggregating data the way you might in a pivot table in Excel. You will use aggregate functions all the time, so it’s important to get comfortable with them. The functions themselves are the same ones you will find in Excel or any other analytics program. We’ll cover them individually in the next few lessons. Here’s a quick preview:

#COUNT counts how many rows are in a particular column.
#SUM adds together all the values in a particular column.
#MIN and MAX return the lowest and highest values in a particular column, respectively.
#AVG calculates the average of a group of selected values.

#SQL_COUNT
#COUNT is a SQL aggregate function for counting the number of rows in a particular column. COUNT is the easiest aggregate function to begin with because verifying your results is extremely simple
	
SELECT COUNT(*)
FROM `demographics`
  
#SQL SUM
#SUM is a SQL aggregate function that totals the values in a given column. Unlike COUNT, you can only use SUM on columns containing numerical values.

SELECT SUM(`Internet users`)
FROM `demographics`
  
  
#SQL MIN/MAX
#MIN and MAX are SQL aggregation functions that return the lowest and highest values in a particular column.
  
  SELECT MIN(`Internet users`) AS `Internet users`,
  MAX(`Internet users`) AS `Internet users`
  FROM `demographics`

#SQL AVG	
#AVG is a SQL aggregate function that calculates the average of a selected group of values.

SELECT AVG(`Birth rate`)
FROM `demographics`
	
#SQL GROUP BY	
#SQL aggregate functions like COUNT, AVG, and SUM have something in common: they all aggregate across the entire table. But what if you want to aggregate only part of a table? For example, you might want to count the number of entries for each year.

SELECT `Income Group`,
       	COUNT(*) AS count
  	FROM `demographics`
 	GROUP BY `Income Group`
	
#Using GROUP BY with ORDER BY
#The order of column names in your GROUP BY clause doesn’t matter—the results will be the same regardless. If you want to control how the aggregations are grouped together, use ORDER BY.

SELECT `Birth rate`,
       `Income Group`,
       	COUNT(*) AS count
  	FROM `demographics`
 	GROUP BY `Birth rate`, `Income Group`
	ORDER BY `Birth rate`, `Income Group`
	
	
#13. SQL DISTINCT
#DISTINCT can be particularly helpful when exploring a new data set. In many real-world scenarios, you will generally end up writing several preliminary queries in order to figure out the best approach to answering your initial question. Looking at the unique values on each column can help identify how you might want to group or filter the data.

SELECT DISTINCT `Birth rate`, `Internet users`
FROM `demographics`
	
#If you include two (or more) columns in a SELECT DISTINCT clause, your results will contain all of the unique pairs of those two columns:

SELECT DISTINCT `Birth rate`, `Internet users`
FROM `demographics`

	
#14. SQL CASE
#The CASE statement is SQL’s way of handling if/then logic. The CASE statement is followed by at least one pair of WHEN and THEN statements—SQL’s equivalent of IF/THEN in Excel. Because of this pairing, you might be tempted to call this SQL CASE WHEN, but CASE is the accepted term.
#Every CASE statement must end with the END statement. The ELSE statement is optional, and provides a way to capture values not specified in the WHEN/THEN statements. CASE is easiest to understand in the context of an example:

SELECT `Country Code`,
       `Country Name`,
       	CASE WHEN `Country Name` = 'Estonia' THEN 'yes'
       	ELSE NULL END AS is_not
  	FROM `demographics`
	
#In plain English, here’s what’s happening:
#1. The CASE statement checks each row to see if the conditional statement—year = ‘Estonia’ is true.
#2. For any given row, if that conditional statement is true, the word “yes” gets printed in the column that we have named is_not.
#3. In any row for which the conditional statement is false, nothing happens in that row, leaving a null value in the is_not column.
#4. At the same time all this is happening, SQL is retrieving and displaying all the values in the Country Name and Country Code columns.

	
	
#Adding multiple conditions to a CASE statement
#You can also define a number of outcomes in a CASE statement by including as many WHEN/THEN statements as you’d like:
	
SELECT `Country Name`,
       `Country Code`,
       CASE WHEN `Birth rate` > 10 THEN 'over 10Ths'
            WHEN `Birth rate` > 20 THEN '20'
            WHEN `Birth rate` > 50 THEN '50'
            ELSE '50 or under' END AS special_group
  FROM `demographics`
	
	
#15. SQL Joins
