#Q4. What kind of clothes are sold a lot ?
#SELECT COUNT(*) FROM customer_review;

SELECT 
	class_name,
    COUNT(class_name) count_class_name,
    ROUND(COUNT(class_name)*100/ (SELECT COUNT(*) FROM customer_review),2) AS percentage_of_sold_by_class_name
FROM customer_review
GROUP BY class_name
ORDER BY COUNT(class_name) DESC;