drop database if exists registroDeEstudiantes;
CREATE DATABASE registroDeEstudiantes;

USE registroDeEstudiantes;

CREATE TABLE Estudiantes (
    id INT AUTO_INCREMENT,
    name VARCHAR(100),
    lastName VARCHAR(100),
    cedula VARCHAR(20),
    photo BLOB,
    PRIMARY KEY (id)
);

CREATE TABLE Cursos (
    id INT AUTO_INCREMENT,
    name VARCHAR(100),
    PRIMARY KEY (id)
);

CREATE TABLE Materias (
    id INT AUTO_INCREMENT,
    name VARCHAR(100),
    course_id INT,
    FOREIGN KEY (course_id) REFERENCES Cursos(id),
    PRIMARY KEY (id)
);

CREATE TABLE Estudiantes_Cursos (
    student_id INT,
    course_id INT,
    FOREIGN KEY (student_id) REFERENCES Estudiantes(id),
    FOREIGN KEY (course_id) REFERENCES Cursos(id),
    PRIMARY KEY (student_id, course_id)
);

CREATE TABLE Notas (
    id INT AUTO_INCREMENT,
    nota DECIMAL(3,2),
    corte INT,
    subjetct_id INT,
    student_id INT,
    FOREIGN KEY (subjetct_id) REFERENCES Materias(id),
    FOREIGN KEY (student_id) REFERENCES Estudiantes(id),
    PRIMARY KEY (id)
);
