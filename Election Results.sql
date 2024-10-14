DROP DATABASE IF EXISTS Election;

CREATE DATABASE Election;

USE Election;

DROP TABLE IF EXISTS Candidates;

CREATE TABLE Candidates(
id INT NOT NULL,
gender VARCHAR(10) NOT NULL,
age INT NOT NULL,
party VARCHAR(100) NOT NULL
);

CREATE TABLE Results(
constituency_id INT NOT NULL,
candidates_id INT NOT NULL,
votes INT NOT NULL
);

INSERT INTO Candidates(id, gender, age, party)
VALUES (1, "M", 55, "Democratic"),
 (2, "M", 51, "Democratic"),
 (3, "F", 62, "Democratic"),
(4, "M", 60, "Republic"),
(5, "F", 61, "Republic"),
(6, "F", 68, "Republic");

INSERT INTO Results(constituency_id, candidates_id, votes) VALUES
(1,1, 847529),
(1,4,283409),
(2,2,293841),
(2,5,394385),
(3,3,429084),  
(3,6,303890);

SELECT 
	c.party,
    r.constituency_id,
	r.candidates_id,
    r.votes,
    RANK() OVER(PARTITION BY constituency_id ORDER BY votes DESC) AS rnk 
FROM Candidates c
JOIN Results r 
ON c.id = r.candidates_id
ORDER BY constituency_id, votes DESC;

WITH Rank_CTE AS(
SELECT 
	c.party as Party,
    r.constituency_id,
	r.candidates_id,
    r.votes,
    rank() OVER(PARTITION BY constituency_id ORDER BY votes DESC) AS rnk 
FROM Candidates c
JOIN Results r 
ON c.id = r.candidates_id
) 
SELECT 
	CONCAT(party, '', COUNT(1)) AS Party_seats_won
FROM Rank_CTE 
WHERE rnk =1 
GROUP BY party;



