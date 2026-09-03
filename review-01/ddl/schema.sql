CREATE DATABASE campus;

CREATE TABLE estudiantes (
   id SERIAL,
   nombre VARCHAR(60),
   edad INT,
   genero CHAR(1),
   promedio FLOAT,
   altura NUMERIC(3,2),
   fecha_ingreso DATE,
   hora_ingreso  TIME,
   fecha_hora_registro TIMESTAMP,
   duración_tests INTERVAL,
   analisis_perfil TEXT,
   activo BOOLEAN
);