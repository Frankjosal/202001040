select * from bd_facts.tbl_asesores;
select * from bd_facts.tbl_clientes;
select * from bd_facts.tbl_facturas;

/*Pregunta 3
Analice el siguiente segmento de codigo SQL y luego seleccione la proposicion correcta respecto al mismo: --
set @suma = 0; 
insert into @suma values 1+2;
a. La asignación de valores no es correcta. El código dará error.  
*/


/*Pregunta 4
Utilizando la base de datos compartida para este examen. 

Escriba una consulta SQL combinando las tablas asesores y clientes, para obtener el numero id y nombre completo de los asesores que no tienen clientes asignados.

Ingrese uno de los numeroid obtenidos en la consulta. */

select 
	a.numeroID, 
    concat(a.nombres,' ' ,a.apellidos) Nombre,
    a.apellidos,
    cantClientes
   
from bd_facts.tbl_asesores a 
left join bd_facts.tbl_clientes b 
on a.idAsesor = b.idAsesor 
where b.idAsesor is null 

/*pregunta 5
Utilizando la base de datos compartida para este examen. 

Cree una consulta sql para obtener:  

nombre de cliente, 
idfactura, 
fecha de emision 
fecha de vencimiento
de facturas que están vencidas por falta de pago.
Ingrese un idcliente de los obtenidos en el resultado de su consulta. 
*/

select
cl.idcliente,
cl.nombrecompleto,
F.idfactura,
F.fechaemision,
F.fechavencimiento,
F.fechapagada
from tbl_facturas F inner join tbl_clientes cl on F.idCliente = cl.idCliente
where F.fechaVencimiento between '2022-01-01 22:36:30' and '2022-02-10 04:11:10';



