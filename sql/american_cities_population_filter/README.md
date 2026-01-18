## Business Problem
Identify American cities with populations greater than 100,000 to support operational
and infrastructure planning decisions.

## Data Understanding
The CITY table contains city-level data, including country code and population.
Only cities with COUNTRYCODE = 'USA' and population above 100,000 are relevant.

## Approach
Filter the CITY table using country and population conditions and return all city details.

## SQL Solution
SELECT *
FROM CITY
WHERE COUNTRYCODE = 'USA'
  AND POPULATION > 100000;

## Key Insight
The query isolates high-population U.S. cities that typically require higher logistics
capacity and more complex operational planning.

## Business Recommendation
This data can be used to prioritize supply chain network design, demand forecasting,
and infrastructure investment for major cities.
