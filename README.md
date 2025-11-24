# 🛒 Sistema de Produtos (CRUD MySQL)

Este projeto apresenta um **banco de dados simples** para o gerenciamento de produtos, utilizando **MySQL** e implementando todas as operações CRUD (*Create, Read, Update e Delete*).

---

## 🤠 Autores

### *Pedro Herique, Eduardo Tabareli, Lucas Miasaki*

**Análise e desenvolvimento de sistema - 2º Período - [AEMS]**


## 🎯 Objetivo

O objetivo deste projeto é demonstrar a criação e manipulação de uma tabela básica de produtos, aplicando:

- Criação de banco de dados e tabelas  
- Inserção, consulta, alteração e exclusão de dados (CRUD)  
- Consultas simples com filtros  
- Estruturação correta de campos e tipos de dados  
- Relacionamentos entre entidades (FK)

---

## 🗂️ Estrutura do Banco de Dados

**Banco:** `sistema_produtos`

### 📦 Tabela: `produtos`

| Coluna   | Tipo             | Descrição                         |
|----------|------------------|-----------------------------------|
| id       | INT (PK, AI)     | Identificador único do produto    |
| nome     | VARCHAR(100)     | Nome do produto                   |
| categoria| VARCHAR(50)      | Categoria a que pertence          |
| preco    | DECIMAL(10,2)    | Preço unitário do produto         |
| estoque  | INT              | Quantidade disponível em estoque  |
| vendedor_id  | INT (FK)     | Vendedor responsável  |

### 😁 Tabela: `clientes`

| Coluna   | Tipo             | Descrição                         |
|----------|------------------|-----------------------------------|
| id       | INT (PK, AI)     | Identificador do cliente    |
| nome     | VARCHAR(100)     | Nome completo               |
| email    | VARCHAR(100)      | Email de contato        |

### 👤 Tabela: `vendedores`

| Coluna   | Tipo             | Descrição                         |
|----------|------------------|-----------------------------------|
| id       | INT (PK, AI)     | Identificador do Vendedor    |
| nome     | VARCHAR(100)     | Nome completo               |
| telefone    | VARCHAR(20)      | Telefone de contato      |

### 🛒 Tabela: `compras`

| Coluna   | Tipo             | Descrição                         |
|----------|------------------|-----------------------------------|
| id       | INT (PK, AI)     | Identificador da compra    |
| cliente_id     | INT (FK)     | Cliente que comprou              |
| produto_id    | INT (FK)      | Produto adquirido      |
| quantidade    | INT     | Quantidade compradda      |
| data_compra    | DATE     | Data da operação      |

---

## 🗺️ Diagrama do Banco de Dados

<img width="818" height="557" alt="image" src="https://github.com/user-attachments/assets/4c95b7f0-b58c-4616-a192-8e47c9a433a6" />


---
## ⚙️ Funcionalidades CRUD

### 🟢 CREATE — Inserção de produtos
```sql
INSERT INTO produtos (nome, categoria, preco, estoque) VALUES
('Mouse Gamer', 'Eletrônicos', 89.90, 25),
('Teclado Mecânico', 'Eletrônicos', 199.90, 15),
('Caderno 200 folhas', 'Papelaria', 12.50, 80);
```

### 🔵 READ — Consulta de produtos
```sql
SELECT * FROM produtos;
```

### 🟡 UPDATE — Atualização de dados
```sql
UPDATE produtos
SET preco = 99.90, estoque = 30
WHERE id = 1;
```

### 🔴 DELETE — Exclusão de produtos
```sql
DELETE FROM produtos
WHERE id = 3;
```
---
