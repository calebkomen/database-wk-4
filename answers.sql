-- Question 1
-- Write an SQL query to show the total payment amount for each payment date from payments table.

-- Display the payment date and the total amount paid on that date.
-- Sort the results by payment date in descending order.
-- Show only the top 5 latest payment dates.
SELECT  top 5 payment_date, SUM(amount) AS total_amount
FROM payments
GROUP BY payment_date
ORDER BY payment_date DESC

-- Question 2
-- Write an SQL query to find the average credit limit of each customer from customers table.

-- Display the customer name, country, and the average credit limit.
-- Group the results by customer name and country.

SELECT customer_name, country, AVG(credit_limit) AS average_credit_limit
FROM customers
GROUP BY customer_name, country
ORDER BY customer_name
-- Question 3
-- Write an SQL query to find the total price of products ordered from orderdetails table.

-- Display the product code, quantity ordered, and the total price for each product.
-- Group the results by product code and quantity ordered.
SELECT product_code, quantity_ordered, SUM(price_each * quantity_ordered) AS total_price
FROM orderdetails
GROUP BY product_code, quantity_ordered
ORDER BY product_code   
-- Question 4
-- Write an SQL query to find the highest payment amount for each check number from payments table.

-- Display the check number and the highest amount paid for that check number.
-- Group the results by check number.
SELECT check_number, MAX(amount) AS highest_amount
FROM payments
GROUP BY check_number
ORDER BY check_number