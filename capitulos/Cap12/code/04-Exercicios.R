# Exercício

# Definindo a pasta de trabalho
# Substitua o caminho abaixo pela pasta no seu computador
setwd("C:/Users/Administrador/Documents/PowerBI/Cap12")
getwd()

# Carregando o dataset
notas <- read.csv("data/Notas.csv", fileEncoding = "windows-1252")

# Exercício 1: Apresente um resumo de tipos de dados e estatísticasdo dataset.
View(notas)
str(notas)
summary(notas$TurmaA)
summary(notas$TurmaB)

# Exercício 2: Qual a média de cada turma?
media <- function(nota) {
  media_resultado <- mean(nota)
}

print(media(notas$TurmaA))
print(media(notas$TurmaB))

# Exercício 3: Qual turma apresentou maior variabilidade de notas? Justifique sua resposta.
desvio_padrao <- function(nota) {
  desvio_padrao_resultado <- sd(nota)
}

print(desvio_padrao(notas$TurmaA))
print(desvio_padrao(notas$TurmaB))

# Exercício 4 -Calcule o coeficiente de variação das 2 turmas.
coeficiente_variacao <- function(desvio_padrao, media) {
  cv <- (desvio_padrao / media) * 100
}

print(coeficiente_variacao(desvio_padrao(notas$TurmaA), media(notas$TurmaA)))
print(coeficiente_variacao(desvio_padrao(notas$TurmaB), media(notas$TurmaB)))

# Exercício 5 -Qual nota apareceu mais vezes em cada turma?
moda <- function(nota) {
  moda_resultado <- unique(nota)
  moda_resultado[which.max(tabulate(match(nota, moda_resultado)))]
}

print(moda(notas$TurmaA))
print(moda(notas$TurmaB))









