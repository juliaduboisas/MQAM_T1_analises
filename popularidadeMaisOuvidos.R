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

# CONTAGEM DAS REPETIÇÕES DE ARTISTAS
contagem <- musicas_artistas %>% count(artist_id, sort=TRUE)
contagem_BR <- musicas_artistas_BR %>% count(artist_id, sort=TRUE)
contagem_AT <- musicas_artistas_AT %>% count(artist_id, sort=TRUE)
contagem_CA <- musicas_artistas_CA %>% count(artist_id, sort=TRUE)
contagem_DE <- musicas_artistas_DE %>% count(artist_id, sort=TRUE)
contagem_GB <- musicas_artistas_GB %>% count(artist_id, sort=TRUE)
contagem_IN <- musicas_artistas_IN %>% count(artist_id, sort=TRUE)
contagem_MX <- musicas_artistas_MX %>% count(artist_id, sort=TRUE)
contagem_NG <- musicas_artistas_NG %>% count(artist_id, sort=TRUE)
contagem_SG <- musicas_artistas_SG %>% count(artist_id, sort=TRUE)
contagem_US <- musicas_artistas_US %>% count(artist_id, sort=TRUE)
contagem_NZ <- musicas_artistas_NZ %>% count(artist_id, sort=TRUE)
contagem_ZA <- musicas_artistas_ZA %>% count(artist_id, sort=TRUE)

# MERGE DA CONTAGEM COM AS INFORMAÇÕES DOS ARTISTAS
# (QUE TINHAM SIDO APAGADAS POR RAZÕES QUE ME ESCAPAM)
contagem_artistas <- merge(contagem, artistas, by.x="artist_id", by.y="id", all.x=TRUE)
contagem_artistas_BR <- merge(contagem_BR, artistas, by.x="artist_id", by.y="id", all.x=TRUE)
contagem_artistas_AT <- merge(contagem_AT, artistas, by.x="artist_id", by.y="id", all.x=TRUE)
contagem_artistas_CA <- merge(contagem_CA, artistas, by.x="artist_id", by.y="id", all.x=TRUE)
contagem_artistas_DE <- merge(contagem_DE, artistas, by.x="artist_id", by.y="id", all.x=TRUE)
contagem_artistas_GB <- merge(contagem_GB, artistas, by.x="artist_id", by.y="id", all.x=TRUE)
contagem_artistas_IN <- merge(contagem_IN, artistas, by.x="artist_id", by.y="id", all.x=TRUE)
contagem_artistas_MX <- merge(contagem_MX, artistas, by.x="artist_id", by.y="id", all.x=TRUE)
contagem_artistas_NG <- merge(contagem_NG, artistas, by.x="artist_id", by.y="id", all.x=TRUE)
contagem_artistas_SG <- merge(contagem_SG, artistas, by.x="artist_id", by.y="id", all.x=TRUE)
contagem_artistas_US <- merge(contagem_US, artistas, by.x="artist_id", by.y="id", all.x=TRUE)
contagem_artistas_NZ <- merge(contagem_NZ, artistas, by.x="artist_id", by.y="id", all.x=TRUE)
contagem_artistas_ZA <- merge(contagem_ZA, artistas, by.x="artist_id", by.y="id", all.x=TRUE)

