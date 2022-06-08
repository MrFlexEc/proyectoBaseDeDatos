--tabla SUCURSAL (Farmacia sucursal)
insert into sucursal(suc_id, suc_numero_contacto, suc_direccion)
    SELECT 1, '099999999', 'CALLE 13 AV 24' from dual union all
    SELECT 2, '099999999', 'CALLE 104 AV 111' FROM DUAL;
insert into sucursal(suc_id, suc_numero_contacto, suc_direccion)
    SELECT 3, '099999999', 'CALLE 19 AV 23' from dual union all
    SELECT 4, '099999999', 'CALLE 2 AV 10' FROM DUAL;
--tabla EMPLEADO
insert into empleado(emp_id, suc_id, emp_dni, emp_nombre, emp_apellido, emp_fecha_nacimiento, emp_fecha_ingreso, emp_salario_por_hora, emp_horas_trabajadas, emp_horas_extras, emp_direccion)
    select 1, 1, '9999999999', 'ALEJANDRO', 'VELIZ', '17/07/2002', '26/12/2021', 8.00, 100, 4, 'vellz.ale@gmail.com' from dual union all
    select 2, 2, '9999999999', 'FRANCISCO', 'ROCA', '28/09/2001', '08/11/2021', 12.50, 300, 10, 'roca.fran@gmail.com' from dual;

insert into empleado(emp_id, suc_id, emp_dni, emp_nombre, emp_apellido, emp_fecha_nacimiento, emp_fecha_ingreso, emp_salario_por_hora, emp_horas_trabajadas, emp_horas_extras, emp_direccion)
    select 3, 3, '9999999999', 'ESTEFANY', 'VAZQUEZ', '04/08/2005', '08/08/2021', 11.00, 286, 6, 'estef.vaz@gmail.com' from dual union all
    select 4, 4, '9999999999', 'AMY', 'SALTOS', '18/12/2001', '13/02/2021', 15.50, 500, 18, 'amy.sal@gmail.com' from dual;
    
--tabla CLIENTE
insert into cliente (cli_id, suc_id, cli_dni, cli_apellido, cli_nombre, cli_telefono, cli_email)
    Select 1, 1, '999999999', 'RUIZ ROCA', 'FABRICIO', '0999999999', 'fab.ru@gmail.com' from dual union all
    Select 2, 1, '999999999', 'DELGADO SALTOS', 'CORSA', '0999999999', 'corsa.del@gmail.com' from dual;

insert into cliente (cli_id, suc_id, cli_dni, cli_apellido, cli_nombre, cli_telefono, cli_email)
    Select 3, 2, '999999999', 'ROCA', 'DIMITRIO', '0999999999', 'dim.ro@gmail.com' from dual union all
    Select 4, 2, '999999999', 'ALVARADO CASTRO', 'LENNY', '0999999999', 'lenn.al@gmail.com' from dual;
    
insert into cliente (cli_id, suc_id, cli_dni, cli_apellido, cli_nombre, cli_telefono, cli_email)
    Select 5, 3, '999999999', 'RUIZ ROCA', 'PABLO', '0999999999', 'pablo.ru@gmail.com' from dual union all
    Select 6, 3, '999999999', 'DELGADO SALTOS', 'BRYAN', '0999999999', 'bryan.del@gmail.com' from dual;

insert into cliente (cli_id, suc_id, cli_dni, cli_apellido, cli_nombre, cli_telefono, cli_email)
    Select 7, 4, '999999999', 'ALARCON', 'CORONEL', '0999999999', 'coronel.alar@gmail.com' from dual union all
    Select 8, 4, '999999999', 'ALVARADO CASTRO', 'ALEX', '0999999999', 'alex.al@gmail.com' from dual;
    
insert into cliente (cli_id, suc_id, cli_dni, cli_apellido, cli_nombre, cli_telefono, cli_email)
    Select 9, 1, '999999999', 'MORRIS', 'TOM', '0999999999', 'tom.morris@gmail.com' from dual union all
    Select 10, 2, '999999999', 'OCONNER', 'BRYAN', '0999999999', 'bryan.ocon@gmail.com' from dual;

