
-- Write a query that prints ids and create_dates from the users table
-- where null dates are replaced by the date of the row id - 1

SELECT users.id,
CASE WHEN create_date IS NULL
     THEN
(SELECT TOP 1 create_date FROM users tb WHERE tb.id < users.id
  AND create_date IS NOT NULL ORDER BY tb.id DESC) ELSE create_date
  END AS create_date
FROM users
