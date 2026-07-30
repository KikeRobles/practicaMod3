-- Tabla para almacenar los puestos de trabajo
CREATE TABLE puestos(
    id_puesto SERIAL PRIMARY KEY,
    nombre_puesto VARCHAR(255) UNIQUE NOT NULL
);

-- Tabla para almacenar datos de usuarios
CREATE TABLE usuarios (
    id_usuario SERIAL PRIMARY KEY,
    id_puesto INT NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    correo VARCHAR(255) UNIQUE,
    telefono VARCHAR(15),
    fecha_nacimiento DATE
    FOREIGN KEY (id_puesto) REFERENCES puestos (id_puesto)    
);

-- Tabla para almacenar usuarios y contraseñas
CREATE TABLE credenciales(
    id_credencial SERIAL PRIMARY KEY,
    id_usuario INT NOT NULL,
    username VARCHAR(50) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES usuarios (id_usuario)
);

