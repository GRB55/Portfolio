-- Primera vista del dataset
SELECT
COUNT(Order_ID) AS Order_Quantity,
MIN(Order_Date) AS First_Sale,
MAX(Order_Date) AS Last_Sale,
COUNT(DISTINCT Customer_Name) AS Unique_Clients,
COUNT(DISTINCT Country) AS Countries_Quantity,
COUNT(DISTINCT Category) AS Categories_Quantity,
COUNT(DISTINCT Product_Name) AS Products_Quantity,
SUM(Sales) AS Total_Sales,
SUM(Quantity) AS Total_Quantity_Sold,
AVG(Discount) AS AVG_Discount,
AVG(Profit) AS AVG_Profit
FROM SuperStoreOrdersDataset;

/*
Sales Performance Analysis / Análisis de performance de ventas
1. Identify the top selling products and categories / Identificar los productos y categorias más vendidas
2. Analyze sales trends over the years and highlight any significant patterns / Analizar las tendencias de ventas a través de los años y remarcar algún patrón significante
*/
-- 1.
SELECT TOP 10 
product_name AS Product_Name, 
SUM(sales) AS Total_Sales
FROM SuperStoreOrdersDataset
GROUP BY product_name
ORDER BY Total_Sales DESC;

SELECT 
category AS Category, 
SUM(sales) AS Total_Sales
FROM SuperStoreOrdersDataset
GROUP BY category
ORDER BY Total_Sales DESC;

SELECT TOP 10 
product_name AS Product_Name, 
category AS Category, SUM(sales) AS Total_Sales
FROM SuperStoreOrdersDataset
GROUP BY product_name, category
ORDER BY Total_Sales DESC;

-- 2.
SELECT 
YEAR(order_date) AS Year, 
SUM(sales) AS Total_Sales
FROM SuperStoreOrdersDataset
GROUP BY YEAR(order_date)
ORDER BY Total_Sales;

/*
Customer Segmentation / Segmentación de clientes
3. Segment customers based on their purchasing behavior / Segmentar los clientes en base a su comportamiento/conducta de compra
4. Understand which segments contribute most to the sales / Entender que segmento contribuye más a las ventas
*/
-- 3.
SELECT 
segment AS Segment,
COUNT(DISTINCT customer_name) AS Total_Customers, 
SUM(sales) AS Total_Sales, 
(SUM(sales)/COUNT(DISTINCT customer_name)) AS Avg_Sales,
COUNT(product_name) AS Total_Products,
COUNT(DISTINCT product_name) AS Unique_Products,
COUNT(DISTINCT order_id) AS Total_Orders
FROM SuperStoreOrdersDataset
GROUP BY segment
ORDER BY Total_Sales DESC;

-- 4. Mostly, consumers are the most contributive to sales / En general los consumidores son los que más contribuyen a las ventas.

/*
Shipping and Order Management
5. Evaluate the efficiency of different shipping modes / Evaluar la eficiencia de los diferentes modos de envío
6. Analyze shipping costs and their impact on overall profitability / Analizar los costes de envío y su impacto en las ganancias generales
7. Assess order processing times and identify areas for improvement / Evaluar los tiempos de procesamiento de las ordenes/pedidos e identificar áreas a mejorar
*/
--
SELECT 
ship_mode AS Ship_Mode, 
AVG(shipping_cost) AS Avg_Shipping_Cost,
AVG(profit) AS Avg_Profit,
AVG(DATEDIFF(DAY, order_date, ship_date)) AS Avg_Shipping_Days
FROM SuperStoreOrdersDataset
GROUP BY ship_mode
ORDER BY Avg_Profit DESC;

/*
Profitability and Cost Analysis
8. Analyze profit margins for different product categories and sub-categories / Analizar los margenes de ganancia para las diferentes categorias y subcategorias
9. Evaluate the impact of discounts on overall profitability / Evaluar el impacto de los descuentos en las ganancias
*/
SELECT 
product_name AS Product_Name,
category AS Category,
sub_category AS Sub_Category,
SUM(profit) AS Total_Profit,
AVG(profit) AS Avg_Profit,
COUNT(discount) AS Given_Discounts,
AVG(discount) AS Avg_Discount
FROM SuperStoreOrdersDataset
GROUP BY product_name, category, sub_category
ORDER BY Total_Profit DESC;

SELECT 
category AS Category,
sub_category AS Sub_Category,
SUM(profit) AS Total_Profit
FROM SuperStoreOrdersDataset
GROUP BY category, sub_category
ORDER BY Total_Profit DESC;

SELECT 
market AS Market,
category AS Category,
SUM(profit) AS Total_Profit
FROM SuperStoreOrdersDataset
GROUP BY market, category
ORDER BY Total_Profit DESC;

/*
Global Sales and Product Quantity Overview / Vista general de las ventas globales
10. Analyze the distribution of sales across different countries / Analizar la distribución de ventas en los diferentes países
11. Identify the most sold products in each country / Identificar los productos más vendidos en cada país
*/
SELECT
country AS Country,
market AS Market,
SUM(sales) AS Total_Sales,
SUM(quantity) AS Quantity_Sold
FROM SuperStoreOrdersDataset
GROUP BY country, market
ORDER BY Total_Sales DESC;

SELECT
country AS Country,
product_name AS Product_Name,
Total_Sales
FROM (SELECT country,
			product_name,
			SUM(sales) AS Total_Sales,
			ROW_NUMBER() OVER (PARTITION BY country ORDER BY SUM(sales) DESC) AS Top_N
	FROM SuperStoreOrdersDataset
	GROUP BY country, product_name
) AS subq
WHERE Top_N <=3
ORDER BY Total_Sales DESC;

/*
State-Level Analysis / Análisis a nivel estatal
12. Understand the most used product categories in different states / Entender las categorias más vendidas en los diferentes estados
*/
SELECT
country AS Country,
state AS State,
category AS Category,
SUM(sales) AS Total_Sales,
SUM(quantity) AS Quantity_Sold
FROM SuperStoreOrdersDataset
GROUP BY country, state, category
ORDER BY Quantity_Sold DESC;

SELECT
country AS Country,
state AS State,
category AS Category,
sub_category AS Sub_Category,
SUM(sales) AS Total_Sales,
SUM(quantity) AS Quantity_Sold
FROM SuperStoreOrdersDataset
GROUP BY country, state, category, sub_category
ORDER BY Quantity_Sold DESC;

/*
Region-Level Analysis / Análisis a nivel regional
13. Analyze the popularity of sub-categories in different regions / Analizar la popularidad de las subcategorias en las diferentes regiones
*/
SELECT
region AS Region,
sub_category AS Sub_Category,
SUM(sales) AS Total_Sales,
SUM(quantity) AS Quantity_Sold
FROM SuperStoreOrdersDataset
GROUP BY region, sub_category
ORDER BY Quantity_Sold DESC;