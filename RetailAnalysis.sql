-- STEP 1: Database and Table Setup
CREATE DATABASE IF NOT EXISTS RetailAnalysis;
USE RetailAnalysis;





CREATE TABLE IF NOT EXISTS RetailTransactions (
    TransactionID VARCHAR(20),
    TxnDate DATE,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Region VARCHAR(20),
    SalesChannel VARCHAR(20),
    Quantity INT,
    UnitPrice DECIMAL(10,2),
    TotalAmount DECIMAL(10,2),
    PaymentMode VARCHAR(20),
    CustomerID VARCHAR(20)
);




-- STEP 2: Load Data from CSV
LOAD DATA LOCAL INFILE 'RetailTransactions.csv'
INTO TABLE RetailTransactions
FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(TransactionID, @rawdate, ProductName, Category, Region, SalesChannel, Quantity, UnitPrice, TotalAmount, PaymentMode, CustomerID)
SET TxnDate = STR_TO_DATE(@rawdate, '%m/%d/%Y');





-- Query 1: Total sales amount per region for the last quarter

SELECT Region, SUM(TotalAmount) AS TotalSales
FROM RetailTransactions
WHERE TxnDate BETWEEN '2025-07-01' AND '2025-09-30'
GROUP BY Region
ORDER BY TotalSales DESC;




-- Query 2: Top 5 best-selling products (by revenue)

SELECT ProductName, SUM(TotalAmount) AS Revenue
FROM RetailTransactions
GROUP BY ProductName
ORDER BY Revenue DESC
LIMIT 5;




-- Query 3: Monthly sales trend across all regions

SELECT DATE_FORMAT(TxnDate, '%Y-%m') AS Month, SUM(TotalAmount) AS MonthlySales
FROM RetailTransactions
GROUP BY Month
ORDER BY Month;




-- Query 4: Region-wise contribution to total sales (as a %)

SELECT Region,
       SUM(TotalAmount) AS RegionSales,
       ROUND(100.0 * SUM(TotalAmount) / (SELECT SUM(TotalAmount) FROM RetailTransactions), 2) AS PctContribution
FROM RetailTransactions
GROUP BY Region;




-- Query 5: Compare Online vs Offline sales across all months

SELECT DATE_FORMAT(TxnDate, '%Y-%m') AS Month, SalesChannel, SUM(TotalAmount) AS Sales
FROM RetailTransactions
GROUP BY Month, SalesChannel
ORDER BY Month;




-- Query 6: Sales trend by Category - rising/falling

SELECT DATE_FORMAT(TxnDate, '%Y-%m') AS Month, Category, SUM(TotalAmount) AS Sales
FROM RetailTransactions
GROUP BY Month, Category
ORDER BY Category, Month;




-- Query 7: Customers who purchased more than 10 times

SELECT CustomerID, COUNT(*) AS PurchaseCount
FROM RetailTransactions
GROUP BY CustomerID
HAVING COUNT(*) > 10
ORDER BY PurchaseCount DESC;