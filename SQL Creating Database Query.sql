CREATE TABLE Product(
  ProductID INT PRIMARY KEY,
  Name varchar(100),
  Description Text,
  price decimal(12,2),
  StockQuantity INT );

CREATE TABLE Customer (
  CustomerID Int PRIMARY KEY,
  FirstName varchar(100),
  LastName  varchar(100),
  PhoneNumber varchar (15),
  Address     text );


CREATE TABLE Orders( 
  OrderID INT PRIMARY KEY,
  CustomerID Int,
  OrderDate DATE,
  TotalAmount Decimal(12,2) , 
FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

CREATE TABLE OrderItem (
    OrderItemID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    Subtotal DECIMAL(12,2),
FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);

