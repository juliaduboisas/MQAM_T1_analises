library(readr)
library(magrittr)
library(dplyr)

artistas <- read_csv("Documents/faculdade/usp/sem4/MQAM/T1/artistas.csv")
genero <- read_csv("Documents/faculdade/usp/sem4/MQAM/T1/genero.csv")
musicas <- read_csv("Documents/faculdade/usp/sem4/MQAM/T1/musicas.csv")

# SEPARANDO AS OBSERVAÇÕES POR PAÍS
musicas_BR <- head(musicas, 100)
musicas_AT <- musicas[101:200, ]
musicas_CA <- musicas[201:300, ]
musicas_DE <- musicas[301:400, ]
musicas_GB <- musicas[401:500, ]
musicas_IN <- musicas[501:600, ]
musicas_MX <- musicas[601:700, ]
musicas_NG <- musicas[701:800, ]
musicas_SG <- musicas[801:900, ]
musicas_US <- musicas[901:1000, ]
musicas_NZ <- musicas[1001:1100, ]
musicas_ZA <- musicas[1101:1200, ]

# MERGE DAS MÚSICAS COM OS ARTISTAS
musicas_artistas <- merge(musicas, artistas, by.x="artist_id", by.y = "id", all.x=TRUE)
musicas_artistas_BR <- merge(musicas_BR, artistas, by.x="artist_id", by.y = "id", all.x=TRUE)
musicas_artistas_AT <- merge(musicas_AT, artistas, by.x="artist_id", by.y = "id", all.x=TRUE)
musicas_artistas_CA <- merge(musicas_CA, artistas, by.x="artist_id", by.y = "id", all.x=TRUE)
musicas_artistas_DE <- merge(musicas_DE, artistas, by.x="artist_id", by.y = "id", all.x=TRUE)
musicas_artistas_GB <- merge(musicas_GB, artistas, by.x="artist_id", by.y = "id", all.x=TRUE)
musicas_artistas_IN <- merge(musicas_IN, artistas, by.x="artist_id", by.y = "id", all.x=TRUE)
musicas_artistas_MX <- merge(musicas_MX, artistas, by.x="artist_id", by.y = "id", all.x=TRUE)
musicas_artistas_NG <- merge(musicas_NG, artistas, by.x="artist_id", by.y = "id", all.x=TRUE)
musicas_artistas_SG <- merge(musicas_SG, artistas, by.x="artist_id", by.y = "id", all.x=TRUE)
musicas_artistas_US <- merge(musicas_US, artistas, by.x="artist_id", by.y = "id", all.x=TRUE)
musicas_artistas_NZ <- merge(musicas_NZ, artistas, by.x="artist_id", by.y = "id", all.x=TRUE)
musicas_artistas_ZA <- merge(musicas_ZA, artistas, by.x="artist_id", by.y = "id", all.x=TRUE)

# MONTAGEM DO HISTOGRAMA

## aspectos estéticos
tamanhoFonte <- 0.5
corBarras <- "#90ee90"

## criação dos plots
hist(musicas_artistas$popularity,
     col=corBarras,
     xlab="Popularidade",
     ylab="Frequência",
     main="Artistas mais ouvidos - GLOBAL")

hist(musicas_artistas_BR$popularity,
     col=corBarras,
     xlab="Popularidade",
     ylab="Frequência",
     main="Artistas mais ouvidos - BRASIL")

hist(musicas_artistas_AT$popularity,
     col=corBarras,
     xlab="Popularidade",
     ylab="Frequência",
     main="Artistas mais ouvidos - AUSTRÁLIA")

hist(musicas_artistas_CA$popularity,
     col=corBarras,
     xlab="Popularidade",
     ylab="Frequência",
     main="Artistas mais ouvidos - CANADÁ")

hist(musicas_artistas_DE$popularity,
     col=corBarras,
     xlab="Popularidade",
     ylab="Frequência",
     main="Artistas mais ouvidos - ALEMANHA")

hist(musicas_artistas_GB$popularity,
     col=corBarras,
     xlab="Popularidade",
     ylab="Frequência",
     main="Artistas mais ouvidos - REINO UNIDO")

hist(musicas_artistas_IN$popularity,
     col=corBarras,
     xlab="Popularidade",
     ylab="Frequência",
     main="Artistas mais ouvidos - ÍNDIA")

hist(musicas_artistas_MX$popularity,
     col=corBarras,
     xlab="Popularidade",
     ylab="Frequência",
     main="Artistas mais ouvidos - MÉXICO")

hist(musicas_artistas_NG$popularity,
     col=corBarras,
     xlab="Popularidade",
     ylab="Frequência",
     main="Artistas mais ouvidos - NIGÉRIA")

hist(musicas_artistas_SG$popularity,
     col=corBarras,
     xlab="Popularidade",
     ylab="Frequência",
     main="Artistas mais ouvidos - SINGAPURA")

hist(musicas_artistas_US$popularity,
     col=corBarras,
     xlab="Popularidade",
     ylab="Frequência",
     main="Artistas mais ouvidos - ESTADOS UNIDOS")

hist(musicas_artistas_NZ$popularity,
     col=corBarras,
     xlab="Popularidade",
     ylab="Frequência",
     main="Artistas mais ouvidos - NOVA ZELÂNDIA")

hist(musicas_artistas_ZA$popularity,
     col=corBarras,
     xlab="Popularidade",
     ylab="Frequência",
     main="Artistas mais ouvidos - ÁFRICA DO SUL")
