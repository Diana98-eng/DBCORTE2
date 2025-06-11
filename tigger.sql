DROP TRIGGER IF EXISTS `colegio`.`Insert_Asistencia`;

DELIMITER $$
USE `colegio`$$
CREATE DEFINER = CURRENT_USER TRIGGER `Insert_Asistencia` AFTER INSERT ON asistencia FOR EACH ROW
BEGIN
declare nom_apen varchar (100);
declare p varchar (100);
select concat(nombre," ", apellido) into nom_apen from estudiante  
where  new.estudiante_id = id;
set p = generar_mensaje(nom_apen);
signal sqlstate "45000" set message_text = p;
END$$
DELIMITER ;