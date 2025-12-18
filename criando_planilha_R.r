# Instalar o pacote se necessário
if (!require(openxlsx)) {
  install.packages("openxlsx")
  library(openxlsx)
}

# Definir número de linhas
n <- 93

# Criar data frame
motos93 <- data.frame(
  ID = 1:n,
  modelo = sample(c("modelo A", "modelo B", "modelo C", "modelo D"), n, replace = TRUE),
  marca = sample(c("marca X", "marca Y", "marca Z"), n, replace = TRUE),
  ano = rep(1993, n),
  origem = sample(c("Brasil", "Japão", "EUA", "Alemanha"), n, replace = TRUE),
  Horsepower = sample(150:200, n, replace = TRUE),
  peso = sample(180:250, n, replace = TRUE),
  cilindrada = sample(c(750, 800, 1000, 1100), n, replace = TRUE)
)

# Exportar para Excel
write.xlsx(motos93, file = "motos93.xlsx", rowNames = FALSE)
