use etlprojectdb;

SELECT 
	mas.Last_Name, mas.First_Name, mas.Birth_Year, mas.Debut_Game, mas.Final_Game, 
	bat.Games_Played, 
    sal.Seasons_Played, sal.Total_Earnings
FROM MASTER mas
join batting bat
on (mas.playerID = bat.playerID)
join salaries sal
on (mas.playerID = sal.playerID)

Where Birth_Year > "1970"
Order By Debut_Game;


