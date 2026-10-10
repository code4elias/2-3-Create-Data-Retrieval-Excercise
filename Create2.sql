--The library needs a list of authors and the titles of their books for all Thrillers that were published after 2000 and have more than 400 pages. Order the list alphabeticaly by author and then title.
SELECT Author, Title
FROM Books
WHERE Genre = 'Thriller'
  AND Year > 2000
  AND Pages > 400
ORDER BY Author, Title;
--end

--The library needs all of the information for their titles published in 2008 by publisher Thomson Reuters. The list should be sorted with the highest price on top.
SELECT (*)
FROM Books
WHERE Year  = 2008
  AND Publisher = 'Thomson Reuters'
ORDER BY Price DESC;
--end

--The library needs a list of titles with the author, publisher, and number of pages. Only include titles with more than 700 or fewer than 500 pages. Also, the price must be less than 35. The list should show the titles with the most pages first.
SELECT Title, Author, Publisher, Pages
FROM Books
WHERE (Pages > 700 OR Pages < 500)
  AND Price < 35
ORDER BY Pages DESC;
--end

--The video game store needs a list of titles available on Playstation. Include the developer, metacritic score, and the user score. The list should be sorted with the greatest metacritic score on top. If two games have the sam emetacritic score, the one with the higher user score should be on top.
SELECT Title, Developer, Metacritic, UserScore
FROM Game
WHERE Platform = 'Playstation'
ORDER BY Metacritic DESC, UserScore DESC;
--end

--A video game store needs a list of their titles for all platforms except for mobile.  The list should include titles that have a metacritic score between 85 and 100
SELECT Title
FROM Game
WHERE Platform <> 'Mobile'
  AND Metacritic BETWEEN 85 AND 100;
--end

--A car dealer needs to know the make, model, year, and fuel type of all cars that have a model starting with "C". The list should be sorted alphabetically by make and model with the newest models listed first.
SELECT Make, Model, Year, FuelType
FROM Car
WHERE Model LIKE 'C%'
ORDER BY Make ASC, Model ASC, Year DESC;
--end
