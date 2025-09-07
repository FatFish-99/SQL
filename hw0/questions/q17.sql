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


/* 
Your code here
*/