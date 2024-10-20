--Find customers from the city 'Paris'.
SELECT customerName,city from customers
where city='Paris';

--List product names and their buy prices.
SELECT productName,buyPrice FROM products;

--List employees who work in 'San Francisco' office.
SELECT firstName, lastName FROM employees WHERE officeCode = (SELECT officeCode FROM offices WHERE city = 'San Francisco');

--Select customer name from customer, Sort by customer name#
SELECT customerName FROM customers
order by customerName asc;

--List each of the different status that an order may be in
SELECT distinct status FROM orders;

--List firstname and lastname for each employee, Sort by lastname then firstname
SELECT firstName,lastName FROM employees
order by lastName , firstName;

--List all the employee job titles
SELECT distinct jobTitle FROM employees;

--List all products along with their product scale
SELECT productName,productScale FROM products;

--List all the territories where we have Offices
select distinct territory from offices;

--select contact firstname, contact lastname and credit limit for all Customers where credit limit > 30000
SELECT contactFirstName,contactLastName,creditLimit FROM customers
where creditLimit > 30000;

--List all Offices not in the USA (4)
SELECT officecode FROM Offices
WHERE country!='USA';

--List Orders made between June 16, 2014 and July 7, 2014 (8)
SELECT ordernumber FROM Orders
WHERE orderdate BETWEEN '2003-06-01' AND '2004-06-01';
-- we can write same query using (<,>)
SELECT ordernumber FROM orders
WHERE orderdate >= '2003-06-01' AND orderdate <='2004-06-01';