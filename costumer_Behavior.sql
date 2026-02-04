-- Cleaning a dataset
-- 1. Identify Duplicate Rows
SELECT *, COUNT(*)
FROM salary.consumer_bh
GROUP BY 1, 2, 3, 4, 5, 6, 7, 8 ,9 ,10, 11, 12, 13 , 14 ,15 , 16 , 17 ,18   -- List all column names here
HAVING COUNT(*) > 1;
-- 2. Check for Missing (NULL) Values
SELECT 
    SUM(CASE WHEN Customer_ID IS NULL THEN 1 ELSE 0 END) AS missing_ids,
    SUM(CASE WHEN Age IS NULL THEN 1 ELSE 0 END) AS missing_age,
    SUM(CASE WHEN Purchase_Amount_USD IS NULL THEN 1 ELSE 0 END) AS missing_amounts
FROM salary.consumer_bh;
-- 3. Standardize Text (Trimming & Casing)

 ALTER TABLE salary.consumer_bh
CHANGE COLUMN `Customer ID` Customer_ID int ,
CHANGE COLUMN `Item Purchased` Item_Purchased text ,
CHANGE COLUMN `Purchase Amount (USD)` Purchase_Amount_USD int ,
CHANGE COLUMN `Review Rating` Review_Rating int ,
CHANGE COLUMN `Shipping Type` Shipping_Type text ,
CHANGE COLUMN `Discount Applied` Discount_Applied text ,
CHANGE COLUMN `Promo Code Used`Promo_Code_Used  text  ,
CHANGE COLUMN `Previous Purchases` Previous_Purchases int ,
CHANGE COLUMN `Payment Method` Payment_Method text ,
CHANGE COLUMN `Frequency of Purchases`Frequency_of_Purchases  text ,
CHANGE COLUMN `Subscription Status` Subscription_Status text ;
-- 4. Sanity Check (Logical Outliers)
SELECT * FROM salary.consumer_bh
WHERE Age > 100
   OR Age < 12
   OR Purchase_Amount_USD <= 0;
   
-- 5.Quick Scan
SELECT 'Category' as column_name, Category as value, COUNT(*) as count FROM salary.consumer_bh GROUP BY Category
UNION ALL
SELECT 'Gender', Gender, COUNT(*) FROM salary.consumer_bh GROUP BY Gender
UNION ALL
SELECT 'Subscription', Subscription_Status, COUNT(*) FROM salary.consumer_bh GROUP BY Subscription_Status;

-- Customer Demographics & Behavior

-- Q1 What is the age distribution of our customers, and which age group spends the most on purchases?
SELECT 
    CASE 
        WHEN Age BETWEEN 18 AND 24 THEN '18-24'
        WHEN Age BETWEEN 25 AND 34 THEN '25-34'
        WHEN Age BETWEEN 35 AND 44 THEN '35-44'
        WHEN Age BETWEEN 45 AND 54 THEN '45-54'
        WHEN Age BETWEEN 55 AND 64 THEN '55-64'
        ELSE '65+' 
    END AS Age_Group,
    COUNT(*) AS Total_Customers,
    SUM(Purchase_Amount_USD) AS Total_Revenue,
    ROUND(AVG(Purchase_Amount_USD), 2) AS Avg_Spend_Per_Customer_usd
FROM salary.consumer_bh
GROUP BY Age_Group
ORDER BY Total_Revenue DESC;

-- Q2 How does gender affect purchase behavior in terms of average purchase amount, item categories, or frequency?
 -- 2.1  Average Spend & Total Volume
 SELECT 
    Gender, 
    COUNT(*) AS Total_Orders,
    ROUND(AVG(Purchase_Amount_USD), 2) AS Avg_Transaction_Value_usd,
    SUM(Purchase_Amount_USD) AS Total_Revenue
FROM salary.consumer_bh
GROUP BY Gender;
-- 2.2 Item Categories by Gender
SELECT 
    Gender, 
    Category, 
    COUNT(*) AS Number_of_Purchases,
    ROUND(SUM(Purchase_Amount_USD), 2) AS Category_Revenue
FROM salary.consumer_bh
GROUP BY Gender, Category
ORDER BY Gender, Number_of_Purchases DESC;
-- 2.3  Purchase Frequency Breakdown
SELECT 
    Gender, 
    Frequency_of_Purchases, 
    COUNT(*) AS Count
