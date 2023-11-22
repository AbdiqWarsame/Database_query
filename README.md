# Online_Business_Database
This database is designed to support the backend infrastructure of a simple online business. It includes tables for products, customers, orders, and order items, providing a foundation for managing inventory, customer information, and order processing. The Product table stores details about available products, such as their names, descriptions, prices, and stock quantities. Customer information, including names, phone numbers, and addresses, is stored in the Customer table. The Orders table tracks order-specific data, such as order IDs, customer IDs, order dates, and total amounts. The OrderItem table is responsible for recording individual items within each order, capturing details like product IDs, quantities, and subtotal amounts. The relationships between these tables enable the tracking of customer orders and the products associated with each order. This database can serve as a starting point for the development of an e-commerce platform, helping to manage product listings, customer profiles, and order fulfillment. Users can expand and customize this database to meet the specific needs of their online business.
You can import the SQL script into your database management system.
Modify the code according to your specific requirements if needed.
Run example queries to extract useful information such as ; 
# Retrieve all products
SELECT * FROM Product;
# Retrieve order details with customer information:
SELECT Orders.OrderID, Orders.OrderDate, Orders.TotalAmount, Customer.FirstName, Customer.LastName
FROM Orders 
JOIN Customer ON Orders.CustomerID = Customer.CustomerID;
# Calculate the total revenue from all orders:
SELECT SUM(TotalAmount) AS TotalRevenue FROM Orders;
# Find the best-selling products (highest quantity ordered):
SELECT ProductID, SUM(Quantity) AS TotalQuantity
FROM OrderItem
GROUP BY ProductID
ORDER BY TotalQuantity DESC;
and more 
