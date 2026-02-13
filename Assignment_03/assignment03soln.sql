CREATE database COLLEGEU;
USE  COLLEGEU;
DROP database COLLEGEU;
CREATE TABLE Department (
    Dept_ID INT PRIMARY KEY,
    Dept_Name VARCHAR(50) ,
    Office_Location VARCHAR(100)
);

CREATE TABLE Student (
    Student_ID BIGINT PRIMARY KEY,
    Name VARCHAR(50) ,
    Date_of_Birth DATE,
    Gender CHAR(1),
    Contact_No VARCHAR(13),
    Dept_ID INT,
    FOREIGN KEY (Dept_ID) REFERENCES Department(Dept_ID)
);
CREATE TABLE Faculty (
    Faculty_ID INT PRIMARY KEY,
    Name VARCHAR(50) ,
    Designation VARCHAR(20),
    Email VARCHAR(50),
    Dept_ID INT,
    FOREIGN KEY (Dept_ID) REFERENCES Department(Dept_ID)
);
CREATE TABLE Course (
    Course_ID INT PRIMARY KEY,
    Course_Name VARCHAR(30) ,
    Credits INT,
    Dept_ID INT,
    Faculty_ID INT,
    FOREIGN KEY (Dept_ID) REFERENCES Department(Dept_ID),
    FOREIGN KEY (Faculty_ID) REFERENCES Faculty(Faculty_ID)
);
CREATE TABLE Enrollment (
    Enrollment_ID INT PRIMARY KEY,
    Semester VARCHAR(10),
    Grade CHAR(2),
    Student_ID BIGINT,
    Course_ID INT,
    FOREIGN KEY (Student_ID) REFERENCES Student(Student_ID),
    FOREIGN KEY (Course_ID) REFERENCES Course(Course_ID)
);


INSERT INTO Department VALUES (101, 'Civil Engineering', 'Block A');
INSERT INTO Department VALUES (102, 'Mechanical Engineering', 'Block B');
INSERT INTO Department VALUES (105, 'Computer Science and Engineering', 'Block C');
INSERT INTO Department VALUES (110, 'Electrical and Electronics Engineering', 'Block D');
INSERT INTO Department VALUES (118, '3D Animation and Graphics', 'Block E');
INSERT INTO Department VALUES (119, 'Civil Engineering with Computer Application', 'Block F');
INSERT INTO Department VALUES (157, 'Computer Science and Engineering (AIML)', 'Block G');


INSERT INTO Student VALUES (23101128001, 'Sachin Das', DATE '2004-05-12', 'M', '8347265910', 101);
INSERT INTO Student VALUES (23101128002, 'Aarav Dhanraj', DATE '2004-08-20', 'M', '9124587036', 101);
INSERT INTO Student VALUES (23101128003, 'Kunal Pandit', DATE '2003-11-15', 'M', '7894512638', 101);
INSERT INTO Student VALUES (23101128004, 'Raj Kishor Singh', DATE '2003-09-10', 'M', '9685021473', 101);
INSERT INTO Student VALUES (23101128005, 'Chetan Kumar', DATE '2004-01-18', 'M', '7458961230', 101);
INSERT INTO Student VALUES (23101128006, 'Md Bahrose', DATE '2002-12-25', 'M', '8932147506', 101);
INSERT INTO Student VALUES (23101128007, 'William Kumar Das', DATE '2003-07-05', 'M', '7019458236', 101);
INSERT INTO Student VALUES (23101128008, 'Raju Kumar', DATE '2004-03-22', 'M', '8563209741', 101);
INSERT INTO Student VALUES (23101128009, 'Prashant Kumar', DATE '2003-10-30', 'M', '9326087451', 101);
INSERT INTO Student VALUES (23101128010, 'Sunny Kumar', DATE '2004-06-14', 'M', '7815942603', 101);
INSERT INTO Student VALUES (23101128016, 'Sakshi Kumari', DATE '2004-03-15', 'F', '9123456701', 101);
INSERT INTO Student VALUES (23101128026, 'Rishika Kumari', DATE '2004-07-22', 'F', '9123456702', 101);
INSERT INTO Student VALUES (23101128027, 'Salini Kumari', DATE '2004-01-10', 'F', '9123456703', 101);
INSERT INTO Student VALUES (23101128036, 'Dipalee Singh', DATE '2003-11-05', 'F', '9123456704', 101);
INSERT INTO Student VALUES (23101128038, 'Manika Kumari', DATE '2004-05-18', 'F', '9123456705', 101);
INSERT INTO Student VALUES (23101128039, 'Usha Kumari', DATE '2003-09-27', 'F', '9123456706', 101);
INSERT INTO Student VALUES (23101128045, 'Chandni Kumari', DATE '2004-02-14', 'F', '9123456707', 101);
INSERT INTO Student VALUES (23101128046, 'Muskan Kumari', DATE '2004-06-30', 'F', '9123456708', 101);
INSERT INTO Student VALUES (23101128050, 'Nikita Suman', DATE '2003-12-09', 'F', '9123456709', 101);
INSERT INTO Student VALUES (23101128051, 'Viniti Kumari', DATE '2004-08-21', 'F', '9123456710', 101);


