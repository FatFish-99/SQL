/* Example query: This query shows how you should write your answer in the provided .sql files.
Example request: list the total number of airports.
*/

/* IMPORTANT: You donot have to use "set schema 'bookings';"
As shown in here you can access the tables in bookings schema using bookings.tablename*/

DROP TABLE IF EXISTS total_airports;
CREATE TABLE total_airports(
    total int
); 


/* 
Your code here
*/

INSERT INTO total_airports
SELECT count(*)
FROM bookings.airport;