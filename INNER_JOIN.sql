---inner join  
--- The SELECT statement is used to specify which columns you want 
---to retrieve from the database. In this case, you're selecting four columns
SELECT
    product_name,
    category_name,
    brand_name,
    list_price
FROM
    production.products p ---production.products: The products table exists in the production schema. 
						  --- p is an alias for the products table, allowing you to reference it as p in the rest of the query.
INNER JOIN production.categories c ON c.category_id = p.category_id
---INNER JOIN means that only rows that have matching values in both tables will be included in the result.
---production.categories: This refers to the categories table in the production schema.
---c: This is an alias for the categories table.
---ON c.category_id = p.category_id: This specifies the condition for the join, where the 
---category_id from the categories table (c.category_id) must match the category_id in the products table (p.category_id).
INNER JOIN production.brands b ON b.brand_id = p.brand_id
---production.brands: The brands table exists in the production schema. b: This is an alias for the brands table.
---ON b.brand_id = p.brand_id: This condition specifies that the brand_id from the brands table 
---(b.brand_id) must match the brand_id in the products table (p.brand_id).
---Together with the previous INNER JOIN, this query effectively pulls data from three tables: products, categories, and brands.
ORDER BY
    product_name DESC;
	---The ORDER BY clause is used to sort the results.
	---product_name: The results will be ordered by the product_name column.
	---DESC: This specifies descending order, meaning the products will be listed from Z to A.