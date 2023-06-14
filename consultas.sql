-- Consultas avançadas --

-- Selecionar todas as vítimas com idade acima de 30 anos:
SELECT * FROM Vitimas WHERE Idade > 30;

-- Selecionar o número total de incidentes de cada tipo de crime, ordenados alfabeticamente:
SELECT TipoCrime, SUM(NumIncidentes) AS TotalIncidentes
FROM Estatisticas
GROUP BY TipoCrime
ORDER BY TipoCrime ASC;

-- Selecionar as estatísticas de incidentes com o maior número de vítimas:
SELECT E.*
FROM Estatisticas E
JOIN (
  SELECT ID, SUM(NumVitimas) AS TotalVitimas
  FROM Estatisticas
  GROUP BY ID
  ORDER BY TotalVitimas DESC
  LIMIT 1
) AS Subquery ON E.ID = Subquery.ID;

-- Selecionar o tipo de crime mais frequente, juntamente com o número total de incidentes:
SELECT TipoCrime, SUM(NumIncidentes) AS TotalIncidentes
FROM Estatisticas
GROUP BY TipoCrime
ORDER BY TotalIncidentes DESC
LIMIT 1;

-- Selecionar as vítimas agrupadas por gênero e calcular a quantidade média de incidentes e vítimas por grupo:
SELECT Genero, AVG(NumIncidentes) AS MediaIncidentes, AVG(NumVitimas) AS MediaVitimas
FROM Vitimas V
JOIN Estatisticas E ON V.ID_Incidente = E.ID
GROUP BY Genero;

-- Selecionar as estatísticas de incidentes com o menor número de incidentes e vítimas:
SELECT *
FROM Estatisticas
WHERE NumIncidentes = (SELECT MIN(NumIncidentes) FROM Estatisticas)
  AND NumVitimas = (SELECT MIN(NumVitimas) FROM Estatisticas);

-- Selecionar o número médio de vítimas por incidente em cada tipo de crime:
SELECT TipoCrime, AVG(NumVitimas) AS MediaVitimasPorIncidente
FROM Estatisticas
GROUP BY TipoCrime;



