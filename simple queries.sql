--Find customers from the city 'Paris'.
SELECT customerName,city from customers
where city='Paris';

--List product names and their buy prices.
SELECT productName,buyPrice FROM classicmodels.products;

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