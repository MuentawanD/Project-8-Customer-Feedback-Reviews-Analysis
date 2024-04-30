# Q1 Percentage of rating
# SELECT COUNT(*) FROM customer_review;

SELECT
	rating,
    ROUND(COUNT(rating)*100 / (SELECT COUNT(*) FROM customer_review),2) AS percentage_of_rating
FROM customer_review
GROUP BY rating
ORDER BY percentage_of_rating DESC ;