-- MER
+----------------+       +---------------+      +-----------------+      +--------------+      +-------------+
|   Incidentes   |       |   Estatisticas   |      |     Vitimas      |      |   Crime      |      |   Suspeitos  |
+----------------+       +---------------+      +-----------------+      +--------------+      +-------------+
|     ID (PK)     |       |     ID (PK)     |      |   ID (PK)        |      |   ID (PK)    |      |   ID (PK)    |
|     Data        |       |     Ano         |      |   ID_Incidente   |      |   Tipo       |      |   Nome       |
|     Localizacao |       |     TipoCrime   |      |   ID_Crime       |      |   Descricao  |      |   Genero     |
|     Descricao   |       |     NumIncidentes |    |   ID_Suspeito     |      |   Penalidade |      |   Descricao  |
|     Gravidade   |       |     NumVitimas  |      |   Nome           |      |              |      +-------------+
+----------------+       +---------------+      +-----------------+      +--------------+

   +-------------+        +------------------+
   |  Testemunhas |        |    Localidades   |
   +-------------+        +------------------+
   |  ID (PK)     |        |    ID (PK)       |
   |  ID_Incidente|        |    Nome          |
   |  Nome        |        |    Latitude      |
   |  Genero      |        |    Longitude     |
   |  Descricao   |        +------------------+
   +-------------+
