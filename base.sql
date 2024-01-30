DROP DATABASE if EXISTS db_techsolutions;
CREATE DATABASE db_techsolutions;

USE db_techsolutions;

CREATE TABLE tb_departamentos(
id_departamento INT AUTO_INCREMENT PRIMARY KEY,
nombre_departamento VARCHAR (50) NOT NULL 
);

CREATE TABLE tb_proyectos(
id_proyecto INT AUTO_INCREMENT PRIMARY KEY,
nombre_proyecto VARCHAR (40) NOT NULL
);

CREATE TABLE tb_cargos(
id_cargo INT AUTO_INCREMENT PRIMARY KEY,
cargo VARCHAR(30) NOT NULL
);

CREATE TABLE tb_empleados(
id_empleado INT AUTO_INCREMENT PRIMARY KEY,
nombre_empleado VARCHAR (50) NOT NULL,
apellido_empleado VARCHAR (50) NOT NULL,
salario_empleado DECIMAL NOT NULL,
fecha_inicio_empleado DATE NOT NULL,
id_cargo INT,
CONSTRAINT fk_cargo_empleado
FOREIGN KEY(id_cargo) 
REFERENCES tb_cargos(id_cargo),
id_departamento INT,
CONSTRAINT fk_departamento_empleado
FOREIGN KEY(id_departamento) 
REFERENCES tb_departamentos(id_departamento)
);

CREATE TABLE tb_proyecto_empleado(
id_proyecto_empleado INT AUTO_INCREMENT PRIMARY KEY,
id_empleado INT, 
id_proyecto INT,
CONSTRAINT fk_empleado_proyectoemp
FOREIGN KEY(id_empleado)
REFERENCES tb_empleados(id_empleado),
CONSTRAINT fk_proyecto_proyectoemp
FOREIGN KEY(id_proyecto)
REFERENCES tb_proyectos(id_proyecto)
);

