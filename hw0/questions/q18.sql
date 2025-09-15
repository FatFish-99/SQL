/* Query 18:  list departing airport, total # of flights and # of delayed flights with more delayed flights
 that is, the most inefficient airport. if there is a tie you can display all tied airports
Write your query and store the result in table R.
*/

DROP TABLE delayed_airport;
CREATE TABLE delayed_airport(
    departure_airport character(3),
    count_flights int,
    count_delayed int
); 

/* Phuong Ho - 2364718 */

INSERT INTO delayed_airport (departure_airport, count_flights, count_delayed)
SELECT
    T1.departure_airport,
    T1.count_flights,
    T1.count_delayed
FROM (
    SELECT
        departure_airport,
        COUNT(*) AS count_flights,
        COUNT(CASE WHEN actual_departure > scheduled_departure THEN 1 END) AS count_delayed
    FROM airline.flights
    GROUP BY departure_airport
) AS T1
WHERE T1.count_delayed = (
    SELECT
        MAX(count_delayed)
    FROM (
        SELECT
            COUNT(CASE WHEN actual_departure > scheduled_departure THEN 1 END) AS count_delayed
        FROM airline.flights
        GROUP BY departure_airport
    ) AS T2
);

--verify
SELECT * FROM delayed_airport;