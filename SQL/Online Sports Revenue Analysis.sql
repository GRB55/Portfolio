/*
First view of the data
*/
SELECT 
b.product_id,
b.brand, 
f.listing_price,
f.sale_price, 
f.discount, 
f.revenue, 
i.product_name, 
i.description, 
r.rating,
r.reviews
FROM brands b
JOIN finance f
ON b.product_id = f.product_id
JOIN info i
ON f.product_id = i.product_id
JOIN reviews r
ON i.product_id = r.product_id;
/*
Data Cleaning
*/
-- Valores nulos
SELECT
b.brand,
f.listing_price,
f.sale_price,
f.discount,
f.revenue,
i.product_name,
i.description,
r.rating,
r.reviews
FROM brands b
JOIN finance f
ON b.product_id = f.product_id
JOIN info i
ON f.product_id = i.product_id
JOIN reviews r
ON i.product_id = r.product_id
WHERE listing_price IS NULL;
-- Todos los atributos son nulos por lo que eliminamos los NA
DELETE brands
FROM brands b
JOIN finance f
ON b.product_id = f.product_id
JOIN info i
ON f.product_id = i.product_id
JOIN reviews r
ON i.product_id = r.product_id
WHERE listing_price IS NULL;
/*
EDA (Exploratory Data Analysis)
*/
SELECT 
COUNT(DISTINCT b.brand) AS Total_Brands, 
COUNT(DISTINCT i.product_name) AS Total_Products,
ROUND(AVG(f.listing_price),2) AS Avg_Listing_Price,
ROUND(AVG(f.sale_price),2) AS Avg_Sale_Price,
ROUND(AVG(f.discount),2) AS Avg_Discount,
ROUND(AVG(f.revenue),2) AS Avg_Revenue,
ROUND(AVG(r.rating),2) AS Avg_Rating,
SUM(r.reviews) AS Total_Reviews
FROM brands b
JOIN info i
ON b.product_id = i.product_id
JOIN finance f
ON i.product_id = f.product_id
JOIN reviews r
ON f.product_id = r.product_id;
-- Data distribution by brand
SELECT 
brand AS Brand,
COUNT(DISTINCT i.product_name) AS Total_Products,
ROUND(AVG(f.listing_price),2) AS Avg_Listing_Price,
ROUND(AVG(f.sale_price),2) AS Avg_Sale_Price,
ROUND(AVG(f.discount),2) AS Avg_Discount,
ROUND(AVG(f.revenue),2) AS Avg_Revenue,
ROUND(AVG(r.rating),2) AS Avg_Rating,
SUM(r.reviews) AS Total_Reviews
FROM brands b
JOIN info i
ON b.product_id = i.product_id
JOIN finance f
ON i.product_id = f.product_id
JOIN reviews r
ON f.product_id = r.product_id
GROUP BY brand;
-- Data distribution by product
SELECT 
product_name AS Product_Name,
ROUND(AVG(f.listing_price),2) AS Avg_Listing_Price,
ROUND(AVG(f.sale_price),2) AS Avg_Sale_Price,
ROUND(AVG(f.discount),2) AS Avg_Discount,
ROUND(AVG(f.revenue),2) AS Avg_Revenue,
ROUND(AVG(r.rating),2) AS Avg_Rating,
SUM(r.reviews) AS Total_Reviews
FROM info i
JOIN brands b
ON i.product_id = b.product_id
JOIN finance f
ON i.product_id = f.product_id
JOIN reviews r
ON f.product_id = r.product_id
GROUP BY product_name
ORDER BY Avg_Revenue DESC;
/*
Data analysis
*/
-- Top 10 most profitable products
SELECT TOP 10 
i.product_name AS Product_Name,
SUM(f.revenue) AS Total_Revenue
FROM info i
JOIN finance f
ON i.product_id = f.product_id
GROUP BY i.product_name
ORDER BY Total_Revenue DESC;
-- Top 10 most expensive products
SELECT TOP 10
i.product_name AS Product_Name,
f.sale_price AS Sale_Price
FROM info i
JOIN finance f
ON i.product_id = f.product_id
GROUP BY i.product_name, f.sale_price
ORDER BY f.sale_price DESC;
-- Top 15 best rated products
SELECT TOP 15
i.product_name AS Product_Name,
r.rating AS Rating
FROM info i
JOIN reviews r
ON i.product_id = r.product_id
GROUP BY i.product_name, r.rating
ORDER BY Rating DESC;
-- Top 10 most reviewed products
SELECT TOP 10
i.product_name AS Product_Name,
r.reviews AS Total_Reviews
FROM info i
JOIN reviews r
ON i.product_id = r.product_id
GROUP BY i.product_name, r.reviews
ORDER BY Total_Reviews DESC;
-- Top 10 most sold products
SELECT TOP 10
product_name AS Product_Name,
COUNT(product_name) AS Total_Quantity
FROM info
GROUP BY product_name
ORDER BY Total_Quantity DESC;
-- Top 10 biggest discounts
SELECT TOP 10
i.product_name AS Product_Name,
f.discount AS Discount
FROM info i
JOIN finance f
ON i.product_id = f.product_id
GROUP BY i.product_name, f.discount
ORDER BY Discount DESC;
-- Top 10 longest descriptions
SELECT TOP 10
product_name AS Product_Name,
description AS Description,
LEN(description) AS Description_Length
FROM info
GROUP BY product_name, description
ORDER BY Description_Length DESC;
-- Revenue by discounts
SELECT TOP 10 
i.product_name AS Product_Name,
f.discount AS Discount,
SUM(f.revenue) AS Total_Revenue
FROM info i
JOIN finance f
ON i.product_id = f.product_id
GROUP BY i.product_name, f.discount
ORDER BY Total_Revenue DESC;
-- Revenue by reviews
SELECT TOP 10 
i.product_name AS Product_Name,
SUM(r.reviews) AS Total_Reviews,
SUM(f.revenue) AS Total_Revenue
FROM info i
JOIN finance f
ON i.product_id = f.product_id
JOIN reviews r
ON f.product_id = r.product_id
GROUP BY i.product_name
ORDER BY Total_Revenue DESC;
-- Revenue by description length
SELECT TOP 10 
i.product_name AS Product_Name,
LEN(i.description) AS Description_Length,
SUM(f.revenue) AS Total_Revenue
FROM info i
JOIN finance f
ON i.product_id = f.product_id
JOIN reviews r
ON f.product_id = r.product_id
GROUP BY i.product_name, i.description
ORDER BY Total_Revenue DESC;