/* Query 19:  show names and # of rows of all tables in descending order.
Write your query and store the result in table top_table.
*/

DROP TABLE top_table;
CREATE TABLE top_table(
    table_name text,
    total_rows int
); 

/* Phuong Ho - 2364718 */

INSERT INTO top_table(table_name, total_rows)
SELECT table_name, total_rows
FROM (
    SELECT 'aircrafts' AS table_name, COUNT(*) AS total_rows FROM airline.aircrafts
    UNION ALL
    SELECT 'airports' AS table_name, COUNT(*) AS total_rows FROM airline.airports
    UNION ALL
    SELECT 'boardingpasses' AS table_name, COUNT(*) AS total_rows FROM airline.boardingpasses
    UNION ALL
    SELECT 'bookings' AS table_name, COUNT(*) AS total_rows FROM airline.bookings
    UNION ALL
    SELECT 'flights' AS table_name, COUNT(*) AS total_rows FROM airline.flights
    UNION ALL
    SELECT 'flighttickets' AS table_name, COUNT(*) AS total_rows FROM airline.flighttickets
    UNION ALL
    SELECT 'seats' AS table_name, COUNT(*) AS total_rows FROM airline.seats
    UNION ALL
    SELECT 'tickets' AS table_name, COUNT(*) AS total_rows FROM airline.tickets
) AS all_tables
ORDER BY total_rows DESC;

--verify
SELECT * FROM top_table;