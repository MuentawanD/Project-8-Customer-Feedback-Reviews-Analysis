# Q2 perdentage of GOOD and BAD
SELECT
	rating_label,
    COUNT(rating_label) AS count_rating_label,
    ROUND(COUNT(rating_label)*100 / (SELECT COUNT(*) FROM customer_review),2) AS percentage_of_rating_label
FROM customer_review
GROUP BY rating_label;