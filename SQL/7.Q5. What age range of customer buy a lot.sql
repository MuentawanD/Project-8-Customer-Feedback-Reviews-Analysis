#Q5. What age range of customer buy a lot ?
#SELECT COUNT(*) FROM customer_review;

SELECT 
	age_range_label,
    age_range_id,
    COUNT(age_range_label) age_range_label,
    ROUND(COUNT(age_range_label)*100/ (SELECT COUNT(*) FROM customer_review),2) AS percentage_of_buy_of_age_range
FROM customer_review
GROUP BY age_range_label,age_range_id
ORDER BY age_range_id ASC;