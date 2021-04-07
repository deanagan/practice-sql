SELECT Concat(Name,'(', Substring(Occupation, 1,1), ')') FROM OCCUPATIONS ORDER BY Name;

SELECT Concat('There are a total of ', Count(*),' ', LOWER(Occupation), 's.') FROM OCCUPATIONS
GROUP BY Occupation ORDER by Count(*);