FROM salary.consumer_bh
GROUP BY Gender, Frequency_of_Purchases
ORDER BY Gender, Count DESC;

-- Q3 Which geographical locations generate the highest revenue and which have the most frequent shoppers?
SELECT 
    Location, 
    COUNT(*) AS Total_Orders,
    SUM(Purchase_Amount_USD) AS Total_Revenue,
    ROUND(AVG(Purchase_Amount_USD), 2) AS Avg_Order_Value,
    -- This calculates the "Density" of frequent shoppers in that area
    COUNT(CASE WHEN Frequency_of_Purchases IN ('Weekly', 'Bi-Weekly', 'Fortnightly') THEN 1 END) AS High_Frequency_Shoppers
FROM salary.consumer_bh
GROUP BY Location
ORDER BY Total_Revenue DESC;

-- Product & Category Analysis
--  Consumer Behaviour Dataset
-- Q4 What are the top-selling products and top-performing categories?
-- 4.1 Top-Performing Categories (By Revenue)
SELECT 
    Category, 
    COUNT(*) AS Total_Units_Sold,
    SUM(Purchase_Amount_USD) AS Total_Revenue,
    ROUND(AVG(Purchase_Amount_USD), 2) AS Avg_Unit_Price
FROM salary.consumer_bh
GROUP BY Category
ORDER BY Total_Revenue DESC;
-- 4.2 Top-Selling Products (By Volume)
SELECT 
    Item_Purchased, 
    Category,
    COUNT(*) AS Units_Sold,
    SUM(Purchase_Amount_USD) AS Total_Revenue
FROM salary.consumer_bh
GROUP BY Item_Purchased, Category
ORDER BY Units_Sold DESC
LIMIT 10;
-- 4.3 The "Product Stars" (Highest Rated & Best Selling)
SELECT 
    Item_Purchased, 
    COUNT(*) AS Units_Sold,
    ROUND(AVG(Review_Rating), 2) AS Average_Rating
FROM salary.consumer_bh
GROUP BY Item_Purchased
HAVING COUNT(*) > 100 -- Filters for items with enough data to be significant
ORDER BY Average_Rating DESC, Units_Sold DESC
LIMIT 10;

-- Q5 How does the season affect product sales? (e.g., summer vs winter purchases)
-- 5.1  Overall Seasonal Performance
SELECT 
    Season, 
    COUNT(*) AS Total_Orders,
    SUM(Purchase_Amount_USD) AS Total_Revenue,
    ROUND(AVG(Purchase_Amount_USD), 2) AS Avg_Spend_Per_Order_usd 
FROM salary.consumer_bh
GROUP BY Season
ORDER BY Total_Revenue DESC;
-- 5.2 Category Performance by Season (The "Seasonal Deep Dive")
SELECT 
    Season, 
    Category, 
    COUNT(*) AS Units_Sold,
    SUM(Purchase_Amount_USD) AS Revenue
FROM salary.consumer_bh
GROUP BY Season, Category
ORDER BY Season, Revenue DESC;

-- Q6 Are certain colors or sizes more popular than others for specific categories?
SELECT 
    Category, 
    Color, 
    Size, 
    COUNT(*) AS Units_Sold,
    SUM(Purchase_Amount_USD) AS Total_Revenue,
    RANK() OVER (PARTITION BY Category ORDER BY COUNT(*) DESC) AS Popularity_Rank
FROM salary.consumer_bh
GROUP BY Category, Color, Size
ORDER BY  Popularity_Rank ASC;

-- Purchase Patterns
-- Q7 How does purchase frequency (monthly, bi-weekly, annually) relate to the total spending of a customer?
SELECT 
    Frequency_of_Purchases, 
    COUNT(*) AS Number_of_Customers,
    ROUND(AVG(Purchase_Amount_USD), 2) AS Avg_Transaction_Amount,
    SUM(Purchase_Amount_USD) AS Total_Revenue
