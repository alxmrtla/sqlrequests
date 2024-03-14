-- Find names of the cats whose owners are
-- both George Beatty and Melynda Abshire, or
--  just George Beatty,
-- or just Melynda Abshire
--
-- Your code here
SELECT cats.name
FROM cats
JOIN cat_owners ON cats.id = cat_owners.owner_id
JOIN owners ON cat_owners.owner_id = owners.id
WHERE
    (owners.first_name IN( 'George','Melynda') AND owners.last_name IN( 'Beatty', 'Abshire'))
    OR
    (owners.first_name = 'Melynda' AND owners.last_name = 'Abshire')
    OR
    (owners.first_name = 'George' AND owners.last_name = 'Beatty')
GROUP BY cats.name;
-- HAVING count(DISTINCT owners.id) BETWEEN 1 AND 2;
