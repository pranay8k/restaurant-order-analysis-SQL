-- 1. View the order_details table.
Select * from order_details;

-- 2. What is the date range of the table?
SELECT 
    MIN(order_date)as Start, MAX(order_date)as End
FROM
    order_details;

-- 3. How many orders were made within this date range?
SELECT 
    count(distinct order_id)as Orders
FROM
    order_details;

-- 4. How many items were ordered within this date range?
SELECT 
    order_id, COUNT(item_id) AS no_items
FROM
    order_details
GROUP BY order_id;
-- 5. Which orders had the most number of items?
SELECT 
    order_id, COUNT(item_id) AS no_items
FROM
    order_details
GROUP BY order_id
order by no_items desc;

-- 6. How many orders had more than 12 items?
select count(*) as orders from (SELECT 
    order_id, COUNT(item_id) AS no_items
FROM
    order_details
GROUP BY order_id
having no_items > 12) as num_orders;

