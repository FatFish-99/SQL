/* Query 6: how many available airports are there considering any departure or arrival?
Write your query and store the result in table available_airports.
*/

DROP TABLE available_airports;
CREATE TABLE available_airports(
    airports int
); 

/* Phuong Ho - 2364718 */

INSERT INTO available_airports
SELECT SELECT COUNT(*) AS total_airports
FROM (
  SELECT departure_airport FROM airline.flights
  UNION
  SELECT arrival_airport FROM airline.flights
) AS all_airports;

--verify
SELECT * FROM available_airports;