INSERT INTO Student VALUES (23102128001, 'Aman Kumar Singh', DATE '2004-02-14', 'M', '9123456781', 102);
INSERT INTO Student VALUES (23102128002, 'Pravi Ranjan', DATE '2003-11-08', 'M', '9234567812', 102);
INSERT INTO Student VALUES (23102128003, 'Sanoj Kumar', DATE '2004-06-19', 'M', '9345678123', 102);
INSERT INTO Student VALUES (23102128004, 'Anuj Prakash', DATE '2003-09-27', 'M', '9456781234', 102);
INSERT INTO Student VALUES (23102128006, 'Alok Kumar', DATE '2004-01-10', 'M', '9567812345', 102);
INSERT INTO Student VALUES (23102128007, 'Rahul Kumar Yadav', DATE '2003-12-05', 'M', '9678123456', 102);
INSERT INTO Student VALUES (23102128010, 'Ankit Kumar', DATE '2004-04-22', 'M', '9781234567', 102);
INSERT INTO Student VALUES (23102128012, 'Aniket Kumar Gandhi', DATE '2003-08-16', 'M', '9892345678', 102);
INSERT INTO Student VALUES (23102128013, 'Manish Kumar', DATE '2004-05-30', 'M', '9012345679', 102);
INSERT INTO Student VALUES (23102128014, 'Sanni Kumar', DATE '2003-10-11', 'M', '9123987654', 102);



INSERT INTO Student VALUES (23105128001, 'Shrishty Priya', '2004-03-12', 'F', '9123456701', 105);
INSERT INTO Student VALUES (23105128008, 'Asha Kumari', '2004-07-25', 'F', '9123456702', 105);
INSERT INTO Student VALUES (23105128011, 'Ananya Kumari', '2004-01-18', 'F', '9123456703', 105);
INSERT INTO Student VALUES (23105128012, 'Malti Kumari', '2003-11-09', 'F', '9123456704', 105);
INSERT INTO Student VALUES (23105128013, 'Komal Kumari', '2004-05-30', 'F', '9123456705', 105);
INSERT INTO Student VALUES (23105128018, 'Kajal Kumari', '2004-08-14', 'F', '9123456706', 105);
INSERT INTO Student VALUES (23105128020, 'Deepshikha Singh', '2003-12-22', 'F', '9123456707', 105);
INSERT INTO Student VALUES (23105128022, 'Jyoti Kumari', '2004-02-27', 'F', '9123456708', 105);
INSERT INTO Student VALUES (23105128034, 'Neha Kumari', '2004-06-16', 'F', '9123456709', 105);
INSERT INTO Student VALUES (23105128035, 'Shweta Kumari', '2003-10-05', 'F', '9123456710', 105);



INSERT INTO Student VALUES (23110128001, 'Himanshu Bhaskar', DATE '2003-09-18', 'M', '9128475601', 110);
INSERT INTO Student VALUES (23110128002, 'Raj Ranjan', DATE '2003-12-11', 'M', '9236584712', 110);
INSERT INTO Student VALUES (23110128003, 'Priti Kumari', DATE '2004-04-06', 'F', '9347695823', 110);
INSERT INTO Student VALUES (23110128004, 'Chandan Kumar Das', DATE '2003-07-25', 'M', '9458706934', 110);
INSERT INTO Student VALUES (23110128005, 'Manish Kumar', DATE '2004-01-14', 'M', '9569817045', 110);
INSERT INTO Student VALUES (23110128007, 'Sonam Priya', DATE '2004-06-19', 'F', '9670928156', 110);
INSERT INTO Student VALUES (23110128008, 'Aditya Raj', DATE '2003-10-03', 'M', '9781039267', 110);
INSERT INTO Student VALUES (23110128009, 'Sachin Tiwari', DATE '2003-08-28', 'M', '9892140378', 110);
INSERT INTO Student VALUES (23110128010, 'Nitu Kumari', DATE '2004-02-22', 'F', '9013251489', 110);
INSERT INTO Student VALUES (23110128011, 'Kalpana Chawla', DATE '2003-11-30', 'F', '9124362590', 110);



