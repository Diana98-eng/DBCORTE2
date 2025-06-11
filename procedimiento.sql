USE `colegio`;
DROP procedure IF EXISTS `registro`;

DELIMITER $$
USE `colegio`$$
CREATE PROCEDURE `registro` (
in p_estudiante_id int,
in p_estado varchar (20)
)
BEGIN
insert into asistencia (estudiante_id, fecha, estado) values (p_estudiante_id, curdate(), p_estado);


END$$

DELIMITER ;