CREATE TABLE autores (
   autor_id SERIAL PRIMARY KEY,
   nombre VARCHAR(30) NOT NULL,
   apellido VARCHAR(30) NOT NULL,
   fecha_nacimiento DATE,
   nacionalidad VARCHAR(50)
);


CREATE TABLE libros (
   libro_id SERIAL PRIMARY KEY,
   autor_id INT NOT NULL,
   titulo VARCHAR(255) NOT NULL,
   isbn VARCHAR(20) UNIQUE,
   fecha_publicacion DATE,
   precio NUMERIC(10, 2)
);