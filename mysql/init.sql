CREATE DATABASE IF NOT EXISTS dentaldb;

USE dentaldb;

CREATE USER 'debezium'@'%' IDENTIFIED BY 'dbz';

GRANT ALL PRIVILEGES ON *.* TO 'debezium'@'%';

FLUSH PRIVILEGES;

CREATE TABLE patients(
    patient_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_name VARCHAR(100),
    city VARCHAR(50)
);

CREATE TABLE dentists(
    dentist_id INT PRIMARY KEY AUTO_INCREMENT,
    dentist_name VARCHAR(100),
    specialization VARCHAR(100)
);

CREATE TABLE appointments(
    appointment_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    dentist_id INT,
    amount DECIMAL(10,2),
    status VARCHAR(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO patients(patient_name,city)
VALUES
('John','London'),
('Alice','Paris');

INSERT INTO dentists(dentist_name,specialization)
VALUES
('Dr Smith','Orthodontics'),
('Dr Brown','Implants');