CREATE DATABASE starbird;

USE starbird;

SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS Payment;
DROP TABLE IF EXISTS Prepared_by;
DROP TABLE IF EXISTS Order_Line;
DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS Menu_Item;
DROP TABLE IF EXISTS Employee;
DROP TABLE IF EXISTS Customer;

CREATE TABLE Customer
(Customer_ID        INT             NOT NULL,
First_Name          VARCHAR(25),
Last_Name           VARCHAR(25),
Member_ID           INT,
Phone               CHAR(10),
Rewards             INT,
Join_Date           DATE,
CONSTRAINT Customer_PK PRIMARY KEY (Customer_ID),
CONSTRAINT Member_UK UNIQUE (Member_ID));

CREATE TABLE Employee
(Employee_ID        INT             NOT NULL,
First_Name          VARCHAR(25),
Last_Name           VARCHAR(25),
Hire_Date           DATE            NOT NULL,
Position            VARCHAR(25),
Hourly_Rate         DECIMAL(10,2),
Job_Title           VARCHAR(25),
Employ_Status       VARCHAR(25),
CONSTRAINT Employee_PK PRIMARY KEY (Employee_ID));

CREATE TABLE Menu_Item
(Menu_Item_ID       INT             NOT NULL,
Menu_Item_Name      VARCHAR(25),
Category            VARCHAR(25),
Menu_Item_Price     DECIMAL(10,2),
Description         VARCHAR(255),
Promotion           VARCHAR(25),
LimitedProd         VARCHAR(3),
Platform_Type       VARCHAR(25),
Calories            INT,
CONSTRAINT Menu_Item_PK PRIMARY KEY (Menu_Item_ID));

CREATE TABLE Orders
(Order_ID           INT             NOT NULL,
Order_Date          DATE,
Order_Time          TIME,
Order_Type          VARCHAR(15),
Order_Status        VARCHAR(20)     DEFAULT 'Pending',
Order_Subtotal      DECIMAL(10,2),
Tax_Amount          DECIMAL(10,2),
Order_Total         DECIMAL(10,2),
Points_Earned       INT,
Customer_ID         INT,
CONSTRAINT Order_PK PRIMARY KEY (Order_ID),
CONSTRAINT Orders_Customer_FK FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID));

CREATE TABLE Order_Line
(Order_Line_ID      INT             NOT NULL,
Order_ID            INT             NOT NULL,
Menu_Item_ID        INT             NOT NULL,
Quantity            INT,
Unit_Price          DECIMAL(10,2),
Item_Subtotal       DECIMAL(10,2),
Notes               VARCHAR(255),
Line_Number         INT,
Item_Discount       DECIMAL(10,2)   DEFAULT 0.00,
Order_Line_Status   VARCHAR(20)     DEFAULT 'Pending',
CONSTRAINT Order_Line_PK PRIMARY KEY (Order_Line_ID),
CONSTRAINT OrderLine_Order_FK FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID),
CONSTRAINT OrderLine_MenuItem_FK FOREIGN KEY (Menu_Item_ID) REFERENCES Menu_Item(Menu_Item_ID));

CREATE TABLE Prepared_by
(Employee_ID        INT             NOT NULL,
Order_ID            INT             NOT NULL,
Prep_Timestamp      TIME,
Position            VARCHAR(25),
Time_Spent          TIME,
CONSTRAINT Prepared_by_PK PRIMARY KEY (Employee_ID, Order_ID),
CONSTRAINT Preparedby_Employee_FK FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID),
CONSTRAINT Preparedby_Order_FK FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID));

CREATE TABLE Payment
(Payment_ID         INT             NOT NULL,
Customer_ID         INT             NOT NULL,
Order_ID            INT             NOT NULL,
Payment_Method      VARCHAR(20),
Payment_Date        DATETIME,
Tip_Amount          DECIMAL(10,2),
Payment_Status      VARCHAR(12),
Transaction_ID      VARCHAR(50),
Change_Given        DECIMAL(10,2),
CONSTRAINT Payment_PK PRIMARY KEY (Payment_ID),
CONSTRAINT Payment_Order_FK FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID),
CONSTRAINT Payment_Customer_FK FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID));

-- Enforce 1:1 between Orders and Payment
ALTER TABLE Payment
ADD CONSTRAINT Payment_Order_UK UNIQUE (Order_ID);

-- Orders: if Customer is deleted set Customer_ID to NULL
ALTER TABLE Orders
DROP FOREIGN KEY Orders_Customer_FK,
ADD CONSTRAINT Orders_Customer_Behavior_FK
FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID)
ON DELETE SET NULL
ON UPDATE CASCADE;

-- Order_Line: if Order is deleted cascade delete its line items
ALTER TABLE Order_Line
DROP FOREIGN KEY OrderLine_Order_FK,
ADD CONSTRAINT OrderLine_Order_Behavior_FK
FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID)
ON DELETE CASCADE
ON UPDATE CASCADE;

-- Order_Line: restrict deletion of Menu_Item if lines reference it
ALTER TABLE Order_Line
DROP FOREIGN KEY OrderLine_MenuItem_FK,
ADD CONSTRAINT OrderLine_MenuItem_Behavior_FK
FOREIGN KEY (Menu_Item_ID) REFERENCES Menu_Item(Menu_Item_ID)
ON DELETE RESTRICT
ON UPDATE CASCADE;

-- Prepared_by: cascade deletes from Employee
ALTER TABLE Prepared_by
DROP FOREIGN KEY Preparedby_Employee_FK,
ADD CONSTRAINT Preparedby_Employee_Behavior_FK
FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID)
ON DELETE CASCADE
ON UPDATE CASCADE;

-- Prepared_by: cascade deletes from Orders
ALTER TABLE Prepared_by
DROP FOREIGN KEY Preparedby_Order_FK,
ADD CONSTRAINT Preparedby_Order_Behavior_FK
FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID)
ON DELETE CASCADE
ON UPDATE CASCADE;

-- Payment: restrict deletion of Order that has a payment
ALTER TABLE Payment
DROP FOREIGN KEY Payment_Order_FK,
ADD CONSTRAINT Payment_Order_Behavior_FK
FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID)
ON DELETE RESTRICT
ON UPDATE CASCADE;

-- Payment: restrict deletion of Customer that has a payment
ALTER TABLE Payment
DROP FOREIGN KEY Payment_Customer_FK,
ADD CONSTRAINT Payment_Customer_Behavior_FK
FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID)
ON DELETE RESTRICT
ON UPDATE CASCADE;

SET FOREIGN_KEY_CHECKS = 1;
    
    


