/* Query 8: list all bookings on aug/4/2017 with cost less than 40,000 
Write your query and store the result in table bookings_date.
*/

DROP TABLE bookings_date;
CREATE TABLE bookings_date(
    book_ref character(6),
    book_date timestamptz,
    total_amount numeric(10,2)
); 


/* 
Your code here
*/