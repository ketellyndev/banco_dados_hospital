USE hospital;



SELECT 
    conv.nome AS convenio,
    SUM(c.valor) AS faturamento_total
FROM consultas c
INNER JOIN convenios conv ON c.id_convenio = conv.id_convenio
WHERE conv.nome LIKE '%Saúde%'
GROUP BY conv.id_convenio, conv.nome;



SELECT 
    e.nome AS especialidade,
    AVG(c.valor) AS media_valor_consulta
FROM consultas c
INNER JOIN medicos m ON c.id_medico = m.id_medico
INNER JOIN especialidades e ON m.id_especialidade = e.id_especialidade
WHERE e.nome LIKE '%Cardiologia%'
GROUP BY e.id_especialidade, e.nome;


SELECT 
    q.tipo AS tipo_quarto,
    AVG(i.valor_diaria) AS media_valor_diaria
FROM internacoes i
INNER JOIN quartos q ON i.id_quarto = q.id_quarto
WHERE q.tipo IN ('Apartamento', 'UTI')
GROUP BY q.tipo;


SELECT 
    m.nome AS medico,
    SUM(c.valor) AS soma_total_consultas
FROM consultas c
INNER JOIN medicos m ON c.id_medico = m.id_medico
WHERE c.status IN ('Realizada', 'Finalizada')
GROUP BY m.id_medico, m.nome;

SELECT 
    p.nome AS paciente,
    SUM(i.valor_diaria) AS soma_diarias
FROM internacoes i
INNER JOIN pacientes p ON i.id_paciente = p.id_paciente
WHERE p.nome LIKE '%Silva%'
GROUP BY p.id_paciente, p.nome;


SELECT 
    c.status AS status_consulta,
    COUNT(pr.id_prescricao) AS total_medicamentos_prescritos
FROM prescricoes pr
INNER JOIN consultas c ON pr.id_consulta = c.id_consulta
INNER JOIN medicamentos med ON pr.id_medicamento = med.id_medicamento
WHERE med.nome LIKE '%Dipirona%' 
   OR med.nome LIKE '%Paracetamol%'
GROUP BY c.status;


SELECT 
    conv.nome AS convenio,
    e.nome AS especialidade,
    AVG(c.valor) AS media_valor_consulta
FROM consultas c
INNER JOIN convenios conv ON c.id_convenio = conv.id_convenio
INNER JOIN medicos m ON c.id_medico = m.id_medico
INNER JOIN especialidades e ON m.id_especialidade = e.id_especialidade
WHERE conv.nome LIKE '%Unimed%'
GROUP BY conv.id_convenio, conv.nome, e.id_especialidade, e.nome;

SELECT 
    conv.nome AS convenio,
    AVG(i.valor_diaria) AS media_diaria_uti
FROM internacoes i
INNER JOIN convenios conv ON i.id_convenio = conv.id_convenio
INNER JOIN quartos q ON i.id_quarto = q.id_quarto
WHERE q.tipo = 'UTI'
GROUP BY conv.id_convenio, conv.nome;

SELECT 
    m.nome AS medico,
    COUNT(pr.id_prescricao) AS total_itens_prescritos
FROM prescricoes pr
INNER JOIN consultas c ON pr.id_consulta = c.id_consulta
INNER JOIN medicos m ON c.id_medico = m.id_medico
WHERE c.status = 'Realizada'
GROUP BY m.id_medico, m.nome;


SELECT 
    p.nome AS paciente,
    SUM(c.valor) AS valor_total_gasto,
    AVG(c.valor) AS media_valor_consulta
FROM consultas c
INNER JOIN pacientes p ON c.id_paciente = p.id_paciente
WHERE p.nome LIKE 'M%'
GROUP BY p.id_paciente, p.nome;