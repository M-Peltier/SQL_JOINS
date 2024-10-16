SELECT
    product_name,
    order_id
FROM
    production.products p
LEFT JOIN sales.order_items o ON o.product_id = p.product_id
WHERE order_id IS NULL--indicates only items not sold
---ORDER BY---all items includine nulls
    ---order_id;
---SQL Server processes the WHERE clause after the LEFT JOIN clause.
