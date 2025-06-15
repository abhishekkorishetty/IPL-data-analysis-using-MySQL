create database cricket;
show tables;
use cricket;



SELECT winner, win_by_runs
FROM matches
WHERE win_by_runs BETWEEN 10 AND 20;



SELECT id, city, date
FROM matches
WHERE city IN ('Mumbai', 'Delhi', 'Kolkata');



SELECT DISTINCT batsman
FROM deliveries
WHERE batsman LIKE 'M%';



SELECT id, date, team1, team2
FROM matches
WHERE city IS NULL;



SELECT DISTINCT team1
FROM matches
WHERE EXISTS (SELECT DISTINCT team2 FROM matches);


SELECT COUNT(*) AS total_matches FROM matches;


SELECT SUM(total_runs) AS total_runs_scored FROM deliveries;


SELECT AVG(total_runs) AS avg_runs_per_ball FROM deliveries;



SELECT batsman, SUM(batsman_runs) AS total_runs
FROM deliveries
GROUP BY batsman
ORDER BY total_runs DESC
LIMIT 1;


SELECT match_id, batsman, SUM(batsman_runs) AS runs
FROM deliveries
GROUP BY match_id, batsman
ORDER BY runs DESC
LIMIT 1;


SELECT COUNT(*) AS total_wickets
FROM deliveries
WHERE dismissal_kind IS NOT NULL;


SELECT batsman, COUNT(*) AS balls_faced
FROM deliveries
GROUP BY batsman
ORDER BY balls_faced DESC;


SELECT MAX(win_by_runs) AS max_win_margin FROM matches;


SELECT MIN(win_by_wickets) AS min_win_by_wickets
FROM matches
WHERE win_by_wickets > 0;


SELECT season, COUNT(*) AS matches
FROM matches
GROUP BY season;

SELECT winner, COUNT(*) AS wins
FROM matches
GROUP BY winner
ORDER BY wins DESC;


SELECT city, COUNT(*) AS matches
FROM matches
GROUP BY city
ORDER BY matches DESC;


SELECT batting_team, COUNT(*) AS total_sixes
FROM deliveries
WHERE batsman_runs = 6
GROUP BY batting_team
ORDER BY total_sixes DESC;


SELECT COUNT(*) AS tie_matches
FROM matches
WHERE result = 'tie';


SELECT match_id, batting_team, SUM(total_runs) AS total_score
FROM deliveries
GROUP BY match_id, batting_team
ORDER BY total_score DESC
LIMIT 1;


SELECT id, winner, win_by_runs
FROM matches
WHERE win_by_runs > 50;


SELECT id, winner, win_by_wickets
FROM matches
WHERE win_by_wickets < 3 AND win_by_wickets > 0;

SELECT match_id, batsman, total_runs
FROM deliveries
WHERE total_runs > 4;

SELECT batsman, SUM(batsman_runs) AS total
FROM deliveries
GROUP BY batsman
HAVING total < 20;


SELECT bowler, COUNT(*) AS balls_bowled
FROM deliveries
GROUP BY bowler
HAVING balls_bowled > 300;












