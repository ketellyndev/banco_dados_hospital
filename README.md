# banco_dados_hospital



Projeto prático desenvolvido em MySQL com foco na estruturação de um banco de dados relacional hospitalar e na extração de indicadores financeiros e clínicos por meio de consultas SQL (INNER JOIN, GROUP BY, SUM, AVG, COUNT, LIKE e IN).



## Estrutura dos Arquivos
* **01_criacao_banco.sql**: Script de criação do banco de dados hospital, definição das tabelas com chaves primárias e estrangeiras (DDL) e inserção de registros de teste (DML).
02_consultas_hospital.sql: Conjunto de 10 consultas SQL (DQL) que respondem às demandas dos setores financeiro, clínico, farmacêutico e de infraestrutura.
Modelagem do Banco (hospital)
O banco de dados é composto por 9 tabelas relacionadas:
Cadastros base: convenios, especialidades, quartos, pacientes e medicamentos.
Operacionais: medicos, consultas, internacoes e prescricoes.
Situações-Problema Resolvidas
Faturamento Total por Convênio: Soma do valor arrecadado em consultas para convênios com "Saúde" no nome.
Média por Especialidade: Valor médio das consultas nas especialidades ligadas à Cardiologia.
Média de Diárias por Quarto: Valor médio da diária em internações nos tipos "Apartamento" ou "UTI".
Faturamento por Médico: Soma total dos valores de consultas por médico com status "Realizada" ou "Finalizada".
Soma de Diárias por Paciente: Total acumulado em diárias de internação para pacientes com sobrenome "Silva".
Contagem de Prescrições por Status: Quantidade de medicamentos prescritos agrupada pelo status da consulta, filtrando "Dipirona" ou "Paracetamol".
Média por Convênio e Especialidade: Valor médio pago por consulta cruzando convênios "Unimed" com a especialidade médica.
Média de Diária em UTI: Valor médio gasto em diárias agrupado por convênio apenas em quartos do tipo "UTI".
Prescrições por Médico: Total de itens prescritos por médico em consultas com status "Realizada".
Extrato por Paciente: Soma e média dos valores gastos em consultas por pacientes cujo nome inicia com a letra "M".
Como Executar
Abra o MySQL Workbench e conecte-se à sua instância local (localhost).
Abra e execute todo o script 01_criacao_banco.sql para gerar o esquema e popular as tabelas.
Abra o arquivo 02_consultas_hospital.sql e execute as consultas individualmente (Ctrl + Enter) para visualizar os relatórios.
Evidências de Execução
Estrutura do Banco de Dados (hospital)
Faturamento Total de Consultas por Convênio (Saúde)
Média do Valor de Consulta por Especialidade (Cardiologia)
Valor Médio das Diárias por Tipo de Quarto (Apartamento ou UTI)
Total de Consultas Realizadas por Médico
Soma de Diárias por Paciente com Sobrenome "Silva"
Contagem de Prescrições por Status da Consulta
Média de Valor de Consultas por Convênio (Unimed) e Especialidade
Média de Diária de Internação por Convênio em Quartos de UTI
Medicamentos Prescritos por Médico em Consultas Realizadas
Valor Total e Média de Consultas por Paciente (Iniciados em "M")
Autor: Ketellyn Rhaiany Rocha da Silva
Tecnol
