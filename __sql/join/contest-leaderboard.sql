SELECT
    tabl2.h_id,
    h.name,
    tabl2.score
FROM
    (SELECT SUM(tabl1.maxscore) as score, 
        tabl1.h_id as h_id
    FROM
        (SELECT MAX(score) as maxscore,
            challenge_id as c_id,
            hacker_id as h_id
         FROM submissions
         WHERE score>0
         GROUP BY hacker_id, challenge_id) tabl1
    GROUP BY h_id) tabl2       
JOIN hackers h 
ON h.hacker_id=tabl2.h_id
ORDER BY tabl2.score DESC,
        tabl2.h_id ASC;