insert into cliente (cli_id, suc_id, cli_dni, cli_apellido, cli_nombre, cli_telefono, cli_email)
    Select 11, 3, '999999999', 'MORRIS', 'CORONEL', '0999999999', 'coronel.morris@gmail.com' from dual union all
    Select 12, 4, '999999999', 'CHANG', 'XIAO', '0999999999', 'xiao.chan@gmail.com' from dual;

--tabla LABORATORIO
insert into laboratorio(lab_id, lab_nombre, lab_sitioweb, lab_representante, lab_telefono, lab_direccion)
    Select 1, 'Bayer', 'www.bayer.com', 'Johann Weskott', '0985921886', 'Alemania' FROM dual UNION ALL
    Select 2, 'Ecuasanitas', 'www.ecuasanitas.com', 'Ramon', '099999999', 'Ecuador' FROM dual;
    
insert into laboratorio(lab_id, lab_nombre, lab_sitioweb, lab_representante, lab_telefono, lab_direccion)
    Select 3, 'La Sante', 'www.lasante.com.co', 'Piero Santos', '0991020452', 'Colombia' FROM dual UNION ALL
    Select 4, 'Genfar', 'www.genfar.com', 'Ramon Garcia', '099999999', 'Francia' FROM dual;

insert into laboratorio(lab_id, lab_nombre, lab_sitioweb, lab_representante, lab_telefono, lab_direccion)
    Select 5, 'Nefrocontrol', 'www.ekosnegocios.com', 'Nathaly Nieves', '0987291876', 'Ecuador' FROM dual UNION ALL
    Select 6, 'Acromax', 'www.acromax.com.ec', 'Alvaro Mendoza', '099108762', 'Ecuador' FROM dual;
--tabla TYPE_PRODUCT
insert into tipo_producto(tip_pro_id, tip_pro_nombre, tip_pro_descripcion)
    Select 1, 'Analgesico', 'ALIVIA EL DOLOR' from dual union all
    SELECT 2, 'ANTIINFLAMATORIO', 'ALIVIA LA INFLAMACION' FROM DUAL;
    
insert into tipo_producto(tip_pro_id, tip_pro_nombre, tip_pro_descripcion)
    Select 3, 'ANTIDEPRESIVO', 'CONTRA LA DEPRESION' from dual union all
    SELECT 4, 'ANTICONCEPTIVO', 'PREVIENE EL EMBARAZO' FROM DUAL;
--tabla PRODUCT
insert into producto(pro_id, lab_id, tip_pro_id, pro_nombre, pro_precio, pro_vencefecha, pro_stock)
    Select 1, 2, 1, 'ACETAMINOFEN', 0.25, '20/12/2024', 1000 from dual union all
    SELECT 2, 3, 1, 'IBUPROFENO', 0.30, '05/02/2023', 1000 from dual; 
    
insert into producto(pro_id, lab_id, tip_pro_id, pro_nombre, pro_precio, pro_vencefecha, pro_stock)
    Select 3, 4, 2, 'DICLOFENACO', 0.25, '30/03/2025', 1000 from dual union all
    SELECT 4, 6, 2, 'ENANTYUM', 0.50, '15/08/2026', 1000 from dual;
    
insert into producto(pro_id, lab_id, tip_pro_id, pro_nombre, pro_precio, pro_vencefecha, pro_stock)
    Select 5, 1, 3, 'AMOXAPINA', 1.25, '31/12/2025', 1000 from dual union all
    SELECT 6, 1, 3, 'DOXEPINA', 0.80, '10/09/2024', 1000 from dual;
    
insert into producto(pro_id, lab_id, tip_pro_id, pro_nombre, pro_precio, pro_vencefecha, pro_stock)
    Select 7, 3, 4, 'ALESSE', 3.25, '18/04/2024', 1000 from dual union all
    SELECT 8, 3, 4, 'APRI', 2.50, '21/01/2026', 1000 from dual;