# MERGE DA CONTAGEM E DOS ARTISTAS COM AS MÚSICAS
#(QUE TINHAM SIDO APAGADAS POR RAZÕES QUE ME ESCAPAM)
musicas_contagem_artistas <- merge(contagem_artistas, musicas, by.x="artist_id", by.y="id", all.x=TRUE)
musicas_contagem_artistas_BR <- merge(contagem_artistas_BR, musicas_BR, by.x="artist_id", by.y="artist_id", all.x=TRUE)
musicas_contagem_artistas_AT <- merge(contagem_artistas_AT, musicas_AT, by.x="artist_id", by.y="artist_id", all.x=TRUE)
musicas_contagem_artistas_CA <- merge(contagem_artistas_CA, musicas_CA, by.x="artist_id", by.y="artist_id", all.x=TRUE)
musicas_contagem_artistas_DE <- merge(contagem_artistas_DE, musicas_DE, by.x="artist_id", by.y="artist_id", all.x=TRUE)
musicas_contagem_artistas_GB <- merge(contagem_artistas_GB, musicas_GB, by.x="artist_id", by.y="artist_id", all.x=TRUE)
musicas_contagem_artistas_IN <- merge(contagem_artistas_IN, musicas_IN, by.x="artist_id", by.y="artist_id", all.x=TRUE)
musicas_contagem_artistas_MX <- merge(contagem_artistas_MX, musicas_MX, by.x="artist_id", by.y="artist_id", all.x=TRUE)
musicas_contagem_artistas_NG <- merge(contagem_artistas_NG, musicas_NG, by.x="artist_id", by.y="artist_id", all.x=TRUE)
musicas_contagem_artistas_SG <- merge(contagem_artistas_SG, musicas_SG, by.x="artist_id", by.y="artist_id", all.x=TRUE)
musicas_contagem_artistas_US <- merge(contagem_artistas_US, musicas_US, by.x="artist_id", by.y="artist_id", all.x=TRUE)
musicas_contagem_artistas_NZ <- merge(contagem_artistas_NZ, musicas_NZ, by.x="artist_id", by.y="artist_id", all.x=TRUE)
musicas_contagem_artistas_ZA <- merge(contagem_artistas_ZA, musicas_ZA, by.x="artist_id", by.y="artist_id", all.x=TRUE)

# ORGANIZAÇÃO DAS TABELAS PRIMEIRAMENTE EM ORDEM DECRESCENTE DA CONTAGEM,
# DESEMPATADOS PELO RANKING DA MÚSICA NO PAÍS (OU POPULARIDADE NO CASO DA GLOBAL)
sorted <- clean %>% as.data.frame() %>% arrange(desc(n), popularity)
sorted_BR <- musicas_contagem_artistas_BR %>% as.data.frame() %>% arrange(desc(n), rank)
sorted_AT <- musicas_contagem_artistas_AT %>% as.data.frame() %>% arrange(desc(n), rank)
sorted_CA <- musicas_contagem_artistas_CA %>% as.data.frame() %>% arrange(desc(n), rank)
sorted_DE <- musicas_contagem_artistas_DE %>% as.data.frame() %>% arrange(desc(n), rank)
sorted_GB <- musicas_contagem_artistas_GB %>% as.data.frame() %>% arrange(desc(n), rank)
sorted_IN <- musicas_contagem_artistas_IN %>% as.data.frame() %>% arrange(desc(n), rank)
sorted_MX <- musicas_contagem_artistas_MX %>% as.data.frame() %>% arrange(desc(n), rank)
sorted_NG <- musicas_contagem_artistas_NG %>% as.data.frame() %>% arrange(desc(n), rank)
sorted_SG <- musicas_contagem_artistas_SG %>% as.data.frame() %>% arrange(desc(n), rank)
sorted_US <- musicas_contagem_artistas_US %>% as.data.frame() %>% arrange(desc(n), rank)
sorted_NZ <- musicas_contagem_artistas_NZ %>% as.data.frame() %>% arrange(desc(n), rank)
sorted_ZA <- musicas_contagem_artistas_ZA %>% as.data.frame() %>% arrange(desc(n), rank)

# LIMPEZA DOS DADOS REPETIDOS POR CONTA DO MERGE COM AS MÚSICAS
# REALIZADA APÓS O SORT PORQUE MANTÉM A MÚSICA MAIS ALTA (PRIMEIRA OBSERVAÇÃO)
# DE CADA ARTISTA
clean <- sorted %>% distinct(artist_id, .keep_all=TRUE)
clean_BR <- sorted_BR %>% distinct(artist_id, .keep_all = TRUE)
clean_AT <- sorted_AT %>% distinct(artist_id, .keep_all = TRUE)
clean_CA <- sorted_CA %>% distinct(artist_id, .keep_all = TRUE)
clean_DE <- sorted_DE %>% distinct(artist_id, .keep_all = TRUE)
clean_GB <- sorted_GB %>% distinct(artist_id, .keep_all = TRUE)
clean_IN <- sorted_IN %>% distinct(artist_id, .keep_all = TRUE)
clean_MX <- sorted_MX %>% distinct(artist_id, .keep_all = TRUE)
clean_NG <- sorted_NG %>% distinct(artist_id, .keep_all = TRUE)
clean_SG <- sorted_SG %>% distinct(artist_id, .keep_all = TRUE)
clean_US <- sorted_US %>% distinct(artist_id, .keep_all = TRUE)
clean_NZ <- sorted_NZ %>% distinct(artist_id, .keep_all = TRUE)
clean_ZA <- sorted_ZA %>% distinct(artist_id, .keep_all = TRUE)