INSERT INTO Student VALUES (23118128001, 'Yousuf', DATE '2004-01-12', 'M', '9123400011', 118);
INSERT INTO Student VALUES (23118128002, 'Aman Kumar', DATE '2003-11-25', 'M', '9123400022', 118);
INSERT INTO Student VALUES (23118128003, 'Utsav Kumar', DATE '2004-03-08', 'M', '9123400033', 118);
INSERT INTO Student VALUES (23118128004, 'Akash Kumar', DATE '2003-09-19', 'M', '9123400044', 118);
INSERT INTO Student VALUES (23118128005, 'Asad Faruq', DATE '2004-02-14', 'M', '9123400055', 118);
INSERT INTO Student VALUES (23118128006, 'Sunny', DATE '2003-12-01', 'M', '9123400066', 118);
INSERT INTO Student VALUES (23118128007, 'Aman Kumar', DATE '2004-05-22', 'M', '9123400077', 118);
INSERT INTO Student VALUES (23118128008, 'Mithlesh Dixit', DATE '2003-08-30', 'M', '9123400088', 118);
INSERT INTO Student VALUES (23118128009, 'Muftahul', DATE '2004-04-10', 'M', '9123400099', 118);



INSERT INTO Student VALUES (23119128001, 'Gautam Kumar', DATE '2003-09-15', 'M', '9125600011', 119);
INSERT INTO Student VALUES (23119128004, 'Gaurav Kumar', DATE '2004-01-22', 'M', '9125600022', 119);
INSERT INTO Student VALUES (23119128005, 'Suprem Kumar', DATE '2003-12-03', 'M', '9125600033', 119);
INSERT INTO Student VALUES (23119128007, 'Laxmi Kumari', DATE '2004-05-18', 'F', '9125600044', 119);
INSERT INTO Student VALUES (23119128008, 'Anisha Kumari', DATE '2004-03-27', 'F', '9125600055', 119);
INSERT INTO Student VALUES (23119128009, 'Rishi Ranjan Kumar', DATE '2003-10-11', 'M', '9125600066', 119);
INSERT INTO Student VALUES (23119128010, 'Akshay Kumar', DATE '2004-02-06', 'M', '9125600077', 119);
INSERT INTO Student VALUES (23119128011, 'Suprit Kumar', DATE '2003-08-29', 'M', '9125600088', 119);
INSERT INTO Student VALUES (23119128012, 'Ram Krishan Tiwari', DATE '2003-11-19', 'M', '9125600099', 119);
INSERT INTO Student VALUES (23119128013, 'Rajeev Kumar', DATE '2004-04-09', 'M', '9125600100', 119);



INSERT INTO Student VALUES (23157128001, 'Simran Kumari', DATE '2004-03-12', 'F', '9126700011', 157);
INSERT INTO Student VALUES (23157128002, 'Harshit Kumar', DATE '2003-11-05', 'M', '9126700022', 157);
INSERT INTO Student VALUES (23157128003, 'Suraj Kumar', DATE '2004-01-18', 'M', '9126700033', 157);
INSERT INTO Student VALUES (23157128006, 'Priya Kumari', DATE '2004-05-09', 'F', '9126700044', 157);
INSERT INTO Student VALUES (23157128007, 'Shalini Shreya', DATE '2003-09-27', 'F', '9126700055', 157);
INSERT INTO Student VALUES (23157128009, 'Aditya Kashyap', DATE '2004-02-14', 'M', '9126700066', 157);
INSERT INTO Student VALUES (23157128010, 'Rajeev Kumar', DATE '2003-12-03', 'M', '9126700077', 157);
INSERT INTO Student VALUES (23157128011, 'Navin Kumar', DATE '2004-04-21', 'M', '9126700088', 157);
INSERT INTO Student VALUES (23157128012, 'Arman Shandilya', DATE '2003-10-16', 'M', '9126700099', 157);
INSERT INTO Student VALUES (23157128013, 'Prince Kumar', DATE '2004-06-08', 'M', '9126700100', 157);
INSERT INTO Student VALUES (23157128014, 'Kumar Nitesh', DATE '2003-08-29', 'M', '9126700111', 157);
INSERT INTO Student VALUES (23157128015, 'Aditya Ashish Kumar', DATE '2004-01-30', 'M', '9126700122', 157);
INSERT INTO Student VALUES (23157128016, 'Anubhav Kumar', DATE '2003-11-19', 'M', '9126700133', 157);



