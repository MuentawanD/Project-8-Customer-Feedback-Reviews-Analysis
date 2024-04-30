#Percentage od Recemmend
#SELECT COUNT(*) FROM customer_review;
WITH A AS (
SELECT 
	rating,
    SUM(CASE WHEN recommend_index = 1 THEN 1 ELSE 0 END) AS recommend_Yes,
    SUM(CASE WHEN recommend_index = 0 THEN 1 ELSE 0 END) AS recommend_No
FROM customer_review
GROUP BY rating
)

SELECT 
	A.*,
    A.recommend_Yes + A.recommend_No AS Total_customer_by_rating,
    ROUND(A.recommend_Yes *100/(A.recommend_Yes + A.recommend_No),2) As percentage_recommend_Yes,
    ROUND(A.recommend_No *100/(A.recommend_Yes + A.recommend_No),2) As percentage_recommend_No
FROM A
ORDER BY percentage_recommend_Yes DESC;