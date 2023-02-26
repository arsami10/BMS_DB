create database BMS_DB;

use BMS_DB;


-- CUSTOMER PERSONAL INFORMATION
create table customer_personal_info(
	customer_id varchar(5),
    customer_name varchar(30),
    date_if_birth date,
    gurdian_name varchar(30),
    contact_number bigint(15),
    mail_id varchar(20),
    gender char(1),
    matital_status varchar(10),
    identification_doc_type varchar(20),
    id_doc_no varchar(20),
    citizenship varchar(10),
    constraint cust_pers_info_pk primary key(customer_id)
);

show tables;


-- CUSTOMER REFERENCE INFORMATION

create table customer_reference_info(
	customer_id varchar(5),
    reference_acc_name varchar(20),
    reference_acc_no bigint(18),
    reference_acc_address varchar(50),
    relation varchar(10),
    constraint cust_ref_info_pk primary key(customer_id),
    constraint cust_ref_info_fk Foreign key(customer_id) references customer_personal_info(customer_id)
);


show tables;

-- BANK INFORMATION

create table bank_info(
	BIC_code varchar(15),
    bank_name varchar(25),
    branch_name varchar(25),
    constraint bank_info_pk primary key(BIC_code)
);

show tables;


-- BANK INFORMATION

insert into bank_info values('JAMUBDDH053','Jamuna Bank Limited','Banani');
insert into bank_info values('JANBBDDHJKG','Janata Bank Limited','Khatungonj Branch');
insert into bank_info values('DHBLBDDH301','Dhaka Bank Limited','Laldighirpar Branch');
insert into bank_info values('DBBLBDDH106','Dutch Bangla Bank Ltd','Narayangonj Branch');
insert into bank_info values('EBLDBDDH018','Eastern Bank Ltd','Bogra Branch');

select * from bank_info;

-- CUSTOMER PERSONAL INFORMATION

insert into customer_personal_info values('c-001','sami','1998-06-03','Omar','123456789','sami123@gmail.com','M','Single','NID','88788877851','Bangladesh');
insert into customer_personal_info values('c-002','inan','1998-02-07','sami','67854549','inan123@gmail.com','M','Single','NID','55488877851','Bangladesh');
insert into customer_personal_info values('c-003','Akram','1997-07-12','Sumi','542132415','akram@gmail.com','M','Married','B.C.','215454822','Bangladesh');
insert into customer_personal_info values('c-004','shovan','1998-05-11','Noman','362115215','mkshovan@gmail.com','M','divorced','NID','8812478844','Bangladesh');
insert into customer_personal_info values('c-005','sadia','1997-08-07','rizuan','58456789','sadia@gmail.com','F','Single','NID','1122877851','Bangladesh');

select * from customer_personal_info;


-- CUSTOMER REFERENCE INFORMATION

insert into customer_reference_info values('c-001','omar','787878787','Dhaka','Brother');
insert into customer_reference_info values('c-002','Sami','454545454','CTG','Brother');
insert into customer_reference_info values('c-003','Sumi','121212121','CoxsBazar','Sister');
insert into customer_reference_info values('c-004','Priya','363636363','Noakhali','Wife');
insert into customer_reference_info values('c-005','Sajib','424242424','Cumilla','Brother');

select * from  customer_reference_info;

