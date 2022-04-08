-- How many lifetime hits does Barry Bonds have?

-- Expected result:
-- 2935


-- how do we get barry bonds? just see if we can get to barry in players table. SELECT * FROM players WHERE first_name = "Barry" and last_name = "Bonds";
-- can see what stats looks like by saying SELECT * FROM players;

SELECT sum(stats.hits)
from players INNER JOIN stats ON players.id = stats.player_id
WHERE players.first_name = "Barry" and players.last_name = "Bonds";

