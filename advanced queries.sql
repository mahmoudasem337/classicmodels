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

--Identify customers who ordered products worth more than $10,000.
SELECT customerNumber, SUM(quantityOrdered * priceEach) AS total
FROM orders
JOIN orderdetails ON orders.orderNumber=orderdetails.orderNumber
GROUP BY customerNumber
HAVING totalValue > 10000;

--Retrieve the top 5 most expensive products sold.
SELECT productCode, priceEach
FROM orderdetails
ORDER BY priceEach DESC
LIMIT 5;

--Find products not ordered by any customer.
SELECT productCode, productName
FROM products
WHERE productCode NOT IN (SELECT DISTINCT productCode FROM orderdetails);
--Same query using join
SELECT p.productCode, p.productName
FROM products p
LEFT JOIN orderdetails od ON p.productCode = od.productCode
WHERE od.productCode IS NULL;

--List products sold in the highest quantities.
SELECT productCode, SUM(quantityOrdered) AS totalQuantity
FROM orderdetails
GROUP BY productCode
ORDER BY totalQuantity DESC;

--List employees who work in offices outside of the USA.
SELECT employeeNumber, firstName, lastName, o.city, o.country
FROM employees
JOIN offices o ON employees.officeCode = o.officeCode
WHERE o.country not in
(SELECT o.country
FROM offices o
WHERE o.country = 'USA'
);
--same query in simple way
SELECT employeeNumber, firstName, lastName, o.city, o.country
FROM employees
JOIN offices o ON employees.officeCode = o.officeCode
WHERE o.country != 'USA';

--List orders that include products from multiple product lines.
SELECT orderNumber , COUNT(DISTINCT productLine) as total
FROM orderdetails join products on orderdetails.productCode=products.productCode
group by orderNumber
having total>1