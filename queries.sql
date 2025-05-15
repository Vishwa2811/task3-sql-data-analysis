-- Query 1: Count of Shipments by Mode
SELECT `Mode_of_Shipment`, COUNT(*) AS total_shipments
FROM `ESD`
GROUP BY `Mode_of_Shipment`;

-- Query 2: Average Customer Rating per Shipment Mode
SELECT `Mode_of_Shipment`, AVG(`Customer_rating`) AS avg_rating
FROM `ESD`
GROUP BY `Mode_of_Shipment`;

-- Query 3: Total Discount Offered per Warehouse Block
SELECT `Warehouse_block`, SUM(`Discount_offered`) AS total_discount
FROM `ESD`
GROUP BY `Warehouse_block`;

-- Query 4: Total Orders Delivered On Time vs Late
SELECT `Reached.on.Time_Y.N`, COUNT(*) AS order_count
FROM `ESD`
GROUP BY `Reached.on.Time_Y.N`;

-- Query 5: Top 5 Highest Cost Products
SELECT `ID`, `Cost_of_the_Product`
FROM `ESD`
ORDER BY `Cost_of_the_Product` DESC
LIMIT 5;

-- Query 6: Total Product Cost and Discount per Shipment Mode
SELECT `Mode_of_Shipment`,
       SUM(`Cost_of_the_Product`) AS total_cost,
       SUM(`Discount_offered`) AS total_discount
FROM `ESD`
GROUP BY `Mode_of_Shipment`;

-- Query 7: Number of Orders by Gender
SELECT `Gender`, COUNT(*) AS total_orders
FROM `ESD`
GROUP BY `Gender`;


