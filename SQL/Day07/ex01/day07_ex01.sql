SELECT p.name,COUNT(*) AS count_of_visits
FROM person_visits AS pv
JOIN person AS p
ON p.id = pv.person_id
GROUP BY p.name
ORDER BY 2 DESC,1
LIMIT 4;