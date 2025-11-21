# 🍞 Projeto de Banco de Dados - ERP Pão Dourado Massas

Este repositório contém o projeto lógico e físico de um Banco de Dados Relacional desenvolvido para o sistema de gestão (ERP) da padaria **Pão Dourado Massas**. O projeto foi concebido como requisito parcial da disciplina de **Banco de Dados I** do curso de **Ciência da Computação** da **Universidade do Estado do Rio Grande do Norte (UERN)**.

-----

## 📋 Sobre o Projeto

O objetivo principal foi modelar e implementar uma base de dados capaz de sustentar as operações diárias de uma padaria de médio porte, garantindo a integridade dos dados e permitindo análises gerenciais.

O sistema cobre os seguintes módulos operacionais:

  * **Gestão de Pessoal:** Cadastro de colaboradores, cargos e salários.
  * **Gestão de Produtos:** Cardápio digital, controle de validade e tipos de produtos.
  * **Controle de Estoque:** Rastreamento de matéria-prima e vínculo com fornecedores.
  * **Financeiro e Vendas:** Registro transacional de vendas (vinculadas ao colaborador) e controle de despesas operacionais.

-----

## 🛠️ Tecnologias Utilizadas

  * **SGBD:** PostgreSQL 17
  * **Interface de Gerenciamento:** pgAdmin 4
  * **Modelagem:** Conceitual (DER) e Lógica (Relacional)
  * **Linguagem:** SQL (DDL e DML)

-----

## 🗂️ Estrutura do Banco de Dados

O banco foi normalizado até a **3ª Forma Normal (3FN)** para evitar redundâncias e anomalias de atualização. Abaixo, o resumo das principais entidades:

### Diagrama Entidade-Relacionamento (DER)

*(Você pode adicionar a imagem do seu diagrama aqui, ex: `![Diagrama ER](assets/diagramapadaria01.jpg)`)*

### Esquema das Tabelas

| Tabela | Descrição |
| :--- | :--- |
| **Colaborador** | Armazena dados da equipe (Padeiros, Atendentes, Gerentes). |
| **Fornecedor** | Parceiros comerciais que fornecem insumos. |
| **Produto** | Itens finais vendidos ao consumidor (Pães, Bolos, etc.). |
| **Estoque** | Matéria-prima e insumos, vinculados ao fornecedor e ao produto final. |
| **Venda** | Cabeçalho da transação comercial (Data, Valor Total, Forma de Pagamento). |
| **ItensVenda** | Tabela associativa (N:M) detalhando os produtos de cada venda. |
| **Despesa** | Registro de saídas financeiras (Compras de estoque, contas, etc.). |

-----

## 🚀 Como Executar o Projeto

### Pré-requisitos

  * Ter o **PostgreSQL** instalado.
  * Ter o **pgAdmin 4** (ou outro cliente SQL) instalado.

### Passo a Passo

1.  **Clone o repositório:**

    ```bash
    git clone https://github.com/SEU-USUARIO/NOME-DO-REPOSITORIO.git
    ```

2.  **Crie o Banco de Dados:**
    Abra o pgAdmin ou terminal e crie um banco de dados vazio:

    ```sql
    CREATE DATABASE DB_PaoDouradoMassas;
    ```

3.  **Execute o Script SQL:**
    O arquivo `script_completo.sql` (ou o nome que você deu ao arquivo exportado) contém toda a estrutura.

      * No pgAdmin: Abra a **Query Tool** no banco criado.
      * Copie e cole o conteúdo do script.
      * Execute (F5).

-----

## 🔍 Consultas Estratégicas (Business Intelligence)

O projeto inclui queries SQL avançadas para extrair insights do negócio. Exemplos implementados:

1.  **Faturamento Total por Produto:** Identifica os itens "Carro-chefe" da padaria.
2.  **Valor de Patrimônio em Estoque:** Calcula quanto capital está imobilizado em insumos.
3.  **Desempenho de Colaboradores:** Relatório de quantas vendas foram realizadas por cada funcionário.
4.  **Rastreabilidade de Insumos:** Identifica qual fornecedor entrega a matéria-prima de um produto específico.

Exemplo de Query (Faturamento por Produto):

```sql
SELECT P.nomeProduto, SUM(V.valorUniVenda) AS Faturamento_Total
FROM Venda V
JOIN ItensVenda IV ON V.idVenda = IV.Venda_idVenda
JOIN Produto P ON IV.Produto_idProduto = P.idProduto
GROUP BY P.nomeProduto
ORDER BY Faturamento_Total DESC;
```

-----

## 👥 Autores

Projeto desenvolvido pelos discentes:

  * **Roque Crisóstomo Gabriel Neto**
  * **Estela Viana Santos**
  * **Pâmela Wallesca Fernandes Alves**

-----

*Universidade do Estado do Rio Grande do Norte (UERN) - 2025*
