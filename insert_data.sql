INSERT INTO Cliente (nome, telefone, email) VALUES
('Ana Souza', '1199999-1111', 'ana@gmail.com'),
('João Silva', '1198888-2222', 'joao@gmail.com');

INSERT INTO Funcionario (nome, cargo) VALUES
('Marcos Lima', 'Atendente'),
('Patrícia Ramos', 'Gerente');

INSERT INTO Salao (nome, capacidade) VALUES
('Diamante', 150),
('Estelar', 80);

INSERT INTO Pacote (nome, descricao, valor) VALUES
('Aniversário Básico', 'Inclui DJ e decoração simples', 2500),
('Casamento Premium', 'Buffet completo, decoração e DJ', 8000);

INSERT INTO Fornecedor (nome, tipo_servico) VALUES
('Buffet Master', 'Buffet'),
('DecoraFest', 'Decoração'),
('DJ Sonic', 'DJ');

INSERT INTO Reserva (id_cliente, id_funcionario, id_salao, id_pacote, data_evento, horario_inicio, horario_fim, status)
VALUES
(1,1,1,2,'2025-10-12','18:00','23:00','Confirmado'),
(2,2,2,1,'2025-11-05','14:00','18:00','Pendente');

INSERT INTO Servico_Contratado (id_reserva, id_fornecedor, descricao) VALUES
(1,1,'Buffet completo contratado'),
(1,3,'DJ contratado'),
(2,2,'Decoração infantil');

INSERT INTO Pagamento (id_reserva, valor_total, forma_pagamento, data_pagamento) VALUES
(1, 8000, 'Cartão', '2025-05-10');