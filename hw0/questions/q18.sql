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


/* 
Your code here
*/