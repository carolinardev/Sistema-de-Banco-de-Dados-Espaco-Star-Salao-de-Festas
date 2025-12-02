-- Reservas com informações completas
SELECT r.id_reserva, c.nome AS cliente, s.nome AS salao, p.nome AS pacote, r.data_evento
FROM Reserva r
JOIN Cliente c ON r.id_cliente = c.id_cliente
JOIN Salao s ON r.id_salao = s.id_salao
JOIN Pacote p ON r.id_pacote = p.id_pacote;

-- Fornecedores contratados em uma reserva
SELECT f.nome, f.tipo_servico
FROM Servico_Contratado sc
JOIN Fornecedor f ON sc.id_fornecedor = f.id_fornecedor
WHERE sc.id_reserva = 1;

-- Clientes ordenados por nome
SELECT * FROM Cliente ORDER BY nome ASC;

-- Limitar salões
SELECT * FROM Salao LIMIT 1;

-- Reservas confirmadas
SELECT * FROM Reserva WHERE status = 'Confirmado';