select score, DENSE_RANK() over(order by score desc) as 'rank' # solution for rank scores 
from Scores;
