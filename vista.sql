USE `colegio`;
CREATE  OR REPLACE VIEW `vista_asistencia` as 
select a.id_asis, e.nombre, e.apellido,a.estado
from asistencia as a 
join estudiante as e  on a.estudiante_id = e.id;
