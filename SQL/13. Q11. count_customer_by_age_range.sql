#Q11. count_customer_by_age_range
SELECT
	age_range_label,
    age_range_id,
    count(*) count_customer_by_age_range
FROM customer_review
GROUP BY age_range_label, age_range_id
ORDER BY age_range_id;