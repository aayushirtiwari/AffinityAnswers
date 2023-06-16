-- Counting the number of tiger types
SELECT COUNT(DISTINCT species) AS num_types
FROM taxonomy
WHERE species LIKE '%Tiger%';

