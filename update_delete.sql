-- UPDATES
UPDATE Cliente SET telefone = '1190000-0000' WHERE id_cliente = 1;
UPDATE Reserva SET status = 'Confirmado' WHERE id_reserva = 2;
UPDATE Pagamento SET forma_pagamento = 'Pix' WHERE id_pagamento = 1;

-- DELETES
DELETE FROM Servico_Contratado WHERE id_servico = 3;
DELETE FROM Reserva WHERE id_reserva = 2;
DELETE FROM Cliente WHERE id_cliente = 2;