USE biblioteca_campus;

INSERT INTO Autor (nombre, nacionalidad) VALUES
('Gabriel García Márquez', 'Colombiana'),
('Isabel Allende', 'Chilena'),
('Mario Vargas Llosa', 'Peruana'),
('J.K. Rowling', 'Británica');

INSERT INTO Libro (titulo, genero, isbn, disponible) VALUES
('Cien años de soledad', 'Realismo mágico', '978-84-376-0494-7', TRUE),
('El amor en los tiempos del cólera', 'Novela', '978-84-397-2408-2', TRUE),
('La casa de los espíritus', 'Realismo mágico', '978-84-01-24289-4', FALSE),
('La ciudad y los perros', 'Novela', '978-84-663-2229-8', TRUE),
('Harry Potter y la piedra filosofal', 'Fantasía', '978-84-7888-445-4', TRUE);

INSERT INTO LibroAutor (id_libro, id_autor) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 3),
(5, 4);

INSERT INTO Publicacion (id_libro, numero_edicion, fecha_publicacion, editorial) VALUES
(1, 1, '1967-06-05', 'Editorial Sudamericana'),
(1, 2, '1982-11-10', 'Editorial Diana'),
(2, 1, '1985-09-05', 'Editorial Oveja Negra'),
(3, 1, '1982-01-01', 'Plaza & Janés'),
(4, 1, '1963-01-01', 'Seix Barral'),
(5, 1, '1997-06-26', 'Bloomsbury'),
(5, 2, '1998-10-01', 'Salamandra');

INSERT INTO Miembro (nombre, correo, fecha_registro) VALUES
('Ana Pérez', 'ana.perez@campus.com', '2025-02-10'),
('Luis Gómez', 'luis.gomez@campus.com', '2025-03-15'),
('Camila Rojas', 'camila.rojas@campus.com', '2025-05-01');

INSERT INTO Transaccion (id_libro, id_miembro, fecha_prestamo, fecha_devolucion, estado) VALUES
(3, 1, '2026-08-01', NULL, 'Prestado'),
(1, 2, '2026-07-10', '2026-07-24', 'Devuelto'),
(5, 3, '2026-09-01', NULL, 'Prestado'),
(4, 1, '2026-06-15', '2026-06-30', 'Devuelto');
