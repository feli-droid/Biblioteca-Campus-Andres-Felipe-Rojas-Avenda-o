CREATE DATABASE IF NOT EXISTS biblioteca_campus;
USE biblioteca_campus;

CREATE TABLE Autor (
    id_autor    INT PRIMARY KEY AUTO_INCREMENT,
    nombre      VARCHAR(120) NOT NULL,
    nacionalidad VARCHAR(60)
);

CREATE TABLE Libro (
    id_libro    INT PRIMARY KEY AUTO_INCREMENT,
    titulo      VARCHAR(200) NOT NULL,
    genero      VARCHAR(60) NOT NULL,
    isbn        VARCHAR(20) NOT NULL UNIQUE,
    disponible  BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE LibroAutor (
    id_libro  INT NOT NULL,
    id_autor  INT NOT NULL,
    PRIMARY KEY (id_libro, id_autor),
    FOREIGN KEY (id_libro) REFERENCES Libro(id_libro)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_autor) REFERENCES Autor(id_autor)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Publicacion (
    id_publicacion    INT PRIMARY KEY AUTO_INCREMENT,
    id_libro          INT NOT NULL,
    numero_edicion    INT NOT NULL DEFAULT 1,
    fecha_publicacion DATE NOT NULL,
    editorial         VARCHAR(120) NOT NULL,
    FOREIGN KEY (id_libro) REFERENCES Libro(id_libro)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Miembro (
    id_miembro      INT PRIMARY KEY AUTO_INCREMENT,
    nombre          VARCHAR(120) NOT NULL,
    correo          VARCHAR(120) NOT NULL UNIQUE,
    fecha_registro  DATE NOT NULL DEFAULT (CURRENT_DATE)
);

CREATE TABLE Transaccion (
    id_transaccion   INT PRIMARY KEY AUTO_INCREMENT,
    id_libro         INT NOT NULL,
    id_miembro       INT NOT NULL,
    fecha_prestamo   DATE NOT NULL,
    fecha_devolucion DATE NULL,
    estado           ENUM('Prestado', 'Devuelto') NOT NULL DEFAULT 'Prestado',
    FOREIGN KEY (id_libro) REFERENCES Libro(id_libro)
        ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (id_miembro) REFERENCES Miembro(id_miembro)
        ON DELETE RESTRICT ON UPDATE CASCADE
);
