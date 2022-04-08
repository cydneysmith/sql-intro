-- How many teams played in the league in each year?

-- Expected result: 150 rows, ending with
--
-- | 2011 | 30       |
-- | 2012 | 30       |
-- | 2013 | 30       |
-- | 2014 | 30       |
-- | 2015 | 30       |
-- | 2016 | 30       |
-- | 2017 | 30       |
-- | 2018 | 30       |
-- | 2019 | 30       |
-- | 2020 | 30       |
-- +------+----------+
-- start without groups: how many rows in the teams table
SELECT COUNT(*)
FROM teams;

-- how to change ^ to get what we're looking for.
SELECT year, count(name)
FROM teams
GROUP BY year;

