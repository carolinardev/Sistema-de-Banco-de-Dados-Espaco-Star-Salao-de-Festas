CREATE TABLE Cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(120) NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(120)
);

CREATE TABLE Funcionario (
    id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(120),
    cargo VARCHAR(50)
);

CREATE TABLE Salao (
    id_salao INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    capacidade INT
);

CREATE TABLE Pacote (
    id_pacote INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    descricao TEXT,
    valor DECIMAL(10,2)
);

CREATE TABLE Fornecedor (
    id_fornecedor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(120),
    tipo_servico VARCHAR(80)
);

CREATE TABLE Reserva (
    id_reserva INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    id_funcionario INT,
    id_salao INT,
    id_pacote INT,
    data_evento DATE,
    horario_inicio TIME,
    horario_fim TIME,
    status VARCHAR(20),
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
    FOREIGN KEY (id_funcionario) REFERENCES Funcionario(id_funcionario),
    FOREIGN KEY (id_salao) REFERENCES Salao(id_salao),
    FOREIGN KEY (id_pacote) REFERENCES Pacote(id_pacote)
);

CREATE TABLE Servico_Contratado (
    id_servico INT AUTO_INCREMENT PRIMARY KEY,
    id_reserva INT,
    id_fornecedor INT,
    descricao TEXT,
    FOREIGN KEY (id_reserva) REFERENCES Reserva(id_reserva),
    FOREIGN KEY (id_fornecedor) REFERENCES Fornecedor(id_fornecedor)
);

CREATE TABLE Pagamento (
    id_pagamento INT AUTO_INCREMENT PRIMARY KEY,
    id_reserva INT UNIQUE,
    valor_total DECIMAL(10,2),
    forma_pagamento VARCHAR(50),
    data_pagamento DATE,
    FOREIGN KEY (id_reserva) REFERENCES Reserva(id_reserva)
);