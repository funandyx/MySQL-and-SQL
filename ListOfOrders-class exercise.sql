
#USING SEQUELPRO


#1. Create First Table == 'ListOfOrders'

CREATE TABLE `ListOfOrders` (
  `Order ID` varchar(255) DEFAULT NULL,
  `Order Date` DATE DEFAULT NULL,
  `Customer Name` CHAR(255) DEFAULT NULL,
  `Country` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#2. Import ListOfOrders CSV file into  SequelPro


#3. Create Second Table == 'Orderbreakdown'

CREATE TABLE `OrderBreakdown` (
  `Order ID` varchar(255) DEFAULT NULL,
  `Product Name` varchar(255) DEFAULT NULL,
  `Discount` DECIMAL(6.2) DEFAULT NULL,
  `Sales` DECIMAL(6.2) DEFAULT NULL,
  `Quantity` varchar(255) DEFAULT NULL,
  `Category` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#4. Import OrderBreakdown CSV file into  SequelPro


