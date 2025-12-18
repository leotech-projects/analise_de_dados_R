A seguir está a **explicação linha por linha**, com o **significado de cada comando e dos principais termos** do código em R utilizado.

---

### **1. Verificação e carregamento do pacote**

```r
if (!require(openxlsx)) {
```

* `if` → estrutura condicional (“se”).
* `!` → operador lógico de negação (“não”).
* `require(openxlsx)` → verifica se o pacote **openxlsx** está carregado.
* A condição significa: **“se o pacote openxlsx NÃO estiver disponível”**.

```r
  install.packages("openxlsx")
```

* `install.packages()` → instala pacotes no R a partir da internet.
* `"openxlsx"` → nome do pacote responsável por criar arquivos Excel.

```r
  library(openxlsx)
}
```

* `library(openxlsx)` → carrega o pacote para uso.
* `}` → finaliza o bloco do `if`.

---

### **2. Definição do número de linhas**

```r
n <- 93
```

* `n` → variável que armazena um valor.
* `<-` → operador de atribuição (recebe).
* `93` → número total de linhas do conjunto de dados.

---

### **3. Criação do data frame**

```r
motos93 <- data.frame(
```

* `motos93` → nome do objeto criado.
* `data.frame()` → função que cria uma tabela (planilha) no R.
* `(` → início da definição das colunas.

---

### **4. Coluna ID**

```r
  ID = 1:n,
```

* `ID` → nome da coluna.
* `=` → associa o nome da coluna aos dados.
* `1:n` → sequência numérica de 1 até 93.
* `,` → separa colunas.

---

### **5. Coluna modelo**

```r
  modelo = sample(c("modelo A", "modelo B", "modelo C", "modelo D"), n, replace = TRUE),
```

* `modelo` → nome da coluna.
* `sample()` → função que sorteia valores aleatórios.
* `c()` → cria um vetor (conjunto de valores).
* `"modelo A"...` → valores possíveis.
* `n` → quantidade de valores a serem sorteados (93).
* `replace = TRUE` → permite repetição dos valores.

---

### **6. Coluna marca**

```r
  marca = sample(c("marca X", "marca Y", "marca Z"), n, replace = TRUE),
```

* Mesma lógica da coluna `modelo`.
* Sorteia aleatoriamente uma marca para cada linha.

---

### **7. Coluna ano**

```r
  ano = rep(1993, n),
```

* `ano` → nome da coluna.
* `rep()` → repete um valor.
* `1993` → valor repetido.
* `n` → número de repetições (93).

---

### **8. Coluna origem**

```r
  origem = sample(c("Brasil", "Japão", "EUA", "Alemanha"), n, replace = TRUE),
```

* Sorteia aleatoriamente a origem da motocicleta.
* `replace = TRUE` → permite repetir países.

---

### **9. Coluna Horsepower**

```r
  Horsepower = sample(150:200, n, replace = TRUE),
```

* `150:200` → sequência de números de 150 a 200.
* Cada linha recebe um valor aleatório de potência.

---

### **10. Coluna peso**

```r
  peso = sample(180:250, n, replace = TRUE),
```

* Sorteia pesos entre 180 e 250 kg.
* Um valor para cada linha.

---

### **11. Coluna cilindrada**

```r
  cilindrada = sample(c(750, 800, 1000, 1100), n, replace = TRUE)
)
```

* Define os valores possíveis de cilindrada.
* `)` → encerra o `data.frame`.

---

### **12. Exportação para Excel**

```r
write.xlsx(motos93, file = "motos93.xlsx", rowNames = FALSE)
```

* `write.xlsx()` → função do pacote **openxlsx**.
* `motos93` → objeto que será exportado.
* `file = "motos93.xlsx"` → nome do arquivo Excel.
* `rowNames = FALSE` → não inclui numeração automática das linhas.

---

### **Resumo técnico**

* O código cria uma **tabela estruturada (data frame)**.
* Preenche os dados com **valores fixos e aleatórios**.
* Exporta o resultado para um **arquivo Excel compatível com o Microsoft Excel**.
* É **reprodutível, organizado e adequado para análise estatística**.

Se desejar, posso explicar **funções estatísticas aplicáveis**, **visualizações** ou **como importar o Excel de volta para o R**.
