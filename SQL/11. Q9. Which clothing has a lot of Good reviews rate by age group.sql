#Q9. Which clothing has a lot of Good reviews rate by age group
#SELECT COUNT(*) FROM customer_review;


SELECT 
	age_range_label,
    age_range_id,
    class_name,
    COUNT(rating) Good_rating_by_age_range,
    RANK() OVER(PARTITION BY age_range_label ORDER BY age_range_id ASC,COUNT(rating) DESC) AS ranking
FROM customer_review
WHERE rating IN (4,5)
GROUP BY age_range_label,age_range_id,class_name;

