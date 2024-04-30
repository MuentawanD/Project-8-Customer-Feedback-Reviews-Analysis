#Q6. แต่ละกลุ่มอายุ ชอบซื้ออะไรมากสุด 3 อันดีบแรก
#SELECT COUNT(*) FROM customer_review;

SELECT 
	distinct age_range_label, 
    class_name,
    count(class_name) AS count_class_name,
    RANK () OVER(PARTITION BY age_range_label ORDER BY count(class_name) DESC) AS ranking
FROM customer_review
group by age_range_label, class_name;