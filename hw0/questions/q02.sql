/* 
Query 2: list passenger name, number of distinct booking ref #, number of tickets
 and # of distinct emails for passenger VLADIMIR MOROZOV
Write your query and store the result in table vladimir.
*/


DROP TABLE vladimir;
CREATE TABLE vladimir(
    passenger_name text, 
    number_of_booking int,
    number_of_tickets int,
    number_of_emails int
); 

/* Phuong Ho - 2364718 */

INSERT INTO vladimir(passenger_name, number_of_booking, number_of_tickets, number_of_emails)
SELECT
    passenger_name,
    COUNT(DISTINCT book_ref) AS number_of_booking,
    COUNT(ticket_no) AS number_of_tickets,
    COUNT(DISTINCT email) AS number_of_emails
FROM airline.tickets
WHERE passenger_name = 'VLADIMIR MOROZOV'
GROUP BY passenger_name;
--verify
SELECT * FROM vladimir;
