--INSERT GENERO--
INSERT INTO generos (descripcion)VALUES('Femenino');
INSERT INTO generos (descripcion)VALUES('Masculino');
   
--INSERT VeHiculos Marcas--
INSERT INTO vehiculos_marcas (descripcion)VALUES( 'Toyota');
INSERT INTO vehiculos_marcas (descripcion)VALUES('Nissan');
INSERT INTO vehiculos_marcas (descripcion)VALUES( 'Chery');
INSERT INTO vehiculos_marcas (descripcion)VALUES('Chevrolet');

--INSERT VEHICULOS TIPO--
INSERT INTO vehiculos_tipos (descripcion)VALUES( 'Automovil');
INSERT INTO vehiculos_tipos (descripcion)VALUES('Motocicleta');   

--INSERT VEHICULOS COLORES--
INSERT INTO vehiculos_colores (descripcion)VALUES( 'Amarillo');
INSERT INTO vehiculos_colores (descripcion)VALUES('Rojo');
INSERT INTO vehiculos_colores (descripcion)VALUES( 'Azul');
INSERT INTO vehiculos_colores (descripcion)VALUES('Verde');
INSERT INTO vehiculos_colores (descripcion)VALUES( 'Celeste');
INSERT INTO vehiculos_colores (descripcion)VALUES('Blanco');    

   
   
BEGIN
   mantenientoEstudiantes(1, '604230491','lucrecia','Cespedes','perez',2, '71182472','lcespedes0395@gmail.com',2);
END;



select * from personas;
select * from estudiantes;