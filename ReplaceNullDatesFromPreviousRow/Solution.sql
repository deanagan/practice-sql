SELECT users.id,
CASE WHEN create_date IS NULL
     THEN
(SELECT TOP 1 create_date FROM users tb WHERE tb.id < users.id
  AND create_date IS NOT NULL ORDER BY tb.id DESC) ELSE create_date
  END AS create_date
FROM users
