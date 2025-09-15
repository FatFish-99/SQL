/* Query 15: tickets sold per fare class, only for arrived flights
Write your query and store the result in table tickets_sold.
*/

DROP TABLE tickets_sold;
CREATE TABLE tickets_sold(
    fare_conditions character varying(10),
    tickets int
    
); 

/* Phuong Ho - 2364718 */

INSERT INTO tickets_sold (fare_conditions, tickets)
SELECT
    fare_conditions,
    COUNT(*) AS tickets
    FROM airline.flighttickets AS ft
    JOIN airline.flights AS f ON ft.flight_id = f.flight_id
WHERE f.status = 'Arrived'
GROUP BY fare_conditions;

--verify
SELECT * FROM tickets_sold;