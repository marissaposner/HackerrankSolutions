/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
Select Country.Continent, AVG(City.Population) from Country
Join city on Country.Code=city.countrycode
Group by Continent 
