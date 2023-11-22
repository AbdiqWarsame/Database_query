--Retrieve all products:
Select * 
From Product; 


--Retrieve all customers:
Select*
From Customer; 


--Retrieve all orders:
Select *
From orderItem; 


--Retrieve order details with customer information:
SELECT Orders.OrderID, Orders.OrderDate, Orders.TotalAmount, Customer.FirstName, Customer.LastName
FROM Orders
JOIN Customer ON Orders.CustomerID = Customer.CustomerID;


--Retrieve product information with stock quantity greater than a certain value (e.g., 50):
SELECT * 
FROM Product WHERE StockQuantity > 50;

--Calculate the total revenue from all orders:
SELECT SUM(TotalAmount) AS TotalRevenue FROM Orders;






