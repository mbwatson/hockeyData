-------------
-- Custom ---
-------------

-- Count number of times each award was won by the coaches

SELECT `award`, count(*) FROM `AwardsCoaches` GROUP BY `award`

---
---
---

-----------
-- 3 (a) --
-----------
-- Query in MySQL to rank the coaches for each year by number of wins.
-- Should be a query and not a stored procedure.

SELECT * FROM Coaches ORDER BY CAST(`Coaches`.`w` AS UNSIGNED) DESC;

---
---
---

-----------
-- 3 (b) --
-----------
-- MySQL query to rank the player for each year for number of awards.
-- Should be a stored procedure.

delimiter //
CREATE PROCEDURE rankPlayers (OUT param1 INT)
BEGIN
SELECT Master.playerID, count(*) FROM Master RIGHT JOIN AwardsPlayers
	ON Master.playerID = AwardsPlayers.playerID GROUP BY playerID;
END//
delimiter ;

---
---
---

-----------
-- 3 (c) --
-----------
-- MySQL query to get the details of a player who won the maximum number of awards for a year
-- during which the coach for that team also has the maximum wins.

-- Parts of the Whole:

-----------------------------
-- players, coaches, years --
-----------------------------

SELECT
	m.playerID, m.coachID, c.year
FROM
	Master as m
INNER JOIN (
	SELECT
		coachID, year
	FROM Coaches
) AS c
ON
	m.coachID = c.coachID
WHERE
	m.playerID <> '' AND m.coachID <> ''

-----------------------------------------
-- coachID with max wins for each year --
-----------------------------------------

SELECT
	c.year, c.coachID, c.w
FROM (
    SELECT
    	year, MAX(w) as maxwins
    FROM Coaches
    GROUP BY year
) AS x
INNER JOIN
	Coaches AS c 
ON
	c.year = x.year AND
	c.w = x.maxwins
