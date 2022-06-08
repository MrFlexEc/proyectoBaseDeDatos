select p.pro_nombre as NOMBRE, tp.tip_pro_nombre as ACCION, l.lab_nombre as LABORATORIO, '$' || p.pro_precio as Precio_Unitario, p.pro_stock as STOCK
from producto p
inner join tipo_producto tp on p.tip_pro_id = tp.tip_pro_id
inner join laboratorio l on p.lab_id = l.lab_id;