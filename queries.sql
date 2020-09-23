-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT ProductName, CategoryName FROM Product
JOIN Category
ON Product.CategoryId = Category.Id
-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT Id, ShipName FROM [ORDER]
-- cant figure out the "after this date portion"
-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT  ProductName,Quantity FROM [OrderDetail]
JOIN PRODUCT
ON OrderDetail.ProductId = PRODUCT.Id
WHERE OrderId = 10251
-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT  Id, CompanyName, LastName  FROM [Order]
JOIN Customer    
Join Employee
ON [ORDER].EmployeeId = Employee.Id AND [ORDER].CustomerId = CUSTOMER.Id