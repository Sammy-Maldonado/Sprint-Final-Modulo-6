-- Eliminar la base de datos en caso de que ya exista
DROP DATABASE IF EXISTS prevencion_riesgos;

-- Eliminar el usuario en caso de que ya exista
DROP USER IF EXISTS 'usuarioejercicio'@'localhost';

-- Creación de la base de datos
CREATE DATABASE prevencion_riesgos;

-- Creación del usuario
CREATE USER 'usuarioejercicio'@'localhost' IDENTIFIED BY '1234'; 

-- Otorgando privilegios al usuario
GRANT SELECT, CREATE, DROP, ALTER, INSERT, UPDATE ON prevencion_riesgos.* TO 'usuarioejercicio'@'localhost'; 
FLUSH PRIVILEGES;

-- Uso de la base de datos
USE prevencion_riesgos;

-- Creación de las tablas
CREATE TABLE Usuarios (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(100) NOT NULL,
  passwordusuario VARCHAR(100) NOT NULL,
  rutusuario VARCHAR(100) NOT NULL, 
  fechanacimiento VARCHAR(100),
  sexo VARCHAR(100),
  tipousuario ENUM('CLIENTE', 'ADMINISTRATIVO', 'PROFESIONAL') NOT NULL,
  
  -- Columnas específicas para CLIENTE
  nombreEmpresa VARCHAR(100),             -- Campo para CLIENTE
  direccion VARCHAR(100),                 -- Campo para CLIENTE
  telefonoContacto VARCHAR(15),           -- Campo para CLIENTE

  -- Columnas específicas para PROFESIONAL
  titulo VARCHAR(100),                    -- Campo para PROFESIONAL
  fechaIngreso DATE,                      -- Campo para PROFESIONAL

  -- Columnas específicas para ADMINISTRATIVO
  area VARCHAR(100),                      -- Campo para ADMINISTRATIVO
  experienciaPrevia TEXT                  -- Campo para ADMINISTRATIVO
);

CREATE TABLE Capacitaciones (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(100),
  rutcliente VARCHAR(100) NOT NULL,
  dia VARCHAR(100),
  hora VARCHAR(100),
  lugar VARCHAR(100),
  duracion INT,
  asistentes INT  
);

CREATE TABLE Visitas (
  id INT PRIMARY KEY AUTO_INCREMENT,
  cliente_id INT,
  fecha_visita DATE,
  detalle TEXT,
  profesional_id INT
);

CREATE TABLE pago (
    id INT AUTO_INCREMENT PRIMARY KEY,
    monto DECIMAL(10, 2) NOT NULL,
    fecha DATE NOT NULL,
    rutCliente VARCHAR(12) NOT NULL,
    capacitacion VARCHAR(255) NOT NULL
);

CREATE TABLE Chequeos (
  id INT PRIMARY KEY AUTO_INCREMENT,
  visita_id INT,
  detalle TEXT,
  estado ENUM('Pendiente', 'Completado')
);


CREATE TABLE Asesorias (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(100) NOT NULL,
  detalle TEXT,
  profesional_id INT
);

CREATE TABLE Accidentes (
  id INT PRIMARY KEY AUTO_INCREMENT,
  cliente_id INT,
  fecha_accidente DATE,
  detalle TEXT
);

CREATE TABLE Asistentes (
  capacitacion_id INT,
  usuario_id INT
);

-- Insertando registros en la tabla Usuarios
INSERT INTO Usuarios (nombre, passwordusuario, tipousuario, rutusuario, fechanacimiento, sexo, nombreEmpresa, direccion, telefonoContacto) 
VALUES 
('Jacinto Duarte', '$2a$10$RG412hWu2sLRr7A6bXCDvOrXPxUEADC7Myd67fslHic/Lhb4ZwcTG', 'CLIENTE', '12345678-9', '1985-07-15', 'Masculino', 'EmpresaX', 'Calle Falsa 123', '555-1234');
INSERT INTO Usuarios (nombre, passwordusuario, tipousuario, rutusuario, fechanacimiento, sexo, area, experienciaPrevia) 
VALUES 
('Aurelio Flores', '$2a$10$RG412hWu2sLRr7A6bXCDvOrXPxUEADC7Myd67fslHic/Lhb4ZwcTG', 'ADMINISTRATIVO', '18765432-1', '1990-03-22', 'Femenino', 'Recursos Humanos', '5 años de experiencia en el área de personal');
INSERT INTO Usuarios (nombre, passwordusuario, tipousuario, rutusuario, fechanacimiento, sexo, titulo, fechaIngreso) 
VALUES 
('Casimiro Monsalves', '$2a$10$8/QGI5KX3MOyynHbosT/G.3avydVwP1Ul/M0h7VO.aurl3dQdua.K', 'PROFESIONAL', '25678901-2', '1978-11-02', 'Masculino', 'Ingeniero en Prevención de Riesgos', '2015-06-15');
INSERT INTO Usuarios (nombre, passwordusuario, tipousuario, rutusuario, sexo) 
VALUES 
('user1', '$2a$10$RG412hWu2sLRr7A6bXCDvOrXPxUEADC7Myd67fslHic/Lhb4ZwcTG', 'ADMINISTRATIVO', '23748265-3', 'Femenino');

