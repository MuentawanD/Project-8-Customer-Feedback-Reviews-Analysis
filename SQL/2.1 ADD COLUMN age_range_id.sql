/*ALTER TABLE customer_review
DROP COLUMN age_range_id;*/

SET SQL_SAFE_UPDATES = 0; #ปลดล็อค SET MODE
ALTER TABLE customer_review
ADD COLUMN age_range_id INT(10);

UPDATE customer_review
SET age_range_id = CASE
                    WHEN age_range_label = "18 to 24" THEN 1
                    WHEN age_range_label = "25 to 34" THEN 2
                    WHEN age_range_label = "35 to 44" THEN 3
                    WHEN age_range_label = "45 to 54" THEN 4
                    WHEN age_range_label = "55 to 64" THEN 5
                    WHEN age_range_label = "65 to 74" THEN 6
                    WHEN age_range_label = "75 to 84" THEN 7
                    ELSE 8
                END;