-- Trigger para atualizar o número total de incidentes em uma tabela de estatísticas sempre que um novo incidente for inserido na tabela de vítimas:
CREATE TRIGGER atualizar_total_incidentes
AFTER INSERT ON Vitimas
FOR EACH ROW
BEGIN
  UPDATE Estatisticas
  SET NumIncidentes = NumIncidentes + 1
  WHERE ID = NEW.ID_Incidente;
END;

-- Trigger para atualizar o número total de vítimas em uma tabela de estatísticas sempre que uma nova vítima for inserida: sql

CREATE TRIGGER atualizar_total_vitimas
AFTER INSERT ON Vitimas
FOR EACH ROW
BEGIN
  UPDATE Estatisticas
  SET NumVitimas = NumVitimas + 1
  WHERE ID = NEW.ID_Incidente;
END;




-- Trigger para verificar se o número total de vítimas ultrapassa um limite específico em uma tabela de estatísticas

CREATE TRIGGER verificar_limite_vitimas
BEFORE INSERT ON Vitimas
FOR EACH ROW
BEGIN
  DECLARE total_vitimas INT;
  SELECT NumVitimas INTO total_vitimas
  FROM Estatisticas
  WHERE ID = NEW.ID_Incidente;
  
  IF total_vitimas >= 100 THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Limite máximo de vítimas alcançado.';
  END IF;
END;
