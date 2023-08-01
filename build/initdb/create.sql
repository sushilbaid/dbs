--
-- create tables for clinic app for testing
--
create table clinic (
    id serial,
    name varchar(255) not null,
    location varchar(255) not null,
    constraint pk_clinic_id PRIMARY KEY(id)
);

create table patient (
    id serial,
    clinic_id int not null,
    name varchar(255) not null,
    mobile varchar(20),
    notes text,
    constraint pk_patient_id PRIMARY KEY(id),
    constraint fk_patient_clinic_id FOREIGN KEY(clinic_id) references clinic(id)
);

create table review (
    id serial,
    patient_id int not null,
    medicine json,
    symptom json,
    notes text,
    constraint pk_review_id primary key (id),
    constraint fk_review_patient_id foreign key(patient_id) references patient(id)
);