INSERT INTO Faculty VALUES (501, 'Kunal Kumar', 'Associate Professor', 'kunal1989kumar@gmail.com', 101);
INSERT INTO Faculty VALUES (502, 'Akhilesh Kumar', 'Associate Professor', 'akhileshkumar3804@gmail.com', 101);
INSERT INTO Faculty VALUES (503, 'Raushan Anand', 'Associate Professor', 'raushanbpmc@gmail.com', 101);
INSERT INTO Faculty VALUES (504, 'Pankaj Kumar', 'Associate Professor', 'pankajkumarpk8888@gmail.com', 101);
INSERT INTO Faculty VALUES (505, 'Nishikant Kumar', 'Associate Professor', 'nishikantbpmce32@gmail.com', 101);
INSERT INTO Faculty VALUES (506, 'Rupesh Kumar', 'Associate Professor', 'rupesh.kumar@gmail.com', 101);

INSERT INTO Faculty VALUES (507, 'Bablu Das', 'Associate Professor', 'bkmech78@gmail.com', 102);
INSERT INTO Faculty VALUES (508, 'Firoz Akhtar', 'Associate Professor', ' firozakhtar1581@gmail.com', 102);
INSERT INTO Faculty VALUES (509, 'Rahul Ranjan Bharti', 'Associate Professor', '15rahulbharti@gmail.com', 102);
INSERT INTO Faculty VALUES (510, 'Uttam Kumar', 'Associate Professor', 'uttamiitp1@gmail.com', 102);
INSERT INTO Faculty VALUES (511, 'Ajay Giri', 'Assistant Professor', 'ajay_giri05@rediffmail.com', 102);

INSERT INTO Faculty VALUES (518, 'E. Haque', 'Associate Professor', 'ehtasham47@gmail.com', 105);
INSERT INTO Faculty VALUES (519, 'Md. Izhar', 'Associate Professor', 'mdizhar1996@gmail.com', 105);
INSERT INTO Faculty VALUES (520, 'Prity Kumari Choudhary', 'Associate Professor', 'prity.choudhary@gmail.com', 105);
INSERT INTO Faculty VALUES (521, 'Sujeet Kumar', 'Associate Professor', 'ksujeet.cs@gmail.com', 105);
INSERT INTO Faculty VALUES (522, 'Murlidhar Prasad Singh', 'Associate Professor', 'singhmurlidhar@gmail.com', 105);

INSERT INTO Faculty VALUES (512, 'Hare Krishna Mishra', 'Professor', 'hare.dbit@gmail.com', 110);
INSERT INTO Faculty VALUES (513, 'Bhavesh Nandan', 'Associate Professor', 'bhavesh.nandan@gmail.com', 110);
INSERT INTO Faculty VALUES (514, 'Abhimanyu Mandal', 'Associate Professor', 'mandal.abhimanyu225@gmail.com', 110);
INSERT INTO Faculty VALUES (515, 'Nitish Kumar', 'Associate Professor', 'nitianj@gmail.com', 110);
INSERT INTO Faculty VALUES (516, 'Ashish Kumar Suman', 'Professor', 'sumanashish.rkt@gmail.com', 110);
INSERT INTO Faculty VALUES (517, 'Mitesh Kumar', 'Associate Professor', 'mitesh.sva@gmail.com', 110);

INSERT INTO Faculty VALUES (526, 'Manisha Kumari Singh', 'Associate Professor', 'manisha.ks241@gmail.com', 118);
INSERT INTO Faculty VALUES (527, 'Abhishek Kumar', 'Associate Professor', 'abhishek.kumar@gmail.com', 118);

INSERT INTO Faculty VALUES (525, 'N. Kumar', 'Associate Professor', 'n.kumar@gmail.com', 119);

