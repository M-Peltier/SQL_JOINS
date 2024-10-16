---Using the WHERE clause to filter rows with the value between two values
---The following statement finds the products with list prices between 1,899 and 1,999.99:
SELECT
    product_id,
    product_name,
    category_id,
    model_year,
    list_price
FROM
    production.products
WHERE
    list_price BETWEEN 1899.00 AND 1999.99
ORDER BY
    list_price DESC;
---Using the WHERE clause to filter rows that have a value in a list of values
---The following example uses the IN operator to find products with a list price of 299.99, 466.99, or 489.99.
SELECT
    product_id,
    product_name,
    category_id,
    model_year,
    list_price
FROM
    production.products
WHERE
    list_price IN (299.99, 369.99, 489.99)
ORDER BY
    list_price DESC;
