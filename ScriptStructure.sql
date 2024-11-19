-- Crear base de datos
CREATE DATABASE dbEnrollmentStudent;
USE dbEnrollmentStudent;

-- Tabla: campus
CREATE TABLE campus (
    code CHARACTER(4) NOT NULL CONSTRAINT campus_pk PRIMARY KEY,
    register_date DATE NOT NULL,
    name VARCHAR(100) NOT NULL,
    direction VARCHAR(150) NOT NULL,
    place VARCHAR(150) NOT NULL,
    status CHARACTER(1) NOT NULL
);

-- Tabla: course
CREATE TABLE course (
    code CHARACTER(4) NOT NULL CONSTRAINT course_pk PRIMARY KEY,
    names VARCHAR(160) NOT NULL,
    credits INTEGER NOT NULL,
    status CHARACTER(1) NOT NULL
);

-- Tabla: careers
CREATE TABLE careers (
    id INTEGER NOT NULL CONSTRAINT careers_pk PRIMARY KEY,
    names VARCHAR(150) NOT NULL,
    descriptions VARCHAR(2500) NOT NULL,
    durations INTEGER NOT NULL,
    register_date DATE NOT NULL,
    status CHARACTER(1) NOT NULL
);

-- Tabla: teachers
CREATE TABLE teachers (
    id INTEGER NOT NULL CONSTRAINT teachers_pk PRIMARY KEY,
    register_Date DATE NOT NULL,
    names VARCHAR(70) NOT NULL,
    last_name VARCHAR(150) NOT NULL,
    specialty VARCHAR(120) NOT NULL,
    phone CHARACTER(9) NOT NULL,
    email VARCHAR(120) NOT NULL,
    status CHARACTER(1) NOT NULL
);

-- Tabla: careers_detail
CREATE TABLE careers_detail (
    id INTEGER NOT NULL CONSTRAINT careers_detail_pk PRIMARY KEY,
    careers_id INTEGER NOT NULL,
    course_id CHARACTER(4) NOT NULL,
    teachers_id INTEGER NOT NULL,
    CONSTRAINT careers_detail_careers FOREIGN KEY (careers_id)
        REFERENCES careers (id),
    CONSTRAINT careers_detail_course FOREIGN KEY (course_id)
        REFERENCES course (code),
    CONSTRAINT careers_detail_teachers FOREIGN KEY (teachers_id)
        REFERENCES teachers (id)
);

-- Tabla: seller
CREATE TABLE seller (
    code CHARACTER(4) NOT NULL CONSTRAINT seller_pk PRIMARY KEY,
    names VARCHAR(70) NOT NULL,
    last_name VARCHAR(120) NOT NULL,
    email VARCHAR(90) NOT NULL,
    bithday DATE NOT NULL,
    place VARCHAR(150) NOT NULL,
    salary DECIMAL(8,2) NOT NULL,
    status CHARACTER(1) NOT NULL
);

-- Tabla: student
CREATE TABLE student (
    id INTEGER NOT NULL CONSTRAINT student_pk PRIMARY KEY,
    names VARCHAR(60) NOT NULL,
    last_name VARCHAR(90) NOT NULL,
    email VARCHAR(100) NOT NULL,
    register_Date DATE NOT NULL,
    birthday DATE NOT NULL,
    status CHARACTER(1) NOT NULL
);

-- Tabla: enrollment
CREATE TABLE enrollment (
    id INTEGER NOT NULL CONSTRAINT enrollment_pk PRIMARY KEY,
    register_date DATE NOT NULL,
    price DECIMAL(8,2) NOT NULL,
    start_date DATE NOT NULL,
    status CHARACTER(1) NOT NULL,
    seller_code CHARACTER(4) NOT NULL,
    campus_code CHARACTER(4) NOT NULL,
    student_id INTEGER NOT NULL,
    careers_id INTEGER NOT NULL,
    CONSTRAINT enrollment_seller FOREIGN KEY (seller_code)
        REFERENCES seller (code),
    CONSTRAINT enrollment_campus FOREIGN KEY (campus_code)
        REFERENCES campus (code),
    CONSTRAINT enrollment_student FOREIGN KEY (student_id)
        REFERENCES student (id),
    CONSTRAINT enrollment_careers FOREIGN KEY (careers_id)
        REFERENCES careers (id)
);