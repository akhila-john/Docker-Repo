CREATE TABLE student (
student_id INT NOT NULL PRIMARY KEY,
   first_name VARCHAR(45) DEFAULT NULL,
     last_name VARCHAR(45) DEFAULT NULL,
     batch_id INT DEFAULT NULL,
     gender VARCHAR(45) DEFAULT NULL);

INSERT INTO student (student_id,first_name,last_name,batch_id,gender) VALUES (1,'amal','john',100,'m');
INSERT INTO student (student_id,first_name,last_name,batch_id,gender) VALUES (2,'peter','tom',101,'m');
INSERT INTO student (student_id,first_name,last_name,batch_id,gender) VALUES (3,'shelma','nazar',103,'f');
