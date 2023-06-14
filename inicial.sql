use projeto_final;

-- Criação da tabela 'Incidentes'
CREATE TABLE Incidentes (
  ID INT AUTO_INCREMENT PRIMARY KEY,
  Data DATE,
  Localizacao VARCHAR(255),
  Descricao TEXT,
  Gravidade VARCHAR(50)
);

-- Criação da tabela 'Vitimas'
CREATE TABLE Vitimas (
  ID INT AUTO_INCREMENT PRIMARY KEY,
  Nome VARCHAR(100),
  Idade INT,
  Genero VARCHAR(20),
  ID_Incidente INT,
  FOREIGN KEY (ID_Incidente) REFERENCES Incidentes(ID)
);

-- Criação da tabela 'Suspeitos'
CREATE TABLE Suspeitos (
  ID INT AUTO_INCREMENT PRIMARY KEY,
  Nome VARCHAR(100),
  Idade INT,
  Genero VARCHAR(20),
  ID_Incidente INT,
  FOREIGN KEY (ID_Incidente) REFERENCES Incidentes(ID)
);

-- Criação da tabela 'Testemunhas'
CREATE TABLE Testemunhas (
  ID INT AUTO_INCREMENT PRIMARY KEY,
  Nome VARCHAR(100),
  Idade INT,
  Genero VARCHAR(20),
  ID_Incidente INT,
  FOREIGN KEY (ID_Incidente) REFERENCES Incidentes(ID)
);

-- Criação da tabela 'Estatisticas'
CREATE TABLE Estatisticas (
  ID INT AUTO_INCREMENT PRIMARY KEY,
  Ano INT,
  TipoCrime VARCHAR(100),
  NumIncidentes INT,
  NumVitimas INT
);
