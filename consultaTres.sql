select c.cli_nombre as CLIENTE_NOMBRE, c.cli_apellido as APELLIDO, c.cli_dni as DNI, s.suc_direccion as DIRECCION_SUCURSAL, f.fac_fecha as FECHA_FACTURA, 
e.emp_nombre as EMPLEADO, '$' || f.fac_subtotal as SUBTOTAL, '$' || f.fac_iva AS IVA, '$' || f.fac_total as TOTAL
from factura f
inner join cliente c on f.cli_id = c.cli_id
inner join empleado e on f.emp_id = e.emp_id
inner join sucursal s on e.suc_id = s.suc_id;