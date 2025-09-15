/* Query 16:  list model and city for flights where a Boeing airplane departs from or arrives to
Write your query and store the result in table boeing_city.
*/

DROP TABLE boeing_city;
CREATE TABLE boeing_city(
    model character(25),
    city character(20)
); 

/* Phuong Ho - 2364718 */

INSERT INTO boeing_city (model, city)
SELECT
    T.model,
    T.city
FROM (
    SELECT
        a.model,
        airports.city
    FROM
        airline.aircrafts AS a
    JOIN
        airline.flights AS f ON a.aircraft_code = f.aircraft_code
    JOIN
        airline.airports ON f.departure_airport = airline.airports.airport_code
    WHERE
        a.model LIKE '%Boeing%'
    UNION
    SELECT
        a.model,
        airports.city
    FROM
        airline.aircrafts AS a
    JOIN
        airline.flights AS f ON a.aircraft_code = f.aircraft_code
    JOIN
        airline.airports ON f.arrival_airport = airline.airports.airport_code
    WHERE
        a.model LIKE '%Boeing%'
) AS T
GROUP BY T.model, T.city;

--verify
SELECT * FROM boeing_city;