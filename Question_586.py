# Write your MySQL query statement below
with cte_num_of_orders as 
(select customer_number,count(order_number) as num_of_orders
from Orders
group by customer_number)

#
select customer_number from cte_num_of_orders 
where num_of_orders=(select max(num_of_orders) from cte_num_of_orders) 
