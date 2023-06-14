-- Acrescentando valores --

-- Inserção de dados na tabela 'Incidentes'
INSERT INTO Incidentes (Data, Localizacao, Descricao, Gravidade)
VALUES
  ('2023-06-01', 'Rua A, Cidade X', 'Assalto a mão armada', 'Alta'),
  ('2023-06-02', 'Praça B, Cidade Y', 'Briga entre gangues', 'Média'),
  ('2023-06-03', 'Avenida C, Cidade Z', 'Roubo de veículo', 'Alta'),
  ('2023-06-04', 'Rua D, Cidade X', 'Violência doméstica', 'Baixa'),
  ('2023-06-05', 'Rua E, Cidade Y', 'Assassinato', 'Alta'),
  ('2023-06-06', 'Rua F, Cidade Z', 'Furto de bicicleta', 'Baixa'),
  ('2023-06-07', 'Avenida G, Cidade X', 'Briga de trânsito', 'Média'),
  ('2023-06-08', 'Rua H, Cidade Y', 'Roubo a estabelecimento', 'Alta'),
  ('2023-06-09', 'Praça I, Cidade Z', 'Assédio sexual', 'Média'),
  ('2023-06-10', 'Rua J, Cidade X', 'Homicídio culposo', 'Média'),
  ('2023-06-11', 'Avenida K, Cidade Y', 'Ameaça de morte', 'Baixa'),
  ('2023-06-12', 'Rua L, Cidade Z', 'Assalto a residência', 'Alta'),
  ('2023-06-13', 'Praça M, Cidade X', 'Lesão corporal', 'Média'),
  ('2023-06-14', 'Rua N, Cidade Y', 'Roubo de celular', 'Média'),
  ('2023-06-15', 'Avenida O, Cidade Z', 'Violência contra idoso', 'Alta'),
  ('2023-06-16', 'Rua P, Cidade X', 'Assédio moral', 'Baixa'),
  ('2023-06-17', 'Praça Q, Cidade Y', 'Briga em festa', 'Média'),
  ('2023-06-18', 'Rua R, Cidade Z', 'Roubo de bolsa', 'Média'),
  ('2023-06-19', 'Avenida S, Cidade X', 'Tentativa de homicídio', 'Alta'),
  ('2023-06-20', 'Rua T, Cidade Y', 'Furto de veículo', 'Alta');

-- Inserção de dados na tabela 'Vitimas'
INSERT INTO Vitimas (Nome, Idade, Genero, ID_Incidente)
VALUES
  ('João Silva', 30, 'Masculino', 1),
  ('Ana Souza', 45, 'Feminino', 2),
  ('Marcos Santos', 22, 'Masculino', 3),
  ('Carla Lima', 38, 'Feminino', 4),
  ('Pedro Rocha', 27, 'Masculino', 5),
  ('Mariana Costa', 33, 'Feminino', 6),
  ('Lucas Pereira', 19, 'Masculino', 7),
  ('Isabela Ferreira', 29, 'Feminino', 8),
  ('Rafael Oliveira', 36, 'Masculino', 9),
  ('Laura Santos', 41, 'Feminino', 10),
  ('Bruno Silva', 26, 'Masculino', 11),
  ('Camila Lima', 31, 'Feminino', 12),
  ('Fernando Mendes', 23, 'Masculino', 13),
  ('Vanessa Almeida', 27, 'Feminino', 14),
  ('Gustavo Rodrigues', 34, 'Masculino', 15),
  ('Patrícia Gomes', 39, 'Feminino', 16),
  ('Rodrigo Sousa', 28, 'Masculino', 17),
  ('Letícia Costa', 35, 'Feminino', 18),
  ('Henrique Alves', 24, 'Masculino', 19),
  ('Sandra Oliveira', 43, 'Feminino', 20);