-- Insertando registros en la tabla Capacitaciones
INSERT INTO Capacitaciones (nombre, rutcliente, dia, hora, lugar, duracion, asistentes)
VALUES
('Jacinto Duarte', '12345678-9', '01-10-2024', '10:00', 'Sala 101', 2, 20),
('Aurelio Flores', '18765432-1', '18-06-2023', '11:00', 'Sala 202', 3, 25),
('Casimiro Monsalves', '25678901-2', '12-12-2012', '12:00', 'Sala 303', 1, 15);

-- Insertando registros en la tabla pago
INSERT INTO pago (monto, fecha, rutCliente, capacitacion) 
VALUES 
(150000.00, '2024-10-01', '12.345.678-9', 'Capacitación sobre Manejo de Materiales Peligrosos'),
(200000.00, '2024-09-28', '98.765.432-1', 'Capacitación en Seguridad y Salud Ocupacional'),
(175000.00, '2024-09-30', '22.333.444-5', 'Capacitación en Prevención de Incendios');

-- Insertando registros en la tabla Visitas
INSERT INTO Visitas (cliente_id, fecha_visita, detalle, profesional_id) VALUES (1, '2024-09-10', 'Visita de inspección', 1);
INSERT INTO Visitas (cliente_id, fecha_visita, detalle, profesional_id) VALUES (2, '2024-09-11', 'Visita de evaluación', 2);
INSERT INTO Visitas (cliente_id, fecha_visita, detalle, profesional_id) VALUES (3, '2024-09-12', 'Visita de seguimiento', 3);

-- Insertando registros en la tabla Chequeos
INSERT INTO Chequeos (visita_id, detalle, estado) VALUES (1, 'Chequeo de seguridad general', 'Pendiente');
INSERT INTO Chequeos (visita_id, detalle, estado) VALUES (2, 'Chequeo de equipos', 'Completado');
INSERT INTO Chequeos (visita_id, detalle, estado) VALUES (3, 'Chequeo de cumplimiento de normativas', 'Pendiente');

-- Insertando registros en la tabla Asesorias
INSERT INTO Asesorias (nombre, detalle, profesional_id) VALUES ('Asesoría en Seguridad', 'Asesoría en temas de seguridad.', 1);
INSERT INTO Asesorias (nombre, detalle, profesional_id) VALUES ('Asesoría en Gestión de Riesgos', 'Asesoría en gestión de riesgos.', 2);
INSERT INTO Asesorias (nombre, detalle, profesional_id) VALUES ('Asesoría en Salud Ocupacional', 'Asesoría en salud ocupacional.', 3);

-- Insertando registros en la tabla Accidentes
INSERT INTO Accidentes (cliente_id, fecha_accidente, detalle) VALUES (1, '2024-09-10', 'Accidente de trabajo leve.');
INSERT INTO Accidentes (cliente_id, fecha_accidente, detalle) VALUES (2, '2024-09-11', 'Accidente con equipo.');
INSERT INTO Accidentes (cliente_id, fecha_accidente, detalle) VALUES (3, '2024-09-12', 'Accidente en área de producción.');

-- Insertando registros en la tabla Asistentes
INSERT INTO Asistentes (capacitacion_id, usuario_id) VALUES (1, 1);
INSERT INTO Asistentes (capacitacion_id, usuario_id) VALUES (2, 2);
INSERT INTO Asistentes (capacitacion_id, usuario_id) VALUES (3, 3);