# banco_dados_hospital



Projeto prático desenvolvido em MySQL com foco na estruturação de um banco de dados relacional hospitalar e na extração de indicadores financeiros e clínicos por meio de consultas SQL (INNER JOIN, GROUP BY, SUM, AVG, COUNT, LIKE e IN).

---

## Estrutura dos Arquivos
* **01_criacao_banco.sql**: Script de criação do banco de dados hospital, definição das tabelas com chaves primárias e estrangeiras (DDL) e inserção de registros de teste (DML).
* **02_consultas_hospital.sql**: Conjunto de 10 consultas SQL (DQL) que respondem às demandas dos setores financeiro, clínico, farmacêutico e de infraestrutura.


  ---
## Modelagem do Banco (hospital)
O banco de dados é composto por 9 tabelas relacionadas:
* **Cadastros base**: convenios, especialidades, quartos, pacientes e medicamentos.
* **Operacionais**: medicos, consultas, internacoes e prescricoes.



  ---
## Situações-Problema Resolvidas
1. **Faturamento Total por Convênio:** Soma do valor arrecadado em consultas para convênios com "Saúde" no nome.
2. **Média por Especialidade:** Valor médio das consultas nas especialidades ligadas à Cardiologia.
3. **Média de Diárias por Quarto:** Valor médio da diária em internações nos tipos "Apartamento" ou "UTI".
4.**Faturamento por Médico:** Soma total dos valores de consultas por médico com status "Realizada" ou "Finalizada".
5.**Soma de Diárias por Paciente:** Total acumulado em diárias de internação para pacientes com sobrenome "Silva".
6.**Contagem de Prescrições por Status:** Quantidade de medicamentos prescritos agrupada pelo status da consulta, filtrando "Dipirona" ou "Paracetamol".
7.**Média por Convênio e Especialidade:** Valor médio pago por consulta cruzando convênios "Unimed" com a especialidade médica.
8.**Média de Diária em UTI:** Valor médio gasto em diárias agrupado por convênio apenas em quartos do tipo "UTI".
9.**Prescrições por Médico:** Total de itens prescritos por médico em consultas com status "Realizada".
10.**Extrato por Paciente:** Soma e média dos valores gastos em consultas por pacientes cujo nome inicia com a letra "M".



---

## Como Executar

1.Abra o **MySQL Workbench** e conecte-se à sua instância local (localhost).
2.Abra e execute todo o script **01_criacao_banco.sql** para gerar o esquema e popular as tabelas.
3.Abra o arquivo **02_consultas_hospital.sql** e execute as consultas individualmente (Ctrl + Enter) para visualizar os relatórios.

---

## Evidências de Execução
### Estrutura do Banco de Dados (hospital)
<img width="1595" height="793" alt="image" src="https://github.com/user-attachments/assets/b295f20d-2db1-4050-b781-f35520d7ed58" />

### 1. Faturamento Total de Consultas por Convênio (Saúde)
<img width="1203" height="550" alt="image" src="https://github.com/user-attachments/assets/51857239-9afb-446f-b415-94f69106b454" />

--
### 2. Média do Valor de Consulta por Especialidade (Cardiologia)
<img width="1322" height="555" alt="image" src="https://github.com/user-attachments/assets/c42c9d61-5cb5-42b9-bcfe-8ddcaea47627" />

---
### 3.Valor Médio das Diárias por Tipo de Quarto (Apartamento ou UTI)
<img width="1463" height="577" alt="image" src="https://github.com/user-attachments/assets/e47a4695-a33c-480f-ae9a-819df43ae605" />

---
### 4.Total de Consultas Realizadas por Médico
<img width="1345" height="597" alt="image" src="https://github.com/user-attachments/assets/fbe79d23-e0e7-4692-b18b-4d405a9eb319" />

---
### 5.Soma de Diárias por Paciente com Sobrenome "Silva"
<img width="1309" height="560" alt="image" src="https://github.com/user-attachments/assets/ee3b2aa5-1ac6-4ba9-857c-d0c6f4a9e6c2" />

---
### 6.Contagem de Prescrições por Status da Consulta
<img width="1252" height="583" alt="image" src="https://github.com/user-attachments/assets/ff35e84e-6cc5-4b60-bff7-0c1b59dd1b9c" />

---
### 7.Média de Valor de Consultas por Convênio (Unimed) e Especialidade
<img width="1292" height="592" alt="image" src="https://github.com/user-attachments/assets/e0fa304c-857c-4052-aa91-a5c54411fdbd" />

---
### 8.Média de Diária de Internação por Convênio em Quartos de UTI
<img width="1422" height="605" alt="image" src="https://github.com/user-attachments/assets/a9ef939c-accd-4b5b-8669-dd62b95c3ec7" />

---
### 9.Medicamentos Prescritos por Médico em Consultas Realizadas
<img width="1214" height="571" alt="image" src="https://github.com/user-attachments/assets/90c412a7-42b7-4444-82a7-56443218d4da" />

---


### 10.Valor Total e Média de Consultas por Paciente (Iniciados em "M")
<img width="1292" height="584" alt="image" src="https://github.com/user-attachments/assets/a9a6688c-c74a-47af-b9eb-c04c3327c6c4" />


---
**Autor:** Ketellyn Rhaiany Rocha da Silva
**Tecnologia:** MySQL 8.0 / MySQL Workbench
