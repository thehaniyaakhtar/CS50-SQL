--find Ken Griffey Jr.’s home run history.
--Sort by year in descending order.
--Note that there may be two players with the name “Ken Griffey.” This Ken Griffey was born in 1969.
--Your query should return a table with two columns, one for year and one for home runs.
SELECT performances.year,
       performances.HR
FROM players
JOIN performances ON players.id = performances.player_id
WHERE players.first_name = "Ken"
      AND players.last_name = "Griffey"
      AND birth_year = "1969"
ORDER BY performances.year DESC
;
