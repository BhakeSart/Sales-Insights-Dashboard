SELECT count(*) FROM sales.transactions;
SELECT count(*) FROM sales.customers;

-- 1. Show transactions only for Chennai market
SELECT * FROM sales.transactions limit 5;
SELECT * FROM sales.transactions where market_code="Mark001" ;
SELECT * FROM sales.transactions where currency="USD" ;

-- 2. Show transactions in 2020 join by date table
SELECT sales.transactions.* , sales.date.* FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date where sales.date.year=2020;

-- 3. Total revenue in 2020
SELECT SUM(sales.transactions.sales_amount) FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date where sales.date.year=2020;
