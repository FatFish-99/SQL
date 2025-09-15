/* Query 4: list airport code for airports located in Asia
Write your query and store the result in table airport_asia.
*/

DROP TABLE airport_asia;
CREATE TABLE airport_asia(
    airport_code character(3)
); 

/* Phuong Ho - 2364718 */
INSERT INTO airport_asia(airport_code)
SELECT
    airport_code
FROM airline.airports
WHERE timezone LIKE 'Asia%';

--verify
SELECT * FROM airport_asia;