-- Inserção de dados na tabela 'Suspeitos'
INSERT INTO Suspeitos (Nome, Idade, Genero, ID_Incidente)
VALUES
  ('Pedro Santos', 25, 'Masculino', 1),
  ('Mariana Lima', 35, 'Feminino', 2),
  ('Carlos Ferreira', 28, 'Masculino', 3),
  ('Ana Costa', 41, 'Feminino', 4),
  ('Paulo Oliveira', 32, 'Masculino', 5),
  ('Bianca Rodrigues', 27, 'Feminino', 6),
  ('Lucas Almeida', 24, 'Masculino', 7),
  ('Carolina Gomes', 29, 'Feminino', 8),
  ('Felipe Sousa', 33, 'Masculino', 9),
  ('Amanda Lima', 39, 'Feminino', 10),
  ('Ricardo Silva', 26, 'Masculino', 11),
  ('Juliana Mendes', 31, 'Feminino', 12),
  ('Gabriel Alves', 23, 'Masculino', 13),
  ('Larissa Rodrigues', 28, 'Feminino', 14),
  ('Renato Gomes', 34, 'Masculino', 15),
  ('Thais Costa', 38, 'Feminino', 16),
  ('André Sousa', 27, 'Masculino', 17),
  ('Patrícia Oliveira', 36, 'Feminino', 18),
  ('Jorge Almeida', 24, 'Masculino', 19),
  ('Fernanda Rodrigues', 43, 'Feminino', 20);

-- Inserção de dados na tabela 'Testemunhas'
INSERT INTO Testemunhas (Nome, Idade, Genero, ID_Incidente)
VALUES
  ('Maria Oliveira', 40, 'Feminino', 1),
  ('Roberto Santos', 55, 'Masculino', 2),
  ('Carolina Pereira', 29, 'Feminino', 3),
  ('Miguel Silva', 50, 'Masculino', 4),
  ('Amanda Costa', 33, 'Feminino', 5),
  ('Ricardo Gomes', 48, 'Masculino', 6),
  ('Isabela Mendes', 26, 'Feminino', 7),
  ('Marcos Alves', 37, 'Masculino', 8),
  ('Larissa Sousa', 24, 'Feminino', 9),
  ('Gustavo Oliveira', 42, 'Masculino', 10),
  ('Patrícia Lima', 30, 'Feminino', 11),
  ('Felipe Rodrigues', 47, 'Masculino', 12),
  ('Mariana Gomes', 28, 'Feminino', 13),
  ('Renato Costa', 39, 'Masculino', 14),
  ('Camila Sousa', 31, 'Feminino', 15),
  ('Lucas Almeida', 46, 'Masculino', 16),
  ('Laura Oliveira', 27, 'Feminino', 17),
  ('João Alves', 41, 'Masculino', 18),
  ('Ana Mendes', 32, 'Feminino', 19),
  ('Rodrigo Lima', 45, 'Masculino', 20);
  
-- Inserção de dados na tabela 'Estatisticas'
INSERT INTO Estatisticas (Ano, TipoCrime, NumIncidentes, NumVitimas)
VALUES
  (2023, 'Assalto', 15, 20),
  (2023, 'Homicídio', 5, 10),
  (2023, 'Roubo', 12, 18),
  (2023, 'Agressão', 8, 14),
  (2023, 'Estupro', 7, 12),
  (2023, 'Furto', 10, 16),
  (2023, 'Tráfico de drogas', 6, 10),
  (2023, 'Violência doméstica', 9, 15),
  (2023, 'Roubo de veículo', 11, 18),
  (2023, 'Lesão corporal', 4, 8),
  (2023, 'Sequestro', 3, 6),
  (2023, 'Extorsão', 6, 10),
  (2023, 'Racismo', 2, 4),
  (2023, 'Furto de celular', 5, 8),
  (2023, 'Tentativa de homicídio', 7, 12),
  (2023, 'Bullying', 4, 6),
  (2023, 'Roubo a residência', 9, 15),
  (2023, 'Violência sexual', 5, 10),
  (2023, 'Assédio moral', 3, 6),
  (2023, 'Tráfico de pessoas', 6, 10);

