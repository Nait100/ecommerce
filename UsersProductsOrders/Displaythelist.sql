/*Display the list of order's Descriptive information:

order_id, date_ordered, username, item_name, total_amount

Note: total_amount = SUM(item_qty * item_price)*/

SELECT
o.order_id, o.date_ordered, u.username, p.item_name
SUM (o.item_qty * p.item_price) AS total_amount
FROM orders o
JOIN users u
ON o.user_id = u.user_id
JOIN products p
ON o.item_id = p.item_id
GROUP BY u.username;