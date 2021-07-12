

use institution;

CREATE TABLE student (
student_id INT NOT NULL,
   first_name VARCHAR(45) NOT NULL,
     last_name VARCHAR(45) NOT NULL,
     batch_id INT NOT NULL,
     gender VARCHAR(45) NOT NULL,
     PRIMARY KEY(student_id));
     
INSERT INTO student (student_id,first_name,last_name,batch_id,gender) VALUES (1,'amal','john',100,'m');

