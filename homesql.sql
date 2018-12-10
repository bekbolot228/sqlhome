#1
#step one
CREATE DATABASE hospital 
 CHARACTER SET utf8
 COLLATE utf8_general_ci;

USE hospital;

#step two

CREATE TABLE doctor (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
f_name VARCHAR(255) NOT NULL);

#step three

INSERT INTO doctor(id, f_name)
 VALUES (NULL , 'Bekbolot'),
VALUES (NULL, 'Mandalay'),
VALUES (NULL, 'Bob');

#step four

CREATE TABLE patient ( 
    -> id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    -> name VARCHAR(255) NOT NULL);

#step five

INSERT INTO patient (id, name) 
    -> VALUES (NULL, 'Sema'),
    -> VALUES (NULL, 'Chyngyz'),
    -> VALUES (NULL, 'Diku'),
    -> VALUES (NULL, 'Nurs');

#step six

 CREATE TABLE doctor_patient(
    -> id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    -> id_doctor INT NOT NULL,
    -> id_patient INT NOT NULL,
    -> FOREIGN KEY(id_doctor)
    -> REFERENCES doctor(id)
    -> ON DELETE NO ACTION
    -> ON UPDATE NO ACTION,
    -> FOREIGN KEY(id_patient)
    -> REFERENCES patient(id)
    -> ON DELETE NO ACTION
    -> ON UPDATE NO ACTION);

#step seven

INSERT INTO doctor_patient(id, id_doctor, id_patient)
    -> VALUES (NULL,1, 2),
       VALUES (NULL, 3, 2),
    -> VALUES(NULL, 2, 3 ),
       VALUES (NULL, 1 , 4),
       VALUES(NULL,2, 4);

#step eight

 SELECT f_name, name FROM doctor_patient 
    -> JOIN doctor
    -> ON doctor.id = doctor_patient.id_doctor  
    -> JOIN patient
    -> ON patient.id = doctor_patient.id_patient;



#2 
#step one

CREATE DATABASE course
    -> CHARACTER SET utf8
    -> COLLATE utf8_general_ci;

USE course;

#step two

INSERT INTO course( id, course_name)
    -> VALUES (NULL, 'Python'),
    -> VALUES (NULL, 'PHP'),
    -> VALUES (NULL, 'Java'),
    -> VALUES (NULL, 'front-end');

#step three

 CREATE TABLE student(
    -> id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    -> name VARCHAR(255) NOT NULL);

#step four

 INSERT INTO student( id, name)
    -> VALUES (NULL, 'Biba'),
    -> VALUES (NULL, 'Boba'),
    -> VALUES (NULL, 'Strey'),
    -> VALUES (NULL, 'Bob'),
    -> VALUES (NULL, 'Oxxximiron');

#step five

CREATE TABLE course_student(
    -> id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    -> id_course INT NOT NULL,
    -> id_student INT NOT NULL,
    -> FOREIGN KEY(id_course)
    -> REFERENCES course(id)
    -> ON DELETE NO ACTION
    -> ON UPDATE NO ACTION,
    -> FOREIGN KEY(id_student)
    -> REFERENCES student(id)
    -> ON DELETE NO ACTION
    -> ON UPDATE NO ACTION);

#step six

INSERT INTO course_student(id, id_course, id_student)
    -> VALUES (NULL, 1, 1),
    -> VALUES (NULL, 4, 1),
    -> VALUES (NULL, 1, 2),
    -> VALUES (NULL, 2, 3),
    -> VALUES (NULL, 2, 5),
    -> VALUES (NULL, 4, 3),
    -> VALUES (NULL, 3, 4);

#step seven

SELECT course_name, name FROM course_student
    -> JOIN course
    -> ON course.id = course_student.id_course
    -> JOIN student
    -> ON student.id = course_student.id_student;

