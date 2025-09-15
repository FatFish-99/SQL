/* Query 1: count distinct and average range for Boeing models
Write your query and store the result in table boeing.
*/

DROP TABLE boeing;
CREATE TABLE boeing(
    dist_range int,
    avg_range numeric(6,2)
); 

/* Phuong Ho - 2364718 */

INSERT INTO boeing(dist_range, avg_range)
SELECT 
    COUNT(DISTINCT model) AS dist_range,
    CAST(AVG(range::numeric) AS numeric(6,2)) AS avg_range
FROM airline.aircrafts
WHERE model LIKE 'Boeing%';

--verify
SELECT * FROM boeing;