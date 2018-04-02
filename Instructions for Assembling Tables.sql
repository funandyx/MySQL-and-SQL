#INTRODUCING TABLES

#In the MySQL Command Line Client, you can display a list of all databases on your MySQL Server using this query:
SHOW DATABASES ;

#To work with any database, you must first tell the MySQL Server which database to use by issuing this query
USE database-name ;

#Once the database has been selected, it is possible to view a list of all the tables it contains with this query
SHOW TABLES ;


#FIRST
# 1. Launch the MySQL Command Line Client then enter the root password you chose during installation
# 2. At the mysql> command prompt, issue this query to list all databases that exist on your MySQL Server

SHOW DATABASES ;

# 3. Next, issue this query to use an existing database
USE site_db ;

# 4. Now, issue a further query to display all tables that exist within the "site_db" database
SHOW TABLES ;



#NEXT

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
SOURCE C:\Users\funan\Desktop\Desktop-2\PHP 1 Docs\PHP from Ineasy\sql\create_table.sql

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
SOURCE C:\Users\funan\Desktop\Desktop-2\PHP 1 Docs\PHP from Ineasy\sql\data_types.sql

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
SOURCE C:\Users\funan\Desktop\Desktop-2\PHP 1 Docs\PHP from Ineasy\sql\modifiers.sql

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
SOURCE C:\Users\funan\Desktop\Desktop-2\PHP 1 Docs\PHP from Ineasy\sql\primary_key.sql

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

# 6. Now, implement the SQL query by stating the source path to the SQL file on your system, such as
SOURCE C:\Users\funan\Desktop\Desktop-2\PHP 1 Docs\PHP from Ineasy\sql\alter_table.sql


