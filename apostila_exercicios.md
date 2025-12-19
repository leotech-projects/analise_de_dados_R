# Apostila de Exercícios – Introdução à Linguagem R

## 1. Objetivo

Esta apostila apresenta uma coleção de exercícios práticos para iniciantes na linguagem R, organizados por nível de dificuldade e cobrindo conceitos fundamentais, manipulação de dados, gráficos e aplicação de pacotes.

---

## 2. Exercícios Básicos

### 2.1. Objetos e Operações

1. Crie três objetos numéricos: `a`, `b`, e `c`. Atribua valores inteiros a cada um.
2. Calcule: a) `a + b`, b) `b * c`, c) `(a + b + c) / 3`.
3. Crie um objeto chamado `nome` que receba seu nome completo.

### 2.2. Vetores

4. Crie um vetor chamado `idades` contendo cinco valores numéricos.
5. Calcule a média, mediana e desvio padrão do vetor.
6. Crie um vetor de caracteres contendo cinco nomes.

---

## 3. Exercícios Intermediários

### 3.1. Data Frames

7. Crie um data frame chamado `pessoas` com as colunas: `nome`, `idade` e `cidade`.
8. Exiba as primeiras e últimas linhas do data frame.
9. Utilize a função `summary()` para obter estatísticas básicas.

### 3.2. Importação de Dados

10. Crie um arquivo CSV simples (pode ser manualmente no Excel) com três colunas: `produto`, `quantidade`, `valor`.
11. Importe o arquivo no R usando a função `read.csv()`.
12. Verifique a estrutura com `str()`.

### 3.3. Uso do pacote dplyr

13. Instale e carregue o pacote `dplyr`.
14. A partir do data frame importado, filtre apenas produtos com quantidade superior a 10.
15. Selecione somente as colunas `produto` e `valor`.
16. Ordene os produtos pelo `valor` de forma crescente.
17. Crie uma nova coluna chamada `total` contendo `quantidade * valor`.

---

## 4. Exercícios Avançados

### 4.1. Agrupamento e Sumarização

18. Agrupe o data frame por `produto` e calcule o total vendido de cada um.
19. Converta o resultado em um novo data frame chamado `resumo_vendas`.

### 4.2. Gráficos

20. Crie um gráfico de barras com a quantidade de cada produto.
21. Crie um gráfico de dispersão relacionando `quantidade` e `valor`.
22. Geração de um histograma para a coluna `valor`.

---
## 4.3. Exercícios sobre Criação de Funções

Crie uma função chamada dobro() que receba um número e retorne o dobro.

Crie uma função media3() que calcule a média de três números.

Crie uma função categorizar_idade() que receba uma idade e retorne:

"jovem" se idade < 30

"adulto" se idade entre 30 e 59

"idoso" se idade >= 60

Crie uma função que receba um vetor numérico e retorne o maior valor.

Crie uma função que receba um data frame e retorne apenas as colunas numéricas.

## 5. Projeto Final

### O aluno deve:

1. Importar qualquer base de dados pequena (Excel ou CSV).
2. Limpar os dados (remover linhas vazias, corrigir tipos de variáveis).
3. Criar um data frame organizado.
4. Realizar manipulações utilizando `dplyr` (filtros, ordenações, mutações).
5. Construir ao menos dois gráficos analisando os dados.
6. Exportar os resultados limpos para um novo arquivo CSV ou XLSX.

---

## 6. Orientações Gerais

* Utilize o RStudio para maior produtividade.
* Execute cada exercício separadamente para visualizar o comportamento do código.
* Anote suas conclusões sobre cada operação realizada.

---



