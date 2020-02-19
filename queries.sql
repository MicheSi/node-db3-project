-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

SELECT p.productname, c.categoryname
FROM product as p
INNER JOIN category as c ON p.categoryid = c.id

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

SELECT o.id, o.orderDate, s.companyName
FROM [order] as o
INNER JOIN [shipper] as s ON o.shipVia = s.Id
WHERE o.orderDate < '2012-08-09'
ORDER BY o.orderDate ASC

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

SELECT p.productName, o.quantity
FROM [orderDetail] as o
INNER JOIN [product] as p ON o.productid = p.id
WHERE o.orderId = '10251'
ORDER BY p.productName

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

SELECT o.id, c.companyName, e.lastname
FROM [order] as o
INNER JOIN [customer] as c ON o.customerId = c.id
INNER JOIN [employee] as e ON o.employeeId = e.id