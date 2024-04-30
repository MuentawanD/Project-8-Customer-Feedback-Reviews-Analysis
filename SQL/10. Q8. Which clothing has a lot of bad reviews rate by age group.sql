#Q8. Which clothing has a lot of bad reviews rate by age group
#SELECT COUNT(*) FROM customer_review;


SELECT 
	age_range_label,
    age_range_id,
    class_name,
    COUNT(rating) Bad_rating_by_age_range,
    RANK() OVER(PARTITION BY age_range_label ORDER BY age_range_id ASC,COUNT(rating) DESC) AS ranking
FROM customer_review
WHERE rating IN (1,2,3)
GROUP BY age_range_label,age_range_id,class_name;

/*SELECT 
	A.age_range_label,
    A.class_name,
    A.rating_Bad_by_age_range,
    SUM(A.rating_Bad_by_age_range)
FROM A
GROUP BY A.age_range_label,A.class_name,A.rating_Bad_by_age_range;*/