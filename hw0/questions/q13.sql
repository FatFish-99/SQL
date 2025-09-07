/* Query 13: total fares sales amount by fare class for flights departing from Moscow
Write your query and store the result in table fares_sales.
*/

DROP TABLE fares_sales;
CREATE TABLE fares_sales(
    fare_conditions character varying(10),
    amount numeric(12,2)
); 


/* 
Your code here
*/