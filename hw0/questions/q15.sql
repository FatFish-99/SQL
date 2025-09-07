/* Query 15: tickets sold per fare class, only for arrived flights
Write your query and store the result in table tickets_sold.
*/

DROP TABLE tickets_sold;
CREATE TABLE tickets_sold(
    fare_conditions character varying(10),
    tickets int
    
); 


/* 
Your code here
*/