SELECT * FROM athletes;
SELECT * FROM coaches;
SELECT * FROM entriesgender;
SELECT * FROM medals;
SELECT * FROM teams;

SELECT Country,COUNT(PersonName) AS TotalPlayer FROM athletes GROUP BY Country ORDER BY TotalPlayer DESC;

SELECT TeamCountry,SUM(Gold) AS TotalGold,SUM(Silver) AS TotalSilver,SUM(Bronze) AS TotalBronze FROM medals GROUP BY TeamCountry; 

SELECT Discipline, AVG(Female) AvgFemale, AVG(Male) AvgMale FROM entriesgender WHERE Discipline='Badminton' GROUP BY Discipline;