INSERT INTO Faculty VALUES (523, 'Praveen Kumar', 'Assistant Professor', 'praveenkumaryadav782@gmail.com', 157);



INSERT INTO Course VALUES (101503, 'Geotechnical Engineering I', 4, 101, 506);
INSERT INTO Course VALUES (101507, 'Transportation Engineering', 4, 101, 507);
INSERT INTO Course VALUES (101505, 'Hydraulic Engineering', 4, 101, 509);
INSERT INTO Course VALUES (101502, 'Environmental Engineering I', 4, 101, 509);
INSERT INTO Course VALUES (101506, 'Mechanics of Materials', 4, 101, 508);
INSERT INTO Course VALUES (101504, 'Hydrology and Water Resources', 4, 101, 508);


INSERT INTO Course VALUES (102501, 'Fluid Machinery', 4, 102, 501);
INSERT INTO Course VALUES (102502, 'Heat Transfer', 4, 102, 505);
INSERT INTO Course VALUES (102503, 'Manufacturing Processes', 4, 102, 502);
INSERT INTO Course VALUES (102504, 'Kinematics of Machinery', 4, 102, 503);


INSERT INTO Course VALUES (105501, 'Artificial Intelligence', 4, 105, 518);
INSERT INTO Course VALUES (105502, 'Database Management Systems', 4, 105, 519);
INSERT INTO Course VALUES (105503, 'Formal Language and Automata', 4, 105, 523);
INSERT INTO Course VALUES (105504, 'Software Engineering', 4, 105, 522);
INSERT INTO Course VALUES (100508, 'Professional Skill Development', 2, 105, 520);



INSERT INTO Course VALUES (100506, 'Power Electronics', 4, 110, 516);
INSERT INTO Course VALUES (100507, 'Power Systems I', 4, 110, 515);
INSERT INTO Course VALUES (100502, 'Control Systems', 4, 110, 514);
INSERT INTO Course VALUES (110501, 'Analog and Digital', 4, 110, 513);



INSERT INTO Course VALUES (118501, '3D Modelling', 4, 118, 526);
INSERT INTO Course VALUES (118503, '3D Texturing', 4, 118, 526);
INSERT INTO Course VALUES (118502, '3D Character Design', 4, 118, 526);
INSERT INTO Course VALUES (100512, 'Design Thinking', 3, 118, 527);


INSERT INTO Course VALUES (119501, 'Machine Learning', 4, 119, 525);
INSERT INTO Course VALUES (119504, 'Geotechnical Engineering I', 4, 119, 506);
INSERT INTO Course VALUES (119507, 'Transportation Engineering', 4, 119, 507);
INSERT INTO Course VALUES (119502, 'Hydraulic Engineering', 4, 119, 509);
INSERT INTO Course VALUES (119506, 'Environmental Engineering I', 4, 119, 509);
INSERT INTO Course VALUES (119505, 'Hydrology and Water Resources', 4, 119, 508);


INSERT INTO Course VALUES (621, 'Machine Learning', 4, 157, 523);
INSERT INTO Course VALUES (622, 'Computer Networks', 4, 157, 523);
INSERT INTO Course VALUES (623, 'Artificial Intelligence', 4, 157, 523);


INSERT INTO Enrollment VALUES (1201, '5th', 'A', 23105128001, 105501);
INSERT INTO Enrollment VALUES (1202, '5th', 'A-', 23105128001, 105502);
INSERT INTO Enrollment VALUES (1203, '5th', 'B+', 23105128001, 105503);
INSERT INTO Enrollment VALUES (1204, '5th', 'A', 23105128001, 105504);
INSERT INTO Enrollment VALUES (1205, '5th', 'B', 23105128001, 100508);



INSERT INTO Enrollment VALUES (1236, '5th', 'B', 23105128008, 105501);
INSERT INTO Enrollment VALUES (1237, '5th', 'A-', 23105128008, 105502);
INSERT INTO Enrollment VALUES (1238, '5th', 'A', 23105128008, 105503);
INSERT INTO Enrollment VALUES (1239, '5th', 'B+', 23105128008, 105504);
INSERT INTO Enrollment VALUES (1240, '5th', 'A', 23105128008, 100508);




SELECT * FROM Department;
SELECT * FROM Enrollment;
SELECT * FROM Faculty;
SELECT * FROM Student;
SELECT * FROM Course;