FROM salary.consumer_bh
GROUP BY Frequency_of_Purchases
ORDER BY Total_Revenue DESC;
-- Q8 Is there a correlation between previous purchases and current purchase amount?
SELECT 
    CASE 
        WHEN Previous_Purchases = 0 THEN 'New Customer'
        WHEN Previous_Purchases BETWEEN 1 AND 10 THEN 'Occasional (1-10)'
        WHEN Previous_Purchases BETWEEN 11 AND 30 THEN 'Regular (11-30)'
        ELSE 'Loyalist (30+)' 
    END AS Loyalty_Level,
    COUNT(*) AS Customer_Count,
    ROUND(AVG(Purchase_Amount_USD), 2) AS Avg_Current_Spend
FROM salary.consumer_bh
GROUP BY Loyalty_Level
ORDER BY Avg_Current_Spend DESC;
-- Q9 Do subscribed customers spend more or purchase more frequently than non-subscribed customers?
SELECT 
    Subscription_Status, 
    COUNT(*) AS Total_Customers,
    ROUND(AVG(Purchase_Amount_USD), 2) AS Avg_Spend,
    SUM(Purchase_Amount_USD) AS Total_Revenue
FROM salary.consumer_bh
GROUP BY Subscription_Status;
-- Promotions & Discounts

-- Q10 How effective are discounts or promo codes in increasing purchase amounts or frequency?
SELECT 
    Promo_Code_Used, 
    Discount_Applied,
    COUNT(*) AS Total_Transactions,
    ROUND(AVG(Purchase_Amount_USD), 2) AS Avg_Spend,
    -- Checking if promos lead to higher frequency
    ROUND(AVG(Previous_Purchases), 1) AS Avg_Past_Loyalty
FROM salary.consumer_bh
GROUP BY Promo_Code_Used, Discount_Applied;
-- Q11 Do certain payment methods correlate with higher purchase amounts or repeated purchases?
SELECT 
    Payment_Method, 
    COUNT(*) AS Usage_Count,
    ROUND(AVG(Purchase_Amount_USD), 2) AS Avg_Transaction_Value,
    SUM(Purchase_Amount_USD) AS Total_Revenue
FROM salary.consumer_bh
GROUP BY Payment_Method
ORDER BY Avg_Transaction_Value DESC;
-- Q12 Are customers who use free shipping or faster shipping options spending more on average?
SELECT 
    Shipping_Type, 
    COUNT(*) AS Order_Volume,
    ROUND(AVG(Purchase_Amount_USD), 2) AS Avg_Order_Value,
    ROUND(AVG(Review_Rating), 2) AS Customer_Satisfaction
FROM salary.consumer_bh
GROUP BY Shipping_Type
ORDER BY Avg_Order_Value DESC;
-- Customer Feedback & Engagement

-- Q13 How does review rating correlate with repeat purchases or purchase amount?
SELECT 
    Review_Rating, 
    COUNT(*) AS Total_Orders,
    ROUND(AVG(Purchase_Amount_USD), 2) AS Avg_Spend,
    ROUND(AVG(Previous_Purchases), 1) AS Avg_Loyalty_Score
FROM salary.consumer_bh
GROUP BY Review_Rating
ORDER BY Review_Rating DESC;
-- Q14 Are there particular products or categories that consistently receive low or high ratings?
SELECT 
    Category, 
    Item_Purchased,
    COUNT(*) AS Times_Purchased,
    ROUND(AVG(Review_Rating), 2) AS Avg_Rating
FROM salary.consumer_bh
GROUP BY Category, Item_Purchased
HAVING COUNT(*) > 50 -- Ensures we only look at products with enough data
ORDER BY Avg_Rating DESC; -- Flip to ASC to see the lowest rated products
-- Q15 Can we predict the likelihood of a customer making a repeat purchase based on their first purchase behavior, subscription status, and purchase amount?
SELECT 
    CASE 
        WHEN Subscription_Status = 'Yes' AND Previous_Purchases > 10 THEN 'High Likelihood (VIPs)'
        WHEN Subscription_Status = 'Yes' OR Previous_Purchases > 5 THEN 'Medium Likelihood (Loyalists)'
        ELSE 'Low Likelihood (New/Inactive)' 
    END AS Predictor_Group,
    COUNT(*) AS Total_Customers,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER(), 2) AS Percent_of_Total_Base,
    ROUND(AVG(Purchase_Amount_USD), 2) AS Avg_Ticket_Size
FROM salary.consumer_bh
GROUP BY 1
ORDER BY Avg_Ticket_Size DESC;