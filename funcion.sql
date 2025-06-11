/*funcion*/ 

USE `colegio`;
DROP function IF EXISTS `generar_mensaje`;

DELIMITER $$
USE `colegio`$$
CREATE FUNCTION `generar_mensaje` (nombre_estudiante varchar(100))
RETURNS text
BEGIN

RETURN concat ("asistencia registrada para: ", nombre_estudiante);
END$$

DELIMITER ;
