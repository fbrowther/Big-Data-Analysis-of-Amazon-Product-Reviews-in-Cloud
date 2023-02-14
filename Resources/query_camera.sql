SELECT * FROM review_id_table;
SELECT * FROM products;
SELECT * FROM customers;
SELECT * FROM vine_table;
SELECT * FROM vine_reviews_camera;

SELECT * FROM vine_reviews_camera
WHERE total_votes >= 20 AND vine ='N' AND star_rating >=4 AND verified_purchase= 'Y';

SELECT * FROM vine_reviews_camera
WHERE total_votes >= 20 AND vine ='N' AND star_rating >=4 AND verified_purchase= 'N';

SELECT * FROM vine_reviews_camera
WHERE total_votes >= 20 AND vine ='Y' AND star_rating >=4 AND verified_purchase= 'Y';

SELECT * FROM vine_reviews_camera
WHERE total_votes >= 20 AND vine ='Y' AND star_rating >=4 AND verified_purchase= 'N';

