# Estatística Básica

# Parte 5 - Tabela de Frequência

# Definindo a pasta de trabalho
# Substitua o caminho abaixo pela pasta no seu computador
setwd("C:/Users/Administrador/Documents/PowerBI/Cap12") # \ -> /
getwd()

# Carregando os dados
dados <- read.table("data/Usuarios.csv",
                    dec = ".",
                    sep = ",",
                    h = T,  # header = true, considerar primeira linha como cabeçalho
                    fileEncoding = "windows-1252")

# Visualizando e sumarizando os dados
View(dados)
names(dados)
str(dados)
summary(dados$salario)
summary(dados$grau_instrucao)
mean(dados$salario)
mean(dados$grau_instrucao) # tabela de tipo texto, vai dar erro

# Tabela de Frequências Absolutas
freq <- table(dados$grau_instrucao)
View(freq)

# Tabela de Frequências Relativas
freq_rel <- prop.table(freq)
View(freq_rel)

# Porcentagem (100 * freq_rel_table)
p_freq_rel <- 100 * prop.table(freq_rel)
View(p_freq_rel)

# Adiciona linhas de total
View(freq)
freq <- c(freq, sum(freq))
View(freq)
names(freq)[4] <- "Total" # no índice 4
View(freq)

# Tabela final com todos os valores

# Calculamos frequência relativa e frequência proporcional
freq_rel <- c(freq_rel, sum(freq_rel))
p_freq_rel <- c(p_freq_rel, sum(p_freq_rel))

# Tabela final com todos os vetores
tabela_final <- cbind(freq,
                      freq_rel = round(freq_rel, digits = 2),
                      p_freq_rel = round(p_freq_rel, digits = 2))
View(tabela_final)