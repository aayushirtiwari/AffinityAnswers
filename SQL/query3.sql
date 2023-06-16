SELECT t.species, r.length
FROM rfamseq r
JOIN taxonomy t ON r.ncbi_id = t.ncbi_id
WHERE t.species LIKE '%rice%'
ORDER BY r.length DESC
LIMIT 1;
