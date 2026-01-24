/* =========================================================
   HACKERRANK – STATION TABLE SQL PRACTICE
   Dataset: STATION
   Author: Abhishek Tatiparthi
   Description:
   This file contains solutions to 11 SQL problems
   based on the STATION table from HackerRank.
   ========================================================= */


/* ---------------------------------------------------------
   Problem 1:
   Query the city with the shortest CITY name and its length.
   If there is more than one, choose the alphabetically first.
   --------------------------------------------------------- */
SELECT CITY, LENGTH(CITY) AS CITY_LENGTH
FROM STATION
ORDER BY LENGTH(CITY), CITY
LIMIT 1;


/* ---------------------------------------------------------
   Problem 2:
   Query the city with the longest CITY name and its length.
   If there is more than one, choose the alphabetically first.
   --------------------------------------------------------- */
SELECT CITY, LENGTH(CITY) AS CITY_LENGTH
FROM STATION
ORDER BY LENGTH(CITY) DESC, CITY
LIMIT 1;


/* ---------------------------------------------------------
   Problem 3:
   Query the list of CITY names starting with vowels.
   Remove duplicates.
   --------------------------------------------------------- */
SELECT DISTINCT CITY
FROM STATION
WHERE CITY LIKE 'A%'
   OR CITY LIKE 'E%'
   OR CITY LIKE 'I%'
   OR CITY LIKE 'O%'
   OR CITY LIKE 'U%';


/* ---------------------------------------------------------
   Problem 4:
   Query the list of CITY names ending with vowels.
   Remove duplicates.
   --------------------------------------------------------- */
SELECT DISTINCT CITY
FROM STATION
WHERE CITY LIKE '%A'
   OR CITY LIKE '%E'
   OR CITY LIKE '%I'
   OR CITY LIKE '%O'
   OR CITY LIKE '%U';


/* ---------------------------------------------------------
   Problem 5:
   Query CITY names that start AND end with vowels.
   Remove duplicates.
   --------------------------------------------------------- */
SELECT DISTINCT CITY
FROM STATION
WHERE (CITY LIKE 'A%' OR CITY LIKE 'E%' OR CITY LIKE 'I%' OR CITY LIKE 'O%' OR CITY LIKE 'U%')
  AND (CITY LIKE '%A' OR CITY LIKE '%E' OR CITY LIKE '%I' OR CITY LIKE '%O' OR CITY LIKE '%U');


/* ---------------------------------------------------------
   Problem 6:
   Query CITY names that do NOT start with vowels.
   Remove duplicates.
   --------------------------------------------------------- */
SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT LIKE 'A%'
  AND CITY NOT LIKE 'E%'
  AND CITY NOT LIKE 'I%'
  AND CITY NOT LIKE 'O%'
  AND CITY NOT LIKE 'U%';


/* ---------------------------------------------------------
   Problem 7:
   Query CITY names that do NOT end with vowels.
   Remove duplicates.
   --------------------------------------------------------- */
SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT LIKE '%A'
  AND CITY NOT LIKE '%E'
  AND CITY NOT LIKE '%I'
  AND CITY NOT LIKE '%O'
  AND CITY NOT LIKE '%U';


/* ---------------------------------------------------------
   Problem 8:
   Query CITY names that either do NOT start
   OR do NOT end with vowels.
   Remove duplicates.
   --------------------------------------------------------- */
SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT LIKE 'A%'
   OR CITY NOT LIKE '%A';


/* ---------------------------------------------------------
   Problem 9:
   Query CITY names that do NOT start
   AND do NOT end with vowels.
   Remove duplicates.
   --------------------------------------------------------- */
SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT LIKE 'A%'
  AND CITY NOT LIKE 'E%'
  AND CITY NOT LIKE 'I%'
  AND CITY NOT LIKE 'O%'
  AND CITY NOT LIKE 'U%'
  AND CITY NOT LIKE '%A'
  AND CITY NOT LIKE '%E'
  AND CITY NOT LIKE '%I'
  AND CITY NOT LIKE '%O'
  AND CITY NOT LIKE '%U';


/* ---------------------------------------------------------
   Problem 10:
   Query CITY names where the ID number is even.
   Remove duplicates.
   --------------------------------------------------------- */
SELECT DISTINCT CITY
FROM STATION
WHERE ID % 2 = 0;


/* ---------------------------------------------------------
   Problem 11:
   Find the difference between the total number of CITY
   entries and the number of distinct CITY entries.
   --------------------------------------------------------- */
SELECT COUNT(CITY) - COUNT(DISTINCT CITY) AS DIFFERENCE
FROM STATION;
