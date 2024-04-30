#Q7.1  % review by each class name 
#SELECT COUNT(*) FROM customer_review;

WITH table1 AS(
SELECT
	class_name,
    SUM(CASE WHEN rating IN (4,5) THEN 1 ELSE 0 END) count_Good_review,
    SUM(CASE WHEN rating IN (1,2,3) THEN 1 ELSE 0 END) count_Bad_review
FROM customer_review
GROUP BY class_name
)
SELECT 
	table1.*,
    (table1.count_Good_review) + (table1.count_Bad_review) AS count_review_by_class_name,
    ROUND(table1.count_Good_review *100/((table1.count_Good_review) + (table1.count_Bad_review)),2) AS Percentage_Good_review,
    ROUND(table1.count_Bad_review *100/((table1.count_Good_review) + (table1.count_Bad_review)),2) AS Percentage_Bad_review
FROM table1
ORDER BY Percentage_Bad_review DESC;
