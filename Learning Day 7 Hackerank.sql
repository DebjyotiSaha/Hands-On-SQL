-- Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode 
-- for America is USA.
select * from CITY;
select * from CITY where CountryCode = 'USA';
select * from CITY where CountryCode = 'USA' and population > 100000;

-- Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order,
-- but exclude duplicates from the answer.
select * from STATION;
select * from STATION where ID%2=0;
select distinct CITY from STATION where ID%2=0;

-- Find the difference between the total number of CITY entries in the table and the number of distinct CITY 
-- entries in the table. 
select * from STATION;
select count(*) from STATION;
select count(*) - count(distinct CITY) from STATION;

-- Query the list of CITY names starting with vowels (i.e. a,e,i,o,u) from STATION. Your result cannot contain
-- duplicates. 
select * from STATION;
select distinct CITY from STATION;
select distinct CITY from STATION where lower(left(city, 1)) in ('a', 'e', 'i', 'o', 'u');

-- Query the two cities in STATION with the shortest and longest CITY names, as well as their respective
-- lengths (i.e. number of characters). If there is more than one smallest or largest city, choose the one that
-- comes first when ordered alphabetically.
select * from STATION;
select CITY, length(city) from STATION;
select CITY, length(CITY) from STATION order by length(CITY) desc, CITY desc limit 1;
select CITY, length(CITY) from STATION order by length(CITY) asc, CITY asc limit 1;

