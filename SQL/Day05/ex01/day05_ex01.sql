SET ENABLE_SEQSCAN = OFF;
EXPLAIN ANALYZE
SELECT m.pizza_name,pz.name
FROM menu AS m
JOIN pizzeria AS pz
ON m.pizzeria_id = pz.id