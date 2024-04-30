#Q7.The best cloth and the worst clothes
#SELECT COUNT(*) FROM customer_review;

SELECT
	class_name,
    SUM(CASE WHEN rating IN (4,5) THEN 1 ELSE 0 END) count_of_Good_review,
    SUM(CASE WHEN rating IN (1,2,3) THEN -1 ELSE 0 END) count_of_Bad_review
FROM customer_review
GROUP BY class_name
ORDER BY count_of_Good_review DESC
