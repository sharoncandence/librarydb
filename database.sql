CREATE TABLE librarians
(ID int primary key NOT NULL,name varchar(255)NOT NULL,
 email varchar(255)UNIQUE NOT NULL,
 telephone varchar(255)UNIQUE NOT NULL,shifts varchar(255) NOT NULL);
 
CREATE TABLE books
(books_ID int primary key NOT NULL,title varchar(255) NOT NULL UNIQUE,
 price varchar(255)NOT NULL,description varchar(255)NOT NULL,
 publish_date varchar(255) NOT NULL,publish_year varchar(255) NOT NULL,
 isbn_no varchar(255)NOT NULL,img varchar(255) not null);
 
CREATE TABLE authors
(authors_ID int primary key NOT NULL,name varchar(255)NOT NULL,email varchar(255)UNIQUE NOT NULL,Bio varchar(255)UNIQUE NOT  NULL,
 contact varchar(255) UNIQUE NOT NULL,publishingCompanies varchar(255)NOT NULL);
 
CREATE TABLE students
(students_ID int primary key,name varchar(255),contact varchar(255)UNIQUE,address varchar(255),
 date_of_borrowing varchar(255) not null,date_of_return varchar(255));
 
-- CREATE TABLE shifts(shifts_ID int primary key NOT NULL,name varchar(255)NOT NULL,duration varchar(255)NOT NULL);

-- CREATE TABLE publishingCompanies
-- (ID int primary key NOT NULL,name varchar(255)NOT NULL,email varchar(255)NOT NULL,Address varchar(255)NOT NULL);


INSERT INTO librarians(ID,name,email,telephone,shifts) VALUES(001,'Nakitende Rose','rose@gmail.com','0756896544','Morning'),(002,'Nagaba Prossy','prossy@gmail.com','0765434532','Evening'),(003,'Kizza Peter','peter@gmail.com','0733886655','Morinig'),(004,'Kian Isaiah','kian@gmail.com','0766554411','Morning');

INSERT INTO books(ID,title,price,description,publish_date,publish_year,isbn_no,img) VALUES(055,'Hardware Skills','50000','Amust have for computer technicians','13_june','1999','444000','img_33'),
(066,'Photoshop tools','90000','For graphics designers','11_December','2000','111000','img_00'),
(099,'Mechanics','100000','Best technicians','10_september','2004','300009','img_56'),
(033,'Data Science','89000','data scientist','1_November','1790','777700','img_40');

INSERT INTO authors(authors_ID,name,email,Bio,contact,publishingCompanies)VALUES(656,'Kenneth Wakas','ken@gmail.com','12years Experience in hardware skills','0745656561','Comic Books'),
(611,'Rovence Kabahinda','rov@gmail.com','Harvard tutor with 10 years experience','0789090901','Harvard Books'),
(622,'Cochran','ran@gmail.com','Best book writer 2009','0733030361','Asia Books'),
(600,'Muhame Alon','alon@gmail.com','data analyst','0709090961','American Books');

INSERT INTO students(ID,name,contact,address,date_of_borrowing,date_of_return) VALUES(222,'Asiimwe Dora','0768909090','Makindye','13-02-2022','26_12_2022'),
(333,'Atim sarah','0763399080','Namugongo','28-02-2022','10_03_2022'),
(444,'Amongin sharon','075642322','Luzira','10-02-2022','null'),
(555,'Asio Nowella','0730987655','Kawempe','3-02-2022','null');


Select *From authors;
SELECT * FROM librarians WHERE shifts='Morning';
SELECT * FROM students WHERE date_of_return='null';
select name,publishingCompanies FROM authors;
