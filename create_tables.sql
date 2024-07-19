-- sqlite3 main.db < create_tables.sql


-- SCHOOL / STUDENT TABLES

-- DROP TABLE IF EXISTS schools_table;
-- DROP TABLE IF EXISTS students_table;

CREATE TABLE IF NOT EXISTS schools_table (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS students_table (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    school_id INTEGER -- FOREIGN KEY
);


-- DOCTOR / PATIENT TABLES

DROP TABLE IF EXISTS doctors_table;
DROP TABLE IF EXISTS patients_table;
DROP TABLE IF EXISTS charts_table;
DROP TABLE IF EXISTS appointments_table;

CREATE TABLE IF NOT EXISTS doctors_table (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    specialty TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS patients_table (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS appointments_table (
    id INTEGER PRIMARY KEY,
    time TEXT,
    doctor_id INTEGER,
    patient_id INTEGER,
    chart_id INTEGER
);

CREATE TABLE IF NOT EXISTS charts_table (
    id INTEGER PRIMARY KEY,
    patient_info TEXT,
    doctor_notes TEXT
);

INSERT INTO doctors_table (name, specialty) VALUES ("Strange", "neurosurgery");
INSERT INTO doctors_table (name, specialty) VALUES ("Phil", "psychology");
INSERT INTO doctors_table (name, specialty) VALUES ("Who", "time travel / the universe");

INSERT INTO patients_table (name) VALUES ("Remy");
INSERT INTO patients_table (name) VALUES ("Sakib");
INSERT INTO patients_table (name) VALUES ("Nicole's Sister");

INSERT INTO appointments_table (time, doctor_id, patient_id) VALUES ("the past / future?", 3, 2);
INSERT INTO appointments_table (time, doctor_id, patient_id) VALUES ("the present", 1, 3);
INSERT INTO appointments_table (time, doctor_id, patient_id) VALUES ("tomorrow", 1, 2);
INSERT INTO appointments_table (time, doctor_id, patient_id) VALUES ("wednesday", 2, 1);
INSERT INTO appointments_table (time, doctor_id, patient_id) VALUES ("yesterday", 3, 2);