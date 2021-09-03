create table doctor (
	doctor_id int NOT NULL,
	doctor_name char(30) NOT NULL,
	specialization char(30) NOT NULL,
	department char(30) NOT NULL,
	primary key(doctor_id)
);

create table patient (
	patient_id int NOT NULL,
	patient_name char(30) NOT NULL,
	patient_type char(30),
	sex char(1) NOT NULL,
	address varchar(50),
	mob varchar(10) NOT NULL,
	NRIC varchar(8),
	primary key(patient_id)
);

create table "time" (
	time_id int NOT NULL,
	consultation_date date NOT NULL,
	consultation_time time NOT NULL,
	primary key(time_id)
);

create table facts (
	doctor_id int NOT NULL,
	patient_id int NOT NULL,
	time_id int NOT NULL,
	treatment char(30),
	charge real NOT NULL,
	primary key(doctor_id, patient_id, time_id),
	foreign key(doctor_id) references doctor (doctor_id) on delete cascade,
	foreign key(patient_id) references patient (patient_id) on delete cascade,
	foreign key(time_id) references time (time_id) on delete cascade
);

select * from doctor;
insert into doctor values(1, 'Rahul Sharma', 'Medical oncology', 'Oncology');
insert into doctor values(2, 'Manjari B', 'Opthalmology', 'Outpatient');
insert into doctor values(3, 'Ajith Kumar', 'Cardiac surgeon', 'Cardiology');
insert into doctor values(4, 'Devendra Das', 'Orthodontist', 'Dentistry');
insert into doctor values(5, 'Praveen Gaikwad', 'Pediatric physician', 'Pediatrics');

select * from patient;
insert into patient values(1001, 'Aryan', 'Spine cancer', 'M', 'Ghansoli', 8989786533, 80808080);
insert into patient values(1002, 'Geetha', 'Arrhythmia', 'F', 'Vasai', 9080768798, 44448888);
insert into patient values(1003, 'Dhanesh', 'Glaucoma', 'M', 'Panvel', 7869653532, 12345678);
insert into patient values(1004, 'Roy', 'Periodontitis', 'M', 'Byculla', 9999888777, 78654321);
insert into patient values(1005, 'Mansi', 'Rhinitis', 'F', 'Andheri', 9879876543, 22266688);

--For K-MEANS--
insert into patient values(1006, 'Aryan', 'Spine cancer', 'M', 'Fort', 8989786533, 80808080);
insert into patient values(1007, 'Manish', 'Arrhythmia', 'M', 'Powai', 9080768798, 44448888);
insert into patient values(1008, 'Ganesh', 'Glaucoma', 'M', 'Karjat', 7869653532, 12345678);
insert into patient values(1009, 'Aditya', 'Periodontitis', 'M', 'Pune', 9999888777, 78654321);
insert into patient values(1010, 'Sidharth', 'Rhinitis', 'M', 'Byculla', 9879876543, 22266688);
insert into patient values(1011, 'Manjula', 'Spine cancer', 'M', 'Andheri', 8989786533, 80808080);
insert into patient values(1012, 'Gayatri', 'Arrhythmia', 'F', 'Kharghar', 9080768798, 44448888);
insert into patient values(1013, 'Manu', 'Glaucoma', 'M', 'Panvel', 7869653532, 12345678);
insert into patient values(1014, 'Shreyas', 'Periodontitis', 'M', 'Ulwe', 9999888777, 78654321);
insert into patient values(1015, 'Kanchan', 'Rhinitis', 'F', 'Vashi', 9879876543, 22266688);
insert into patient values(1016, 'Raghav', 'Rhinitis', 'M', 'Thane', 9879876543, 22266688);

select * from time;
insert into time values(11, '2021-01-09', '08:00');
insert into time values(22, '2021-01-10', '09:45');
insert into time values(33, '2021-02-18', '20:30');
insert into time values(44, '2021-02-04', '10:20');
insert into time values(55, '2021-02-23', '10:00');

