USE school_management;

-- Inserciones para la tabla student
INSERT INTO student (dni, first_name, last_name, date_of_birth, gender, address, phone_number, email, enrollment_date) 
VALUES 
('12345678A', 'Juan', 'Pérez', '2005-06-15', 'Masculino', 'Calle Principal 123', '555-1234', 'juan.perez@example.com', '2021-09-01'),
('87654321B', 'María', 'González', '2006-02-20', 'Femenino', 'Calle Secundaria 456', '555-5678', 'maria.gonzalez@example.com', '2021-09-01'),
('56781234C', 'Carlos', 'López', '2004-11-11', 'Masculino', 'Avenida Libertad 789', '555-9876', 'carlos.lopez@example.com', '2021-09-01'),
('43218765D', 'Ana', 'Martínez', '2005-08-30', 'Femenino', 'Calle Los Almendros 101', '555-3456', 'ana.martinez@example.com', '2021-09-01'),
('12348765E', 'Pedro', 'Ramírez', '2006-01-22', 'Masculino', 'Calle Las Flores 102', '555-6543', 'pedro.ramirez@example.com', '2021-09-01');

-- Inserciones para la tabla teacher
INSERT INTO teacher (dni, first_name, last_name, date_of_birth, gender, address, phone_number, email, hire_date, subject) 
VALUES 
('11223344C', 'Laura', 'Fernández', '1980-03-15', 'Femenino', 'Calle Mayor 789', '555-4321', 'laura.fernandez@example.com', '2010-08-01', 'Matemáticas'),
('22334455D', 'José', 'Rodríguez', '1975-11-30', 'Masculino', 'Avenida del Sol 101', '555-8765', 'jose.rodriguez@example.com', '2008-05-15', 'Historia'),
('33445566E', 'Sofía', 'Gómez', '1985-09-10', 'Femenino', 'Calle Las Palmas 202', '555-6542', 'sofia.gomez@example.com', '2012-03-12', 'Ciencias'),
('44556677F', 'Miguel', 'Díaz', '1978-02-25', 'Masculino', 'Avenida del Parque 303', '555-5432', 'miguel.diaz@example.com', '2005-09-01', 'Inglés'),
('55667788G', 'Lucía', 'Ruiz', '1982-07-18', 'Femenino', 'Calle del Río 404', '555-6789', 'lucia.ruiz@example.com', '2015-11-22', 'Arte');

-- Inserciones para la tabla course
INSERT INTO course (course_name, description, start_date, end_date) 
VALUES 
('Matemáticas 101', 'Curso básico de matemáticas', '2023-09-01', '2024-06-30'),
('Historia 101', 'Introducción a la historia mundial', '2023-09-01', '2024-06-30'),
('Ciencias 101', 'Conceptos básicos de ciencias', '2023-09-01', '2024-06-30'),
('Inglés 101', 'Introducción al inglés básico', '2023-09-01', '2024-06-30'),
('Arte 101', 'Exploración básica de las artes visuales', '2023-09-01', '2024-06-30');

-- Inserciones para la tabla classroom
INSERT INTO classroom (classroom_name, capacity) 
VALUES 
('Sala A', 30),
('Sala B', 25),
('Sala C', 35),
('Sala D', 20),
('Sala E', 40);

-- Inserciones para la tabla schedule
INSERT INTO schedule (course_id, classroom_id, teacher_id, day_of_week, start_time, end_time) 
VALUES 
(1, 1, 1, 'Lunes', '09:00', '10:30'),
(2, 2, 2, 'Martes', '10:45', '12:15'),
(3, 3, 3, 'Miércoles', '08:00', '09:30'),
(4, 4, 4, 'Jueves', '13:00', '14:30'),
(5, 5, 5, 'Viernes', '11:00', '12:30');

-- Inserciones para la tabla enrollment
INSERT INTO enrollment (student_id, course_id, enrollment_date, grade) 
VALUES 
(1, 1, '2023-09-02', NULL),
(2, 2, '2023-09-02', NULL),
(3, 3, '2023-09-02', NULL),
(4, 4, '2023-09-02', NULL),
(5, 5, '2023-09-02', NULL);

-- Inserciones para la tabla attendance
INSERT INTO attendance (student_id, course_id, date, status) 
VALUES 
(1, 1, '2023-09-05', 'Presente'),
(2, 2, '2023-09-05', 'Ausente'),
(3, 3, '2023-09-05', 'Presente'),
(4, 4, '2023-09-05', 'Presente'),
(5, 5, '2023-09-05', 'Ausente');
