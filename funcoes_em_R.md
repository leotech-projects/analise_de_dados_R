Segue uma explicação clara e objetiva sobre **o que são funções em R** e uma **lista completa das funções mais usadas na prática**, organizadas por categoria.
(É tecnicamente impossível listar *todas* as funções existentes no R, pois existem milhares distribuídas em centenas de pacotes. A lista abaixo cobre as funções essenciais e amplamente utilizadas no RStudio.)

---

# 1. O que são funções em R

Uma **função** em R é um bloco de código que executa uma tarefa específica.
Ela recebe **entradas** (argumentos), realiza um **processamento** e devolve um **resultado**.

Exemplo simples:

```r
soma <- sum(c(1, 2, 3))
```

Aqui:

* `sum()` é a função,
* `c(1, 2, 3)` é o argumento,
* `soma` recebe o resultado (6).

Você também pode criar suas próprias funções:

```r
minha_funcao <- function(x) {
  x * 2
}

minha_funcao(10)   # retorna 20
```

---

# 2. Lista das funções mais utilizadas no R

Organizadas por finalidade, com explicação objetiva.

---

## 2.1. Criação e manipulação de objetos básicos

| Função                | O que faz                      |
| --------------------- | ------------------------------ |
| `c()`                 | Cria vetores.                  |
| `seq()`               | Cria sequências numéricas.     |
| `rep()`               | Repete valores.                |
| `length()`            | Obtém comprimento de um vetor. |
| `class()`             | Mostra a classe do objeto.     |
| `type()` / `typeof()` | Tipo interno do objeto.        |
| `is.numeric()`        | Verifica se é numérico.        |
| `is.character()`      | Verifica se é texto.           |
| `as.numeric()`        | Converte para número.          |
| `as.character()`      | Converte para texto.           |
| `as.factor()`         | Converte para fator.           |

---

## 2.2. Estatística básica

| Função       | Explicação                |
| ------------ | ------------------------- |
| `mean()`     | Média.                    |
| `median()`   | Mediana.                  |
| `sd()`       | Desvio padrão (amostral). |
| `var()`      | Variância.                |
| `sum()`      | Soma.                     |
| `min()`      | Mínimo.                   |
| `max()`      | Máximo.                   |
| `range()`    | Intervalo.                |
| `quantile()` | Percentis.                |

---

## 2.3. Inspeção de dados

| Função              | Explicação                  |
| ------------------- | --------------------------- |
| `head()`            | Mostra primeiras linhas.    |
| `tail()`            | Mostra últimas linhas.      |
| `summary()`         | Estatísticas básicas.       |
| `str()`             | Estrutura da tabela/objeto. |
| `View()`            | Abre tabela estilo Excel.   |
| `glimpse()` (dplyr) | Estrutura enxuta e rápida.  |

---

## 2.4. Data frames e manipulação de tabelas

| Função         | Explicação               |
| -------------- | ------------------------ |
| `data.frame()` | Cria um data frame.      |
| `nrow()`       | Número de linhas.        |
| `ncol()`       | Número de colunas.       |
| `colnames()`   | Nomes das colunas.       |
| `rownames()`   | Nomes das linhas.        |
| `subset()`     | Filtra linhas e colunas. |
| `merge()`      | Junta tabelas.           |

---

## 2.5. Manipulação com dplyr (as mais importantes)

| Função        | Explicação           |
| ------------- | -------------------- |
| `filter()`    | Filtrar linhas.      |
| `select()`    | Selecionar colunas.  |
| `mutate()`    | Criar novas colunas. |
| `arrange()`   | Ordenar.             |
| `summarize()` | Resumo estatístico.  |
| `group_by()`  | Agrupar dados.       |
| `rename()`    | Renomear colunas.    |
| `%>%`         | Pipe (encadeamento). |

---

## 2.6. Importação e exportação

| Função                    | Explicação                             |
| ------------------------- | -------------------------------------- |
| `read.csv()`              | Ler arquivo CSV.                       |
| `write.csv()`             | Exportar CSV.                          |
| `read_excel()`            | Ler Excel (pacote readxl).             |
| `write.xlsx()`            | Exportar Excel (openxlsx).             |
| `save()` / `load()`       | Salvar objetos do R.                   |
| `readRDS()` / `saveRDS()` | Salvar e carregar objetos individuais. |

---

## 2.7. Funções de gráficos base

| Função      | Explicação         |
| ----------- | ------------------ |
| `plot()`    | Gráfico genérico.  |
| `hist()`    | Histograma.        |
| `boxplot()` | Boxplot.           |
| `barplot()` | Gráfico de barras. |
| `lines()`   | Adiciona linhas.   |
| `points()`  | Adiciona pontos.   |
| `title()`   | Título.            |

---

## 2.8. Funções lógicas

| Função     | Explicação              |
| ---------- | ----------------------- |
| `if()`     | Condicional.            |
| `ifelse()` | Condicional vetorizada. |
| `any()`    | Algum elemento é TRUE.  |
| `all()`    | Todos são TRUE.         |
| `which()`  | Retorna posições TRUE.  |

---

## 2.9. Funções relacionadas a loops

| Função     | Explicação                          |
| ---------- | ----------------------------------- |
| `for()`    | Loop tradicional.                   |
| `while()`  | Loop condicional.                   |
| `repeat()` | Loop infinito (até usar break).     |
| `apply()`  | Aplica função às linhas ou colunas. |
| `lapply()` | Aplica função a listas.             |
| `sapply()` | Versão simplificada do lapply.      |

---

## 2.10. Funções úteis gerais

| Função                 | Explicação                     |
| ---------------------- | ------------------------------ |
| `print()`              | Imprime valores.               |
| `paste()` / `paste0()` | Concatena textos.              |
| `cat()`                | Imprime sem formatação típica. |
| `rm()`                 | Remove objetos.                |
| `ls()`                 | Lista objetos na sessão.       |
| `getwd()`              | Diretório atual.               |
| `setwd()`              | Define diretório.              |

---

# 3. Funções próprias (criadas pelo usuário)

Modelo básico:

```r
soma_dobro <- function(x, y) {
  resultado <- (x + y) * 2
  return(resultado)
}
```

