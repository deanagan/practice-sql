-- In this MySQL challenge, your query should return the names of the people who are reported
-- to (excluding null values), the number of members that report to them, and the average age
-- of those members as an integer. The rows should be ordered by the names in alphabetical order.
-- Your output should look like the following table.


IF OBJECT_ID('dbo.maintable_U452L', 'U') IS NULL
CREATE TABLE maintable_U452L
(
    [ID] int
    ,
    [FirstName] nvarchar(20)
    ,
    [LastName] nvarchar(20)
    ,
    [ReportsTo] nvarchar(20)
    ,
    [Position] nvarchar(20)
    ,
    [Age] int
)
;


INSERT INTO maintable_U452L
    ([ID], [FirstName], [LastName], [ReportsTo], [Position], [Age])
VALUES
    (1, 'Daniel', 'Smith', 'Bob Boss', 'Engineer', 25),
    (2, 'Mike', 'White', 'Bob Boss', 'Contractor', 22),
    (3, 'Jenny', 'Richards', null, 'CEO', 45),
    (4, 'Robert', 'Black', 'Daniel Smith', 'Sales', 22),
    (5, 'Noah', 'Fritz', 'Jenny Richards', 'Assistant', 30),
    (6, 'David', 'S', 'Jenny Richards', 'Director', 32),
    (7, 'Ashley', 'Wells', 'David S', 'Assistant', 25),
    (8, 'Ashley', 'Johnson', null, 'Intern', 25)
;

SELECT ReportsTo
       , COUNT(*) as Members
       , ROUND(AVG(Age),0)
as 'Average Age' -- Use backtick for mysql
FROM maintable_U452L
GROUP BY ReportsTo
HAVING ReportsTo IS NOT NULL;