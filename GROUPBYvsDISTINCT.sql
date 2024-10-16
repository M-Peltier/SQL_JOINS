---The following statement uses the GROUP BY clause to return distinct cities together 
---with state and zip code from the sales.customers table:
SELECT 
  city, 
  state, 
  zip_code 
FROM 
  sales.customers 
GROUP BY 
  city, 
  state, 
  zip_code 
ORDER BY 
  city, 
  state, 
  zip_code
  ---It is equivalent to the following query that uses the DISTINCT operator :
  SELECT 
  DISTINCT city, state, zip_code 
FROM 
  sales.customers;