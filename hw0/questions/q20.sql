/* Query 20:  show total money amount of all booked tickets in one month (august).
Write your query and store the result in table total_money.
*/

DROP TABLE total_money;
CREATE TABLE total_money(
    money numeric(13,2)
); 

/* Phuong Ho - 2364718 */

INSERT INTO total_money
SELECT SUM(total_amount) AS total_money
FROM airline.bookings
WHERE book_date >= '2017-08-01' AND book_date < '2017-09-01';

--verify
SELECT * FROM total_money;