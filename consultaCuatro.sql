select f.fac_id as ID_FACTURA, f.fac_fecha as FACTURA_FECHA, p.pro_nombre as FARMACO, d.det_producto_cantidad as CANTIDAD, '$' || d.det_monto as MONTO
from detalles d
inner join producto p on d.pro_id = p.pro_id
inner join factura f on f.fac_id = d.fac_id
order by f.fac_id;