# MONTAGEM DO BARPLOT

## aspectos estéticos
tamanhoFonte <- 0.5
corBarras <- "#90ee90"

## criação dos plots
barplot(clean$popularity[1:15],
        names.arg = clean$name.x[1:15],
        las=2,
        cex.names=tamanhoFonte,
        col=corBarras,
        main="Popularidade dos artistas mais ouvidos - GLOBAL")

barplot(clean_BR$popularity[1:15],
        names.arg = clean_BR$name.x[1:15],
        las=2,
        cex.names=tamanhoFonte,
        col=corBarras,
        main="Popularidade dos artistas mais ouvidos - BRASIL")

barplot(clean_AT$popularity[1:15],
        names.arg = clean_AT$name.x[1:15],
        las=2,
        cex.names=tamanhoFonte,
        col=corBarras,
        main="Popularidade dos artistas mais ouvidos - AUSTRÁLIA")

barplot(clean_CA$popularity[1:15],
        names.arg = clean_CA$name.x[1:15],
        las=2,
        cex.names=tamanhoFonte,
        col=corBarras,
        main="Popularidade dos artistas mais ouvidos - CANADÁ")

barplot(clean_DE$popularity[1:15],
        names.arg = clean_DE$name.x[1:15],
        las=2,
        cex.names=tamanhoFonte,
        col=corBarras,
        main="Popularidade dos artistas mais ouvidos - ALEMANHA")

barplot(clean_GB$popularity[1:15],
        names.arg = clean_GB$name.x[1:15],
        las=2,
        cex.names=tamanhoFonte,
        col=corBarras,
        main="Popularidade dos artistas mais ouvidos - REINO UNIDO")

barplot(clean_IN$popularity[1:15],
        names.arg = clean_IN$name.x[1:15],
        las=2,
        cex.names=tamanhoFonte,
        col=corBarras,
        main="Popularidade dos artistas mais ouvidos - ÍNDIA")

barplot(clean_MX$popularity[1:15],
        names.arg = clean_MX$name.x[1:15],
        las=2,
        cex.names=tamanhoFonte,
        col=corBarras,
        main="Popularidade dos artistas mais ouvidos - MÉXICO")

barplot(clean_NG$popularity[1:15],
        names.arg = clean_NG$name.x[1:15],
        las=2,
        cex.names=tamanhoFonte,
        col=corBarras,
        main="Popularidade dos artistas mais ouvidos - NIGÉRIA")

barplot(clean_SG$popularity[1:15],
        names.arg = clean_SG$name.x[1:15],
        las=2,
        cex.names=tamanhoFonte,
        col=corBarras,
        main="Popularidade dos artistas mais ouvidos - SINGAPURA")

barplot(clean_US$popularity[1:15],
        names.arg = clean_US$name.x[1:15],
        las=2,
        cex.names=tamanhoFonte,
        col=corBarras,
        main="Popularidade dos artistas mais ouvidos - ESTADOS UNIDOS")

barplot(clean_NZ$popularity[1:15],
        names.arg = clean_NZ$name.x[1:15],
        las=2,
        cex.names=tamanhoFonte,
        col=corBarras,
        main="Popularidade dos artistas mais ouvidos - NOVA ZELÂNDIA")

barplot(clean_ZA$popularity[1:15],
        names.arg = clean_ZA$name.x[1:15],
        las=2,
        cex.names=tamanhoFonte,
        col=corBarras,
        main="Popularidade dos artistas mais ouvidos - ÁFRICA DO SUL")

