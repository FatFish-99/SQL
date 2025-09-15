/* Query 13: total fares sales amount by fare class for flights departing from Moscow
Write your query and store the result in table fares_sales.
*/

DROP TABLE fares_sales;
CREATE TABLE fares_sales(
    fare_conditions character varying(10),
    amount numeric(12,2)
); 

/* Phuong Ho - 2364718 */

INSERT INTO fares_sales (fare_conditions, amount)
SELECT
    ft.fare_conditions,
    SUM(ft.amount) AS amount
FROM airline.flighttickets AS ft
JOIN airline.flights AS f ON ft.flight_id = f.flight_id
JOIN airline.airports AS a ON f.departure_airport = a.airport_code
WHERE a.city = 'Moscow'
GROUP BY ft.fare_conditions;

--verify
SELECT * FROM fares_sales;