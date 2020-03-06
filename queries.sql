-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

SELECT ProductName, CategoryName
FROM ProductDetails_V;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

SELECT "Order".Id, OrderDate, CompanyName FROM "Order" 
JOIN Shipper ON "Order".ShipVia = Shipper.Id
WHERE OrderDate <= "2012-08-09"
ORDER BY OrderDate;  -- added for clarity

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

SELECT ProductName, Quantity FROM OrderDetail
JOIN Product ON OrderDetail.ProductId = Product.Id
WHERE OrderId = 10251
Order BY ProductName;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

SELECT 
"Order".Id  AS Order_Id, 
Customer.CompanyName As Customer_Company_Name,
Employee.LastName AS Employee_Last_Name 
FROM "Order"
Join Employee ON "Order".EmployeeId = Employee.Id
Join Customer ON "Order".CustomerId = Customer.Id;
