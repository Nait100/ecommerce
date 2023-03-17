/*Display all the order information having "Delivered" status

order_status, order_id, user_name, item_name, total_amount, total_qty

Note: total_qty = SUM(item_qty)*/

SELECT *, 
o.ordered_status
, o.order_id
, u.username, p.item_name, SUM (o.item_qty * p.item_price)
AS total_amount,
SUM (o.item_qty) AS total_qty,
FROM orders o
JOIN users u
ON o.user_id = u.user_id
JOIN products p
ON o.item_id = p.item_id
WHERE order_status = 'D'
GROUP BY u.username;