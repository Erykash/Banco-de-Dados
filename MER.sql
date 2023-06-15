-- MER

Incidentes (Data, Localizacao, Descricao, Gravidade)
    PK: ID

Estatisticas (Ano, TipoCrime, NumIncidentes, NumVitimas)
    PK: ID
    FK: ID -> Incidentes(ID)

Vitimas (Nome, Idade, Genero, ID_Incidente)
    PK: ID
    FK: ID_Incidente -> Incidentes(ID)

Crime (ID, Tipo, Descricao)
    PK: ID

Suspeitos (Nome, Idade, Genero, ID_Incidente)
    PK: ID

Testemunhas (Nome, Idade, Genero, ID_Incidente)
    PK: ID
    FK: ID_Incidente -> Incidentes(ID)

Localidades (ID, Nome, Latitude, Longitude)
    PK: ID


      +-----------------+              +----------------+             +-----------------+
      |    Incidentes   |              |  Estatisticas  |             |     Vitimas     |
      +-----------------+              +----------------+             +-----------------+
      |     ID (PK)     |              |     ID (PK)    |             |     ID (PK)     |
      |     Data        |              |     Ano        |             |  ID_Incidente   |
      |   Localizacao   |              |   TipoCrime    |             |     Nome        |
      |    Descricao    |              |  NumIncidentes |             |     Idade       |
      |    Gravidade    |              |  NumVitimas   |             |    Genero       |
      +-----------------+              +----------------+             +-----------------+
            |                              ^                                |
            |                              |                                |
         (1:N)                            |                             (1:N)
            |                              |                                |
            v                              |                                v
      +-----------------+              +----------------+             +-----------------+
      |      Crime      |              |   Suspeitos    |             |    Testemunhas  |
      +-----------------+              +----------------+             +-----------------+
      |     ID (PK)     |              |     ID (PK)    |             |     ID (PK)     |
      |      Tipo       |              |      Nome      |             |  ID_Incidente   |
      |    Descricao    |              |    Genero      |             |     Nome        |
      |                 |              |   Descricao    |             |    Genero       |
      +-----------------+              +----------------+             |    Descricao    |
                                                                      +-----------------+
                           (1:1)
                              |
                              |
                              v
                       +-----------------+
                       |    Localidades  |
                       +-----------------+
                       |     ID (PK)     |
                       |      Nome       |
                       |    Latitude     |
                       |    Longitude    |
                       +-----------------+

