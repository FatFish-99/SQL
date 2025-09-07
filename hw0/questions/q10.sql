/* Query 10:  show the earliest and latest date across all flights, i.e. to have an idea the time span
of the database
Write your query and store the result in table span_date.
*/

DROP TABLE span_date;
CREATE TABLE span_date(
    earliest timestamptz,
    latest timestamptz
); 


/* 
Your code here
*/