--For K-MEANS--
insert into time values(66, '2021-01-10', '09:00');
insert into time values(77, '2021-01-12', '08:00');
insert into time values(88, '2021-01-16', '09:45');
insert into time values(99, '2021-02-19', '20:30');
insert into time values(10, '2021-02-08', '10:20');
insert into time values(20, '2021-02-02', '10:00');
insert into time values(30, '2021-01-19', '08:00');
insert into time values(40, '2021-01-23', '09:45');
insert into time values(50, '2021-02-12', '20:30');
insert into time values(60, '2021-02-10', '10:20');
insert into time values(70, '2021-02-13', '10:00');

select * from facts;
insert into facts values(1, 1001, 44, 'Chemotherapy', 3800);
insert into facts values(2, 1003, 22, 'Lumigan', 700);
insert into facts values(3, 1002, 11, 'Cardioversion', 8000);
insert into facts values(4, 1004, 55, 'Chlorhexidine', 500);
insert into facts values(5, 1005, 33, 'Oxymetazoline', 350);

--For K-MEANS--
insert into facts values(1, 1006, 77, 'Chemotherapy', 1280);
insert into facts values(2, 1008, 99, 'Lumigan', 2700);
insert into facts values(3, 1007, 20, 'Cardioversion', 7770);
insert into facts values(4, 1009, 66, 'Chlorhexidine', 578);
insert into facts values(5, 1010, 10, 'Oxymetazoline', 3300);
insert into facts values(1, 1011, 70, 'Chemotherapy', 1940);
insert into facts values(2, 1013, 40, 'Lumigan', 660);
insert into facts values(3, 1012, 60, 'Cardioversion', 8000);
insert into facts values(4, 1014, 50, 'Chlorhexidine', 7657);
insert into facts values(5, 1015, 30, 'Oxymetazoline', 2300);
insert into facts values(5, 1016, 88, 'Oxymetazoline', 4890);
insert into facts values(1, 1001, 20, 'Chemotherapy', 4500);
insert into facts values(2, 1003, 11, 'Lumigan', 600);
insert into facts values(3, 1002, 33, 'Cardioversion', 500);
insert into facts values(4, 1004, 40, 'Chlorhexidine', 600);
insert into facts values(5, 1005, 70, 'Oxymetazoline', 390);
insert into facts values(2, 1008, 22, 'Lumigan', 440);
insert into facts values(3, 1007, 55, 'Cardioversion', 7110);
insert into facts values(4, 1009, 60, 'Chlorhexidine', 1878);
insert into facts values(5, 1011, 33, 'Oxymetazoline', 2140);
insert into facts values(1, 1012, 10, 'Chemotherapy', 2340);
insert into facts values(2, 1013, 20, 'Lumigan', 640);
insert into facts values(4, 1009, 44, 'Chlorhexidine', 678);
insert into facts values(5, 1010, 22, 'Oxymetazoline', 690);
insert into facts values(1, 1011, 11, 'Chemotherapy', 6740);
insert into facts values(2, 1013, 33, 'Lumigan', 895);
insert into facts values(3, 1012, 10, 'Cardioversion', 7890);
insert into facts values(4, 1014, 70, 'Chlorhexidine', 2667);
insert into facts values(5, 1015, 40, 'Oxymetazoline', 5900);
insert into facts values(5, 1016, 55, 'Oxymetazoline', 7980);

--ROLLUP--
select patient_id, treatment, doctor_id, sum(charge) as hospital_income from facts group by rollup(patient_id, treatment, doctor_id);

--SLICE--
select consultation_date, max(consultation_time) as max_time from time where consultation_date = '2021-01-09' group by consultation_date;
select consultation_date, max(consultation_time) as max_time from time where consultation_date = '2021-02-04' group by consultation_date;

--DICE--
select sex, count('id') as patients_count_by_sex from patient where address = 'Andheri' and patient_type = 'Rhinitis' group by sex;
select sex, count('id') as patients_count_by_sex from patient where address = 'Byculla' and patient_type = 'Periodontitis' group by sex;

--PIVOT--
create extension tablefunc;
select * from crosstab('select p.patient_type, f.treatment, f.charge from patient p, facts f where p.patient_id=f.patient_id') as
	treatment_details(patient_type char(30), Lumigan real, Chlorhexidine real, Chemotherapy real, Cardioversion real, Oxymetazoline real);