-- Crear tabla genero
create table genero ( 
	id integer primary key,
	genero varchar(30)
);

-- Insertar valores genero
insert into genero(id,genero )
values 
(1,'Male'),
(2,'Female'),
(3,'Non-binary');

-- Crear tabla personas
CREATE TABLE public.personas (
	id int4 NOT NULL,
	nombre varchar(100) NULL,
	apellido varchar(100) NULL,
	correo varchar(100) NULL,
	genero_id integer NULL,
	ciudad varchar(100) NULL,
	CONSTRAINT datos_pkey PRIMARY KEY (id),
	CONSTRAINT fk_genero FOREIGN KEY (genero_id) REFERENCES public.genero(id)
);