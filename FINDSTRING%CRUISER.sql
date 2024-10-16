---Finding rows whose values contain a string
---The following example uses the LIKE operator to find products whose name contains the string Cruiser:
SELECT
    product_id,
    product_name,
    category_id,
    model_year,
    list_price
FROM
    production.products
WHERE
    product_name LIKE '%Cruiser%'
ORDER BY
    list_price;