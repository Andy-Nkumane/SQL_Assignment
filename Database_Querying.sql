-- Selecting all records from the table Customers.
SELECT * FROM Customers;

-- Selecting records only from the name column in the Customers table.
SELECT FirstName, LastName FROM Customers;

-- Displaying the name of the customer whose CustomerID is 1.
SELECT FirstName, LastName FROM Customers WHERE CustomerID = 1;

-- Updating record name for CustomerID 1 on Customers table to "Lerato Mabitso".
UPDATE Customers SET Customers.FirstName = 'Lerato', Customers.LastName = 'Mabitso' WHERE Customers.CustomerID = 1;

-- Deleting customer 2 from the Customers table.
DELETE FROM Customers WHERE CustomerID = 2;

-- Selecting unique and counting statuses from the Orders status.
SELECT COUNT(DISTINCT(Status)) AS Unique_Status_Count FROM Orders;

-- Maximum payment made on the Payments table.
SELECT MAX(Amount) AS Max_Payment FROM Payments;

-- Displaying the entire Customers table sorted by the Country column.
SELECT * FROM Customers ORDER BY Country;

-- Selecting products with a price between R100 and R600 from Products table.
SELECT * FROM Products WHERE BuyPrice BETWEEN 100 AND 600;

-- Selecting customers from country Germany and city Berlin from Customes table.
SELECT * FROM Customers WHERE Country = 'Germany' AND City = 'Berlin';

-- Selecting customers from city Cape Town or Durban from Customers table.
SELECT * FROM Customers WHERE City = 'Cape Town' OR City = 'Durban';

-- Selecting products that have a price greater than R500 from Products table.
SELECT * FROM Products WHERE BuyPrice > 500;

-- Displaying the total amount on the Payments table.
SELECT SUM(Amount) AS Total_Amount FROM Payments;

-- Displying the total number of shipped orders from Orders table.
SELECT COUNT(Status) AS TotaL_Shipped FROM Orders WHERE Status = 'Shipped';

-- Displaying the average price of products in rands and dollars from Products table.
SELECT CAST(AVG(BuyPrice) AS DECIMAL(10,2)) AS Average_Rands, CAST(AVG(BuyPrice / 12.0) AS DECIMAL(10,2)) AS Average_Dollars FROM Products;

-- Selecting payments with customers information using INNER JOIN, tables Payments and Customers
SELECT Payments.* FROM Payments INNER JOIN Customers ON Payments.CustomerID = Customers.CustomerID;

-- Selecting products that have turnable front wheels from Products table.
SELECT * FROM Products WHERE Description LIKE '%Turnable front wheels%';