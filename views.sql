-- Views
-- View para obter o número total de incidentes e vítimas por ano:
CREATE VIEW EstatisticasAnuais AS
SELECT Ano, SUM(NumIncidentes) AS TotalIncidentes, SUM(NumVitimas) AS TotalVitimas
FROM Estatisticas
GROUP BY Ano;

-- View para obter as vítimas do tipo de crime 'Assalto' com idade entre 20 e 30 anos:
CREATE VIEW VitimasAssalto2030 AS
SELECT V.*
FROM Vitimas V
JOIN Estatisticas E ON V.ID_Incidente = E.ID
WHERE E.TipoCrime = 'Assalto' AND V.Idade BETWEEN 20 AND 30;

 -- View para obter o tipo de crime mais frequente e o número total de incidentes:
CREATE VIEW TipoCrimeFrequente AS
SELECT TipoCrime, SUM(NumIncidentes) AS TotalIncidentes
FROM Estatisticas
GROUP BY TipoCrime
ORDER BY TotalIncidentes DESC
LIMIT 1;

-- View para obter a média de vítimas por incidente em cada tipo de crime:
CREATE VIEW MediaVitimasPorTipoCrime AS
SELECT TipoCrime, AVG(NumVitimas) AS MediaVitimasPorIncidente
FROM Estatisticas
GROUP BY TipoCrime;

SELECT * FROM EstatisticasAnuais;
SELECT * FROM VitimasAssalto2030;
SELECT * FROM TipoCrimeFrequente;
SELECT * FROM MediaVitimasPorTipoCrime;