insert into factura (fac_id, cli_id, emp_id, fac_fecha, fac_descripcion) values (1, 1, 1, '07/06/2022', 'NO APLICA DESCUENTO');
insert into factura (fac_id, cli_id, emp_id, fac_fecha, fac_descripcion) values (2, 4, 1, '07/06/2022', 'NO APLICA DESCUENTO');
insert into factura (fac_id, cli_id, emp_id, fac_fecha, fac_descripcion) values (3, 10, 4, '07/06/2022', 'NO APLICA DESCUENTO');
insert into factura (fac_id, cli_id, emp_id, fac_fecha, fac_descripcion) values (4, 1, 2, '01/06/2022', 'NO APLICA DESCUENTO');
insert into factura (fac_id, cli_id, emp_id, fac_fecha, fac_descripcion) values (5, 2, 1, '01/06/2022', 'NO APLICA DESCUENTO');


insert into detalles (det_id, pro_id, fac_id, det_producto_cantidad) values(1, 1, 1, 100);
update detalles set det_monto = (select producto.pro_precio from producto where producto.pro_id = detalles.pro_id)* det_producto_cantidad 
where det_id = 1;

insert into detalles (det_id, pro_id, fac_id, det_producto_cantidad) values(2, 2, 1, 20);
update detalles set det_monto = (select producto.pro_precio from producto where producto.pro_id = detalles.pro_id)* det_producto_cantidad 
where det_id = 2;

insert into detalles (det_id, pro_id, fac_id, det_producto_cantidad) values(3, 5, 1, 30);
update detalles set det_monto = (select producto.pro_precio from producto where producto.pro_id = detalles.pro_id)* det_producto_cantidad 
where det_id = 3;

insert into detalles (det_id, pro_id, fac_id, det_producto_cantidad) values(4, 4, 2, 40);
update detalles set det_monto = (select producto.pro_precio from producto where producto.pro_id = detalles.pro_id)* det_producto_cantidad 
where det_id = 4;

insert into detalles (det_id, pro_id, fac_id, det_producto_cantidad) values(5, 1, 2, 50);
update detalles set det_monto = (select producto.pro_precio from producto where producto.pro_id = detalles.pro_id)* det_producto_cantidad 
where det_id = 5;

insert into detalles (det_id, pro_id, fac_id, det_producto_cantidad) values(6, 2, 2, 15);
update detalles set det_monto = (select producto.pro_precio from producto where producto.pro_id = detalles.pro_id)* det_producto_cantidad 
where det_id = 6;

insert into detalles (det_id, pro_id, fac_id, det_producto_cantidad) values(7, 3, 3, 8);
update detalles set det_monto = (select producto.pro_precio from producto where producto.pro_id = detalles.pro_id)* det_producto_cantidad 
where det_id = 7;

insert into detalles (det_id, pro_id, fac_id, det_producto_cantidad) values(8, 8, 4, 5);
update detalles set det_monto = (select producto.pro_precio from producto where producto.pro_id = detalles.pro_id)* det_producto_cantidad 
where det_id = 8;

insert into detalles (det_id, pro_id, fac_id, det_producto_cantidad) values(9, 1, 4, 50);
update detalles set det_monto = (select producto.pro_precio from producto where producto.pro_id = detalles.pro_id)* det_producto_cantidad 
where det_id = 9;

insert into detalles (det_id, pro_id, fac_id, det_producto_cantidad) values(10, 1, 5, 200);
update detalles set det_monto = (select producto.pro_precio from producto where producto.pro_id = detalles.pro_id)* det_producto_cantidad 
where det_id = 10;


update factura set fac_subtotal = (select sum(det_monto) from detalles where detalles.fac_id = factura.fac_id) where fac_id =1; 
update factura set fac_subtotal = (select sum(det_monto) from detalles where detalles.fac_id = factura.fac_id) where fac_id =2; 
update factura set fac_subtotal = (select sum(det_monto) from detalles where detalles.fac_id = factura.fac_id) where fac_id =3; 
update factura set fac_subtotal = (select sum(det_monto) from detalles where detalles.fac_id = factura.fac_id) where fac_id =4; 
update factura set fac_subtotal = (select sum(det_monto) from detalles where detalles.fac_id = factura.fac_id) where fac_id =5; 

update factura set fac_iva = fac_subtotal* 0.12;

update factura set fac_total = fac_subtotal+ fac_iva;