/*    Ejercicio # 1*/

set @v_id_subscriptor = null; 
set @v_codigo_subscriptor 	 = 202212345;
set @v_nombres 	 = 'Jon Paul'; 
set @v_apellidos		 = 'Doe ';


 
#select * from bd_sample.tbl_subscriptores;
delete from bd_sample.tbl_subscriptores
where id_subscriptor = 21;
 
 insert into bd_sample.tbl_subscriptores (
		id_subscriptor, codigo_subscriptor, nombres, apellidos
    ) values ( 
		@v_id_subscriptor, @v_codigo_subscriptor, @v_nombres, @v_apellidos
    );
    
 
 #set Ejercicio #1
set @v_id_factura 	 = 0; 
set @v_fecha_emision ='2020-02-10 10:00:00';
set @v_id_subscriptor = 16; 
set @v_numero_items  = 1;
set @v_precio_prod   = 5.50;
set @v_subtotal = @v_precio_prod * @v_numero_items;
set @v_isv = (@v_subtotal * 0.18);
set @total_pagar = @v_subtotal + @v_isv;
set @v_id_producto 	 = 2; 
set @v_cantidad		 = 2; 


#Ejercicio 2 #
set @v_id_factura 	 = 0; 
set @v_fecha_emision ='2020-02-10 10:00:00';
set @v_id_subscriptor = 16; 
set @v_numero_items  = 1;
set @v_precio_prod   = 9.50;
set @v_subtotal = @v_precio_prod * @v_numero_items;
set @v_isv = (@v_subtotal * 0.18);
set @total_pagar = @v_subtotal + @v_isv;
set @v_id_producto 	 = 3; 
set @v_cantidad		 = 2;

insert into bd_sample.tbl_facturas
values (@v_id_factura,
@v_fecha_emision,
@v_id_subscriptor,
@v_numero_items,
@v_isv,
@v_subtotal,
@total_pagar
 );
 
select sum(totapagar) monto_cancelar from bd_sample.tbl_facturas
where id_subscriptor = 16;