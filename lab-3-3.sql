-- What were the winningest teams in each season of the 
-- modern era (from 1960-present), listed by winningest teams first?

-- Expected result: 61 rows, starting with
--
-- +------+-------------------------------+-----------+
-- | 2001 | Seattle Mariners              | 116       |
-- | 1998 | New York Yankees              | 114       |
-- | 1969 | Baltimore Orioles             | 109       |
-- | 1961 | New York Yankees              | 109       |
-- | 2018 | Boston Red Sox                | 108       |
-- | 1986 | New York Mets                 | 108       |
-- | 1975 | Cincinnati Reds               | 108       |
-- | 1970 | Baltimore Orioles             | 108       |
-- | 2019 | Houston Astros                | 107       |
-- | 2004 | St. Louis Cardinals           | 105       |

-- start with which team had most numer of wins ever in any season: SELECT MAX(wins) FROM teams <-- max number of wins ever
-- aggregate by year: winningest team in each season: SELECT year, MAX(wins), GROUP BY year
-- now we have to include the team names: SELECT year, name, MAX(wins), GROUP BY year <-- max number of wins any team had in that year. MAX lives in harmony with whatever is being grouped by
-- now layer in filter for time period and order:


SELECT year, name, MAX(wins)
FROM teams
WHERE year >= 1960
GROUP BY year
ORDER BY MAX(wins) DESC;
