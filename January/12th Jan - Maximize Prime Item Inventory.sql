-- DataLemur
-- https://datalemur.com/questions/prime-warehouse-storage

SELECT item_type, 
CASE WHEN item_type = 'prime_eligible' THEN FLOOR(500000/square_footage)*counts
    WHEN item_type = 'not_prime' THEN FLOOR(MOD(500000,(SELECT SUM(square_footage) FROM inventory
GROUP BY item_type
HAVING item_type='prime_eligible'))/square_footage)* counts
    END AS item_count FROM
(SELECT item_type, SUM(square_footage) AS square_footage, COUNT(item_type) AS counts 
FROM inventory
GROUP BY item_type) temp
ORDER BY item_type DESC;