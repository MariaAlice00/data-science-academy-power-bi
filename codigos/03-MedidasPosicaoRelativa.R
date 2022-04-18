# Estatística Básica

# Parte 3 - Medidas de Posição Relativa

# Cuidado: a linguagem R é case sensitive! Existe diferença entre letra maiúscula e minúscula

# Definindo a pasta de trabalho
# Substitua o caminho abaixo pela pasta no seu computador
setwd("C:/Users/Administrador/Documents/PowerBI/Cap12") # \ -> /
getwd()

# Carregando o dataset
vendas <- read.csv("Vendas.csv", fileEncoding = "windows-1252")

# Resumo dos dados
head(vendas) # primeiras linhas
tail(vendas) # últimas linhas
View(vendas)

# Medidas de Tendência Central
summary(vendas$Valor)
summary(vendas[c('Valor', 'Custo')]) # summary(vendas$Valor) e summary(vendas$Custo)

# Explorando variáveis numéricas
mean(vendas$Valor) # média
median(vendas$Valor) # mediana
quantile(vendas$Valor) # quartis
quantile(vendas$Valor, probs = c(0.01, 0.99)) # percentis específicos
quantile(vendas$Valor, seq(from = 0, to = 1, by = 0.20)) # percentis de 0 a 100% saltando de 20 em 20
IQR(vendas$Valor) # diferença entre Q3 e Q1
range(vendas$Valor) # intervalo do valor mínimo e máximo
summary(vendas$Valor)
diff(range(vendas$Valor)) # diferença do intervalo do valor mínimo e máximo