/* Query 5:  aircraft model of planes without any flight, i.e. an airplane that is not used at all
Write your query and store the result in table no_flight.
*/

DROP TABLE no_flight;
CREATE TABLE no_flight(
    model character(25)
); 

/* Phuong Ho - 2364718 */

INSERT INTO no_flight(model)
SELECT
    a.model
FROM airline.aircrafts a
JOIN (
    SELECT aircraft_code
    FROM airline.flights
    GROUP BY aircraft_code
    HAVING COUNT(*) = COUNT(
        CASE 
            WHEN actual_departure IS NULL AND actual_arrival IS NULL THEN 1
        END
    )
) AS sub ON a.aircraft_code = sub.aircraft_code;

--verify
SELECT * FROM no_flight;