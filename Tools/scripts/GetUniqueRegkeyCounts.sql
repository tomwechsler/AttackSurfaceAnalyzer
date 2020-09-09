SELECT * FROM 
(SELECT
  regkey,
  COUNT(1) AS 'num'
FROM
  REGISTRY
GROUP BY
  regkey) a
WHERE CONVERT(INT, CONVERT(VARCHAR(12), a.num)) > 2
ORDER BY a.num DESC