USE coworking;
SHOW TABLES;

DROP TRIGGER IF EXISTS trg_membresia_calcular_vencimiento;

DELIMITER !

CREATE TRIGGER trg_membresia_calcular_vencimiento
BEFORE INSERT ON membresia
FOR EACH ROW
BEGIN

    SET NEW.fecha_fin = DATE_ADD(NEW.fecha_inicio, INTERVAL 30 DAY);
END!

DELIMITER ;

INSERT INTO membresia (usuarioID, tipoID, fecha_inicio)
VALUES (1, 1, '2026-09-10');

SELECT * FROM membresia ORDER BY 1 DESC LIMIT 1;