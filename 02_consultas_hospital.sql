CREATE DATABASE IF NOT EXISTS hospital
DEFAULT CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;


USE hospital;



CREATE TABLE convenios (
    id_convenio INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);


CREATE TABLE especialidades (
    id_especialidade INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);


CREATE TABLE quartos (
    id_quarto INT AUTO_INCREMENT PRIMARY KEY,
    numero VARCHAR(10) NOT NULL,
    tipo VARCHAR(50) NOT NULL
);


CREATE TABLE pacientes (
    id_paciente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);


CREATE TABLE medicamentos (
    id_medicamento INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);


CREATE TABLE medicos (
    id_medico INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    id_especialidade INT NOT NULL,
    FOREIGN KEY (id_especialidade) REFERENCES especialidades(id_especialidade)
);


CREATE TABLE consultas (
    id_consulta INT AUTO_INCREMENT PRIMARY KEY,
    id_paciente INT NOT NULL,
    id_medico INT NOT NULL,
    id_convenio INT NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    status VARCHAR(30) NOT NULL,
    FOREIGN KEY (id_paciente) REFERENCES pacientes(id_paciente),
    FOREIGN KEY (id_medico) REFERENCES medicos(id_medico),
    FOREIGN KEY (id_convenio) REFERENCES convenios(id_convenio)
);


CREATE TABLE internacoes (
    id_internacao INT AUTO_INCREMENT PRIMARY KEY,
    id_paciente INT NOT NULL,
    id_convenio INT NOT NULL,
    id_quarto INT NOT NULL,
    valor_diaria DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (id_paciente) REFERENCES pacientes(id_paciente),
    FOREIGN KEY (id_convenio) REFERENCES convenios(id_convenio),
    FOREIGN KEY (id_quarto) REFERENCES quartos(id_quarto)
);


CREATE TABLE prescricoes (
    id_prescricao INT AUTO_INCREMENT PRIMARY KEY,
    id_consulta INT NOT NULL,
    id_medicamento INT NOT NULL,
    FOREIGN KEY (id_consulta) REFERENCES consultas(id_consulta),
    FOREIGN KEY (id_medicamento) REFERENCES medicamentos(id_medicamento)
);



INSERT INTO convenios (nome) VALUES 
('Unimed Nacional'),
('Bradesco Saúde'),
('Amil Saúde'),
('SulAmérica');


INSERT INTO especialidades (nome) VALUES 
('Cardiologia Clínica'),
('Cardiologia Pediátrica'),
('Ortopedia'),
('Clínica Geral');


INSERT INTO quartos (numero, tipo) VALUES 
('101', 'Apartamento'),
('102', 'UTI'),
('103', 'Enfermaria'),
('201', 'UTI');


INSERT INTO pacientes (nome) VALUES 
('Mariana Silva'),
('Marcos Oliveira'),
('João Silva'),
('Ana Souza'),
('Mateus Costa');


INSERT INTO medicamentos (nome) VALUES 
('Dipirona 500mg'),
('Paracetamol 750mg'),
('Amoxicilina 500mg'),
('Losartana 50mg');


INSERT INTO medicos (nome, id_especialidade) VALUES 
('Dr. Carlos Almeida', 1),
('Dra. Fernanda Lima', 2),
('Dr. Roberto Santos', 3),
('Dra. Juliana Rocha', 4);


INSERT INTO consultas (id_paciente, id_medico, id_convenio, valor, status) VALUES 
(1, 1, 1, 350.00, 'Realizada'),
(2, 2, 2, 400.00, 'Finalizada'),
(3, 3, 3, 280.00, 'Realizada'),
(5, 1, 1, 350.00, 'Realizada'),
(4, 4, 4, 200.00, 'Cancelada');


INSERT INTO internacoes (id_paciente, id_convenio, id_quarto, valor_diaria) VALUES 
(1, 1, 2, 1500.00),
(3, 2, 1, 800.00),
(2, 3, 4, 1650.00);


INSERT INTO prescricoes (id_consulta, id_medicamento) VALUES 
(1, 1),
(1, 2),
(2, 1),
(3, 3),
(5, 2);