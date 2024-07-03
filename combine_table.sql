-- 1 Combine the menu_items and order_details tables into a single table.
Select * from menu_items;
select * from order_details;

create table single_table as
select * from order_details od left join menu_items mi
on od.item_id = mi.menu_item_id;
select * from single_table;
-- 2 What were the least and most ordered items? What categories were they in?
SELECT 
    item_name, category, COUNT(order_details_id) AS purchase_no
FROM
    single_table
GROUP BY item_name , category
ORDER BY purchase_no DESC;
SELECT 
    item_name, category, COUNT(order_details_id) AS purchase_no
FROM
    single_table
GROUP BY item_name , category
ORDER BY purchase_no ;
-- 3 What were the top 5 orders that spent the most money?
select order_id,sum(price) as total_money from single_table
group by order_id
order by total_money desc
limit 5;
-- 4 View the details of the highest spend order. What insights can you gather from the results?
SELECT 
    category, COUNT(item_id) AS spend_order
FROM
    single_table
WHERE
    order_id = 440
GROUP BY category
ORDER BY spend_order DESC;

-- 5 View the details of the top 5 highest spend orders. What insights can you gather from the results?
SELECT 
    order_id, category, COUNT(item_id) AS spend_order
FROM
    single_table
WHERE
    order_id IN (440 , 2075, 1957, 330, 2675)
GROUP BY category , order_id;
