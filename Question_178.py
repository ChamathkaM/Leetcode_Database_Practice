# select score, DENSE_RANK() over(order by score desc) as 'rank' # solution for rank scores 
# from Scores;

SELECT S.Score, COUNT(S2.Score) AS Rank FROM Scores S,
(SELECT DISTINCT Score FROM Scores) S2
WHERE S.Score<=S2.Score
GROUP BY S.Id 
ORDER BY S.Score DESC;
