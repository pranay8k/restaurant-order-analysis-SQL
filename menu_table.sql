USE restaurant_db;

-- 1 view menu_items table.
SELECT 
    *
FROM
    menu_items;

-- 2 find number of items on menu
SELECT 
    COUNT(*) AS number_of_items
FROM
    menu_items;

-- 3 What are least and expensive items on menu
SELECT 
    *
FROM
    menu_items
ORDER BY price;

SELECT 
    *
FROM
    menu_items
ORDER BY price DESC

--  4 how many Italian dishes are on menu
SELECT 
    COUNT(*) as Total
FROM
    menu_items
WHERE
    category = 'Italian';

-- 5 what are least and expensive Italian dishes are on menu
SELECT 
    *
FROM
    menu_items
WHERE
    category = 'Italian'
ORDER BY price;

SELECT 
    *
FROM
    menu_items
WHERE
    category = 'Italian'
ORDER BY price DESC;
 
-- 6 how many dishes are in each category
SELECT 
    category, COUNT(menu_item_id) AS num_dishes
FROM
    menu_items
GROUP BY category;
--
-- 7 what is the Avg dish prices within each category ?

SELECT 
    category, AVG(price) AS Avg_price
FROM
    menu_items
GROUP BY category;
