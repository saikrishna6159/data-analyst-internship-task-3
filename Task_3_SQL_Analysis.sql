-- =====================================================
-- DATA ANALYST INTERNSHIP - TASK 3
-- SQL FOR DATA ANALYSIS
-- Dataset: Cafe Sales
-- =====================================================

USE cafe_sales_db;

-- 1. SELECT
SELECT *
FROM cafe_sales
LIMIT 10;

-- 2. WHERE + ORDER BY
SELECT
    transaction_id,
    item,
    quantity,
    total_spent
FROM cafe_sales
WHERE total_spent > 15
ORDER BY total_spent DESC;

-- 3. GROUP BY + SUM
SELECT
    item,
    ROUND(SUM(total_spent), 2) AS total_sales
FROM cafe_sales
GROUP BY item
ORDER BY total_sales DESC;

-- 4. AVG
SELECT
    item,
    ROUND(AVG(total_spent), 2) AS average_spending
FROM cafe_sales
GROUP BY item
ORDER BY average_spending DESC;


-- 5. COUNT
SELECT
    payment_method,
    COUNT(*) AS transaction_count
FROM cafe_sales
GROUP BY payment_method
ORDER BY transaction_count DESC;


-- 6. SUBQUERY
SELECT
    transaction_id,
    item,
    total_spent
FROM cafe_sales
WHERE total_spent > (
    SELECT AVG(total_spent)
    FROM cafe_sales
)
ORDER BY total_spent DESC;


-- 7. WINDOW FUNCTION
WITH item_sales AS (
    SELECT
        item,
        SUM(total_spent) AS total_sales
    FROM cafe_sales
    GROUP BY item
)
SELECT
    item,
    ROUND(total_sales, 2) AS total_sales,
    RANK() OVER (ORDER BY total_sales DESC) AS sales_rank
FROM item_sales
ORDER BY sales_rank;


-- 8. INDEX / OPTIMIZATION
CREATE INDEX idx_transaction_date
ON cafe_sales(transaction_date);

SHOW INDEX FROM cafe_sales;


-- 9. JOIN
SELECT
    c.item,
    ic.category,
    ROUND(SUM(c.total_spent), 2) AS total_sales
FROM cafe_sales c
LEFT JOIN item_categories ic
    ON c.item = ic.item
GROUP BY c.item, ic.category
ORDER BY total_sales DESC;