/* Example query: This query shows how you should write your answer in the provided .sql files.
Example request: list the maximum range of any aircraft.
*/

/* IMPORTANT: You donot have to use "set schema 'bookings';"
As shown in here you can access the tables in bookings schema using bookings.tablename*/

DROP TABLE IF EXISTS max_range;
CREATE TABLE max_range(
    range int
); 


/* 
Your code here
*/

INSERT INTO max_range
SELECT max(range)
FROM bookings.aircraft;