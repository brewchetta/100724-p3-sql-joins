-- sqlite3 main.db < create_tables.sql


-- SCHOOL / STUDENT TABLES

DROP TABLE IF EXISTS schools_table;
DROP TABLE IF EXISTS students_table;

CREATE TABLE IF NOT EXISTS schools_table (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS students_table (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
);


-- DOCTOR / PATIENT TABLES

DROP TABLE IF EXISTS doctors_table;
DROP TABLE IF EXISTS patients_table;
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
    reason TEXT,
);

INSERT INTO doctors_table (name, specialty) VALUES ("Strange", "neurosurgery");
INSERT INTO doctors_table (name, specialty) VALUES ("Phil", "psychology");
INSERT INTO doctors_table (name, specialty) VALUES ("Who", "time travel / the universe");

INSERT INTO patients_table (name) VALUES ("Remy");
INSERT INTO patients_table (name) VALUES ("Sakib");
INSERT INTO patients_table (name) VALUES ("Nicole's Sister");