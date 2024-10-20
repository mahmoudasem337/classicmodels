--Find customers with the highest total orders.
SELECT customerNumber, SUM(quantityOrdered * priceEach) AS totalSpent
FROM orders
JOIN orderdetails WHERE orders.orderNumber = orderdetails.orderNumber
GROUP BY customerNumber
ORDER BY totalSpent DESC

--List employees who manage the most employees.
SELECT e.employeeNumber, e.firstName, e.lastName, COUNT(m.employeeNumber) as total
FROM employees e
JOIN employees m ON e.employeeNumber=m.reportsTo
GROUP BY e.employeeNumber
ORDER BY total DESC;

--Get all customers who placed orders for more than 50 products.
SELECT customerNumber, COUNT(productCode) AS products
FROM orders as o
JOIN orderdetails as od ON o.orderNumber=od.orderNumber
GROUP BY customerNumber
HAVING products > 50;