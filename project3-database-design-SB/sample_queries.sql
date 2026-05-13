-- Q1: Looking at all items on the menu priced at $13.00 or more.

SELECT Menu_Item_ID, Menu_Item_Name, Category, Menu_Item_Price
FROM Menu_Item
WHERE Menu_Item_Price >= 13.00
ORDER BY Menu_Item_Price DESC;

-- Q2: Looking at items priced at $13.00 or more and how many times they were ordered.
SELECT 
    mi.Menu_Item_ID,
    mi.Menu_Item_Name,
    mi.Category,
    mi.Menu_Item_Price,
    COUNT(ol.Order_Line_ID) AS Times_Ordered
FROM Menu_Item mi
LEFT OUTER JOIN Order_Line ol
    ON mi.Menu_Item_ID = ol.Menu_Item_ID
WHERE mi.Menu_Item_Price >= 13.00
GROUP BY 
    mi.Menu_Item_ID,
    mi.Menu_Item_Name,
    mi.Category,
    mi.Menu_Item_Price
ORDER BY Times_Ordered DESC, mi.Menu_Item_Price DESC;

-- Q3: Customer(s) with the most frequent orders and how many times they have ordered
SELECT 
    c.Customer_ID,
    CONCAT(c.First_Name, ' ', c.Last_Name) AS Customer_Name,
    COUNT(o.Order_ID) AS Total_Orders
FROM Customer c
JOIN Orders o
    ON c.Customer_ID = o.Customer_ID
GROUP BY 
    c.Customer_ID,
    c.First_Name,
    c.Last_Name
HAVING COUNT(o.Order_ID) = (
    SELECT MAX(Order_Count)
    FROM (
        SELECT Customer_ID, COUNT(*) AS Order_Count
        FROM Orders
        GROUP BY Customer_ID
    ) AS Customer_Order_Counts
)
ORDER BY Customer_Name;

-- Q4: The item that earns the most money in revenue
SELECT 
    mi.Menu_Item_ID,
    mi.Menu_Item_Name,
    mi.Category,
    mi.Menu_Item_Price,
    SUM(ol.Quantity) AS Total_Quantity_Sold,
    SUM(ol.Item_Subtotal) AS Total_Revenue
FROM Menu_Item mi
JOIN Order_Line ol
    ON mi.Menu_Item_ID = ol.Menu_Item_ID
GROUP BY 
    mi.Menu_Item_ID,
    mi.Menu_Item_Name,
    mi.Category,
    mi.Menu_Item_Price
ORDER BY Total_Revenue DESC
LIMIT 1;
