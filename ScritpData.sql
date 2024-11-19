CREATE DATABASE dbEnrollmentStudent;
USE dbEnrollmentStudent;

INSERT INTO student(id, names, last_name, email, register_date, birthday, status)
VALUES
('1', 'lorenzo','campos','lorenzo@gmail.com','2001-12-12','1990-11-12', '1'),
('2', 'Pepito','Casas','pepito@gmail.com','2003-12-13','1990-09-12', '1'),
('3', 'Auron','De la cruz','auron@gmail.com','2012-12-14','1990-10-12', '1'),
('4', 'Sukji','Casani','sukji@gmail.com','2015-12-15','1990-01-12', '1'),
('5', 'Evelyn','Anculli','evelyn@gmail.com','2016-12-16','1990-02-12', '1');


INSERT INTO student(id, names, last_name, email, register_date, birthday, status)
VALUES
('2', 'Pepito','Casas','pepito@gmail.com','2003-12-13','1990-09-12', '1'),
('3', 'Auron','De la cruz','auron@gmail.com','2012-12-14','1990-10-12', '1'),
('4', 'Sukji','Casani','sukji@gmail.com','2015-12-15','1990-01-12', '1'),
('5', 'Evelyn','Anculli','evelyn@gmail.com','2016-12-16','1990-02-12', '1');

select * from student;



INSERT INTO careers_detail (id, careers_id, course_id, teachers_id)
VALUES
('1', '1', '1','1'),
('2', '2', '2','2'),
('3', '3', '3','3'),
('4', '4', '4','4'),
('5', '5', '5','5');

SELECT * FROM careers_detail;


INSERT INTO course (code, names, credits, status)
VALUES
('1', 'SISTEMAS', '3', '1'),
('2', 'base de datos', '1', '1'),
('3', 'programacion', '4', '1'),
('4', 'telematica', '2', '1'),
('5', 'lenguaje', '3', '1');

SELECT * FROM course;

INSERT INTO seller(code, names, last_name, email, bithday, place, salary, status)
VALUES
('1', 'Juan', 'Perez', 'juam@gmail.com', '1999-12-01', 'san vicente', '150.00', '1'),
('2', 'Ana', 'Saurez', 'ana@gmail.com', '2000-12-01', 'san luis', '200.00', '1'),
('3', 'Roberto', 'Sanchez', 'roberto@gmail.com', '2004-12-01', 'san isidro', '500.00', '1'),
('4', 'Luan', 'Pardo', 'luan@gmail.com', '2005-12-01', 'san vicente', '600.00', '1'),
('5', 'Cristel', 'Casia', 'cristel@gmail.com', '2000-12-01', 'san vicente', '1800.00', '1');

SELECT * FROM seller;


INSERT INTO teachers(id, register_Date, names, last_name, specialty,phone, email, status)
VALUES
('1', '2006-02-02', 'Julio', 'Centeno', 'filosofia', '987654356', 'julio@gmail.com', '1'),
('2', '2020-02-02', 'Maria', 'Antesana', 'Ingles', '987222356', 'maria@gmail.com', '1'),
('3', '2001-02-02', 'Julia', 'Lopez', 'Matematicas', '982854356', 'julia@gmail.com', '1'),
('4', '2006-02-02', 'Andrea', 'Vicente', 'Biologia', '987114356', 'andrea@gmail.com', '1'),
('5', '2006-02-02', 'Betty', 'Sanchez', 'Fisica', '987002356', 'betty@gmail.com', '1');

SELECT * FROM teachers;

INSERT INTO campus(code, register_date, name, direction, place, status)
VALUES
('1', '2008-09-12', 'Campus Lima', 'Lima', 'Los Girasoles','1'),
('2', '2009-07-16', 'Campus Cañete', 'Cañete', 'Puente Piedra','1'),
('3', '2010-06-02', 'Campus Arequipa', 'Arequipa', 'Miraflores','1'),
('4', '2011-04-03', 'Campus Cuzco', 'Cuzco', 'San Juan de Lurigancho','1'),
('5', '2012-02-09', 'Campus Cajamarca', 'Cajamarca', 'San Luis','1');

Select * from campus;

INSERT INTO enrollment(id, register_date, student_id, seller_code, careers_id, campus_code, price, start_date, status)
values
('1', '2001-01-01', '1', '1', '1','1','100.00','2001-05-01','1'),
('2', '2002-01-02', '2', '2', '2','2','101.00','2002-04-02','1'),
('3', '2003-01-03', '3', '3', '3','3','102.00','2003-03-03','1'),
('4', '2004-01-04', '4', '4', '4','4','103.00','2004-02-04','1'),
('5', '2005-01-05', '5', '5', '5','5','104.00','2005-01-05','1');


select * from enrollment;