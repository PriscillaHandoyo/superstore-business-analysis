-- Q1: Total profit and sales by region, ranked
-- Business reason: Helps leadership identify which regions are most and least efficient at generating profit, so they can decide where to focus sales resources.
SELECT Region,
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND(SUM(Sales), 2) AS total_sales
FROM superstore
GROUP BY Region
ORDER BY total_profit DESC;
-- Q2: Total profit and sales by category
-- Business reason: Helps leadership identify which product categories are most and least efficient at generating profit, so they can decide where to focus sales resources.
SELECT Category,
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND(SUM(Sales), 2) AS total_sales
FROM superstore
GROUP BY Category
ORDER BY total_profit DESC;
-- Q3: Which sub-categories are loss-making?
-- Business reason: Helps leadership identify which sub-categories are losing money, so they can decide whether to discontinue those products or find ways to make them profitable.
SELECT Category,
    `Sub-Category`,
    ROUND(SUM(Profit), 2) AS total_loss_profit
FROM superstore
GROUP BY `Sub-Category`
HAVING SUM(Profit) < 0
ORDER BY total_loss_profit ASC;
-- Q4: Average profit margin by category
-- Business reason: Helps leadership identify which categories have the highest and lowest profit margins, so they can decide where to focus efforts to improve profitablility.
SELECT Category,
    ROUND((SUM(Profit) / SUM(Sales)) * 100, 2) as average_profit_margin
FROM superstore
GROUP BY Category
ORDER BY average_profit_margin DESC;
-- Q5: How many orders have discounts above 40% and what is their total loss?
-- Business reason: Helps leadership understand the impact of high discounts on profitability, so they can decide whether to limit discount levels or find ways to mitigate losses from high-discount orders.
SELECT COUNT(*) AS total_order_disc_abv_40,
    ROUND(SUM(Profit), 2) AS total_loss_profit
FROM superstore
WHERE Discount > 0.4;
-- Q6: Sales and profit by customer segment
-- Business reason: Helps leadership identify which customer segments are most and least profitable, so they can decide whether to focus marketing efforts on high-profit segments or find ways to improve profitability in low-profit segments.
SELECT Segment,
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND(SUM(Sales), 2) AS total_sales
FROM superstore
GROUP BY Segment
ORDER BY total_profit DESC;
-- Q7: Top 10 most profitable individual products
-- Business reason: Helps leadership identify which specific products are generating the most profit, so they can decide whether to focus marketing efforts on those products or find ways to replicate their success with other products.
SELECT `Product Name`,
    Category,
    `Sub-Category`,
    ROUND(SUM(Profit), 2) AS total_profit
FROM superstore
Group BY `Product Name`
ORDER BY total_profit DESC
LIMIT 10;
-- Q8: Bottom 10 least profitable products
-- Business reason: Helps leadership identify which specific products are generating the least profit (or losses), so they can decide whether to discontinue those products or find ways to make them profitable.
SELECT `Product Name`,
    Category,
    `Sub-Category`,
    ROUND(SUM(Profit), 2) AS total_profit
FROM superstore
Group BY `Product Name`
ORDER BY total_profit ASC
LIMIT 10;
-- Q9: Year-on-year sales and profit totals
-- Business reason: Helps leadership understand overall business performance trends over time, so they can decide whether to focus on growth strategies or cost-cutting measures.
SELECT `Order Year`,
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND(SUM(Sales), 2) AS total_sales
FROM superstore
Group BY `Order Year`
ORDER BY `Order Year` ASC;
-- Q10: Which region + category combination is the most loss-making?
-- Business reason: Helps leadership identify specific region and category combinations that are losing money, so they can decide whether to discontinue those combinations or find ways to make them profitable.
SELECT Region,
    Category,
    COUNT(*) AS total_order,
    ROUND(SUM(Profit), 2) AS total_loss_profit
FROM superstore
Group BY Region,
    Category
ORDER BY total_loss_profit DESC;
SELECT Region,
    Category,
    COUNT(*) AS total_order,
    ROUND(SUM(Profit), 2) AS total_loss_profit
FROM superstore
Group BY Region,
    Category
HAVING SUM(Profit) < 0
ORDER BY total_loss_profit DESC;