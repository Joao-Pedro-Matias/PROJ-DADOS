# 💊 Sistema de Vendas - E-Farmácia (PostgreSQL)

Este repositório contém o projeto de um sistema de vendas desenvolvido para uma farmácia fictícia, utilizando o banco de dados **PostgreSQL**. 
O sistema foi modelado até a 3° Forma Normal e implementado com comandos DDL, DML e DQL.

## 📁 Estrutura do Repositório

```
📦SQL/
 ┣ 📜 ddl_farmacia.sql
 ┣ 📜 dml_farmacia.sql
 ┣ 📜 dql_consultas.sql
 ┗ 📜 ![image](https://github.com/user-attachments/assets/08b7c21a-c13f-4dbf-8b2a-afb99299705e)

```

## 📋 Conteúdo

- `ddl_farmacia.sql` → Criação de todas as tabelas do banco (clientes, produtos, estoque, pedidos etc.)
- `dml_farmacia.sql` → Inserção de dados iniciais (clientes PF e PJ, produtos, vendas etc.)
- `dql_consultas.sql` → Consultas SQL úteis (relatórios de vendas, produtos mais vendidos, clientes com mais gastos etc.)
- `modelo_erd.png` → Diagrama Entidade-Relacionamento do sistema.

---

## 🧰 Tecnologias Utilizadas

- PostgreSQL 13+
- pgAdmin 4 (ou outro cliente de banco de dados)
- SQL (DDL, DML, DQL)

---

## 🚀 Como Executar o Projeto

### 1. Clone este repositório

```bash
git clone https://github.com/seu-usuario/seu-repositorio.git
cd seu-repositorio
```

### 2. Importe o banco no pgAdmin (ou outro cliente SQL)

1. **Abra o pgAdmin**.
2. Crie um novo banco 
3. Execute os arquivos:
   - `ddl_farmacia.sql` para criar as tabelas.
   - `dml_farmacia.sql` para popular com dados fictícios.
   - `dql_consultas.sql` para testar consultas e gerar relatórios.

---

## 📊 Consultas DQL disponíveis

- Produtos mais vendidos
- Total de vendas por cliente
- Estoque baixo
- Clientes com múltiplos e-mails
- Relatório detalhado de um pedido
- Produtos comprados por cliente
- Vendas por data
- Faturamento por categoria
- Ranking de clientes que mais gastaram
- Lista de e-mails dos clientes

---

## 📧 Contato

Desenvolvido por **Cauã Mesquita**  
📍 Itu - SP  
📫 Email: caua.seuemail@email.com

---

## 🏆 Observações

Esse projeto foi desenvolvido para fins acadêmicos no curso de Análise e Desenvolvimento de Sistemas – SENAI.  
A estrutura atende aos critérios de normalização, documentação e organização exigidos para avaliação.
