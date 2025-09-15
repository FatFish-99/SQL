/* Query 14: list booking code and names of passengers in bookings with 3 or more passengers together
Write your query and store the result in table booking_code.
*/

DROP TABLE booking_code;
CREATE TABLE booking_code(
    book_ref character(6),
    passenger_name text
    
); 

/* Phuong Ho - 2364718 */

INSERT INTO booking_code (book_ref, passenger_name)
SELECT DISTINCT
    T1.book_ref,
    T1.passenger_name
FROM airline.tickets AS T1
WHERE T1.book_ref IN (
    SELECT T2.book_ref
    FROM airline.tickets AS T2
    GROUP BY T2.book_ref
    HAVING COUNT(*) >= 3
);

--verify   
SELECT * FROM booking_code;