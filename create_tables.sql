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
    name TEXT NOT NULL
);


-- DOCTOR / PATIENT TABLES

DROP TABLE IF EXISTS doctors_table;
DROP TABLE IF EXISTS patients_table;

CREATE TABLE IF NOT EXISTS doctors_table (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    specialty TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS patients_table (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL
);