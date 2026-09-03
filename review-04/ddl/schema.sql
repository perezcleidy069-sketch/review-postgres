CREATE TABLE Productos (
   id SERIAL PRIMARY KEY,
   nombre VARCHAR(120),
   precio NUMERIC(8, 2),
   stock INT
);


CREATE TABLE Ventas (
   id SERIAL PRIMARY KEY,
   producto_id INT NOT NULL,
   cantidad INT,
   fecha_venta DATE
);