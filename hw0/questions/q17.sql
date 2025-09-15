/* Query 17:  list flight_id,scheduled departure date,departing city, departing airport, arrival city, arrival airport
 for delayed flights for passenger ELENA
Write your query and store the result in table R.
*/

DROP TABLE elena_delayed;
CREATE TABLE elena_delayed(
    flight_id int,
    scheduled_departure timestamptz,
    d_city character(20),
    departure_airport character(3),
    a_city character(20),
    arrival_airport character(3)
); 

/* Phuong Ho - 2364718 */

INSERT INTO elena_delayed (flight_id, scheduled_departure, d_city, departure_airport, a_city, arrival_airport)
SELECT DISTINCT
    T3.flight_id,
    T3.scheduled_departure,
    T4.city AS d_city,
    T3.departure_airport,
    T5.city AS a_city,
    T3.arrival_airport
FROM airline.tickets AS T1
JOIN airline.boardingpasses AS T2 ON T1.ticket_no = T2.ticket_no
JOIN airline.flights AS T3 ON T2.flight_id = T3.flight_id
JOIN airline.airports AS T4 ON T3.departure_airport = T4.airport_code
JOIN airline.airports AS T5 ON T3.arrival_airport = T5.airport_code
WHERE
    T1.passenger_name LIKE '%ELENA%'
    AND T3.actual_departure > T3.scheduled_departure;

--verify
SELECT * FROM elena_delayed;