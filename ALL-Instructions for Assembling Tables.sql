
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
  
1. SELECT
#There are two required ingredients in any SQL query: SELECT and FROM—and they have to be in that order. SELECT indicates which columns you’d like to view, and FROM identifies the table that they live in.
  
SELECT Country Name,
       Birth rate,
       Income Group
  FROM `demographics`
  
  
#SELECT ALL
#If you want to select every column in a table, you can use * instead of the column names:

SELECT *
  FROM `demographics`

  
#SELECT COUNT

1. Counting all rows
#COUNT is a SQL aggregate function for counting the number of rows in a particular column. COUNT is the easiest aggregate function to begin with because verifying your results is extremely simple. Let’s begin by using * to select all rows 
  
 SELECT COUNT(*)
  FROM `demographics`
  

2. Counting individual columns
  
#The following code will provide a count of all of rows in which the high column is not null.
  
SELECT COUNT(high)
  FROM `demographics`
  

#SUM is a SQL aggregate function that totals the values in a given column. Unlike COUNT, you can only use SUM on columns containing numerical values.
The query below selects the sum of the volume column from the Demographics dataset:
  
  SELECT SUM(volume)
  FROM `demographics`
  
#If you’d like your results to look a bit more presentable, you can rename columns to include spaces. For example, if you want the Birth rate column to appear as "Birth Rate" in the results, you would have to type:
  
SELECT Birth rate AS "Birth Rate"
  FROM `demographics`
  
#Without the double quotes, that query would read ‘Birth’ and ‘rate’ as separate objects and would return an error. Note that the results will only return capital letters if you put column names in double quotes. 
