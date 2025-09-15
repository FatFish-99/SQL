/* Query 3: list number of seats available per aircraft 
Write your query and store the result in table seats_aircraft.
*/

DROP TABLE seats_aircraft;
CREATE TABLE seats_aircraft(
    aircraft_code character(3), 
    seats int
); 

/* Phuong Ho - 2364718 */
INSERT INTO seats_aircraft(aircraft_code, seats)
SELECT
    aircraft_code,
    COUNT(*) AS seats
FROM airline.seats
GROUP BY aircraft_code
ORDER BY aircraft_code;

--verify
SELECT * FROM seats_aircraft;