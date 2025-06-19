# 💊 Sistema de Vendas - E-Farmácia (PostgreSQL)

Este repositório contém o projeto de um sistema de vendas desenvolvido para uma farmácia fictícia, utilizando o banco de dados **PostgreSQL**. 
O sistema foi modelado até a 3° Forma Normal e implementado com comandos DDL, DML e DQL.

## 📁 Estrutura do Repositório

```
📦SQL/
 ┣ 📜 01_ddl_create_tables.sql
 ┣ 📜 02_dml_insert_data.sql
 ┗ 📜 03_dql_queries.sql


```

## 📋 Conteúdo

- `01_ddl_create_tables.sql` → Criação de todas as tabelas do banco (clientes, produtos, estoque, pedidos etc.)
- `02_dml_insert_data.sql` → Inserção de dados iniciais (clientes PF e PJ, produtos, vendas etc.)
- `03_dql_queries.sql` → Consultas SQL úteis (relatórios de vendas, produtos mais vendidos, clientes com mais gastos etc.)
- `https://drive.google.com/file/d/1uTnBYE4h1zPL2PExB1Rc3x79bp4nmj5u/view?usp=sharing ` → Diagrama Entidade-Relacionamento do sistema.

---

## 🧰 Tecnologias Utilizadas

- PostgreSQL 13+
- pgAdmin 4 (ou outro cliente de banco de dados)
- SQL (DDL, DML, DQL)

---

## 🚀 Como Executar o Projeto

### 1. Clone este repositório

```bash
git clone https://github.com/Joao-Pedro-Matias/PROJ-DADOS.git
cd seu-repositorio
```

### 2. Importe o banco no pgAdmin (ou outro cliente SQL)

1. **Abra o pgAdmin**.
2. Crie um novo banco 
3. Execute os arquivos:
   - `01_ddl_create_tables.sql` para criar as tabelas.
   - `02_dml_insert_data.sql` para popular com dados fictícios.
   - `03_dql_queries.sql` para testar consultas e gerar relatórios.

---

## 📊 Consultas DQL disponíveis

- Produtos mais vendidos;
- Total gasto por cliente (PF e PJ);
- Estoque;
- Email dos clientes;
- Consulta detalhada de um pedido;
- Produtos comprados por cliente;
- Vendas por data;
- Receita gerada de acordo com a categoria de produto;
- Total de pedidos por cliente.

---

## 📧 Contato

Desenvolvido por **Cauã Mesquita, **  
                 **Lucas Ianovski, ** 
                 **João Matias, ** 
                 **Caique Tessaroto.** 
📍 Sorocaba - SP  

---
