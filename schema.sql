-- MEDORA V2 database schema (PostgreSQL/MySQL adaptable)
CREATE TABLE users (
 id BIGINT PRIMARY KEY AUTO_INCREMENT,
 name VARCHAR(120) NOT NULL,
 email VARCHAR(180) UNIQUE NOT NULL,
 password_hash VARCHAR(255) NOT NULL,
 role VARCHAR(30) DEFAULT 'patient',
 created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE hospitals (
 id BIGINT PRIMARY KEY AUTO_INCREMENT,
 name VARCHAR(180) NOT NULL,
 address TEXT NOT NULL,
 city VARCHAR(80) DEFAULT 'Nagpur',
 latitude DECIMAL(10,7), longitude DECIMAL(10,7),
 phone VARCHAR(40), type VARCHAR(30) DEFAULT 'hospital',
 source_url TEXT, verification_status VARCHAR(30) DEFAULT 'pending',
 updated_at TIMESTAMP NULL
);
CREATE TABLE doctors (
 id BIGINT PRIMARY KEY AUTO_INCREMENT,
 hospital_id BIGINT,
 name VARCHAR(160) NOT NULL,
 specialty VARCHAR(160),
 qualification VARCHAR(255),
 source_url TEXT,
 FOREIGN KEY (hospital_id) REFERENCES hospitals(id)
);
CREATE TABLE appointments (
 id BIGINT PRIMARY KEY AUTO_INCREMENT,
 booking_id VARCHAR(50) UNIQUE NOT NULL,
 user_id BIGINT NOT NULL,
 hospital_id BIGINT NOT NULL,
 doctor_id BIGINT NOT NULL,
 appointment_date DATE NOT NULL,
 appointment_time TIME NOT NULL,
 consultation_type VARCHAR(60),
 status VARCHAR(30) DEFAULT 'requested',
 created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE availability_updates (
 id BIGINT PRIMARY KEY AUTO_INCREMENT,
 hospital_id BIGINT NOT NULL,
 category VARCHAR(40) NOT NULL,
 value INT,
 source VARCHAR(255),
 verified_at TIMESTAMP NULL,
 updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE blood_banks (
 id BIGINT PRIMARY KEY AUTO_INCREMENT,
 name VARCHAR(180) NOT NULL,
 address TEXT NOT NULL,
 phone VARCHAR(40),
 source_url TEXT
);
CREATE TABLE blood_inventory (
 id BIGINT PRIMARY KEY AUTO_INCREMENT,
 blood_bank_id BIGINT NOT NULL,
 blood_group VARCHAR(5) NOT NULL,
 status VARCHAR(30) DEFAULT 'unknown',
 source VARCHAR(255),
 verified_at TIMESTAMP NULL,
 updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE lab_reports (
 id BIGINT PRIMARY KEY AUTO_INCREMENT,
 user_id BIGINT NOT NULL,
 report_type VARCHAR(120),
 secure_file_reference TEXT NOT NULL,
 report_date DATE,
 created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
