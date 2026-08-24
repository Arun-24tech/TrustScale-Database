CREATE DATABASE trustscale_db;
USE trustscale_db;
CREATE TABLE applications (
    application_id INT AUTO_INCREMENT PRIMARY KEY,
    applicant_name VARCHAR(100) NOT NULL,
    applicant_email VARCHAR(100),
    instrument_type VARCHAR(100) NOT NULL,
    application_date DATE NOT NULL,
    status VARCHAR(30) DEFAULT 'PENDING'
);

CREATE TABLE instruments (
    instrument_id INT AUTO_INCREMENT PRIMARY KEY,
    application_id INT NOT NULL,
    instrument_name VARCHAR(100) NOT NULL,
    instrument_type VARCHAR(100) NOT NULL,
    serial_number VARCHAR(100) UNIQUE NOT NULL,
    manufacturer VARCHAR(100),
    state VARCHAR(50),
    
    FOREIGN KEY (application_id) 
        REFERENCES applications(application_id)
);

CREATE TABLE verification_records (
    verification_id INT AUTO_INCREMENT PRIMARY KEY,
    instrument_id INT NOT NULL,
    officer_id VARCHAR(50) NOT NULL,
    verification_date DATE NOT NULL,
    result VARCHAR(20) NOT NULL,
    remarks VARCHAR(255),

    FOREIGN KEY (instrument_id)
        REFERENCES instruments(instrument_id)
);

CREATE TABLE certificates (
    certificate_id VARCHAR(50) PRIMARY KEY,
    instrument_id INT NOT NULL,
    verification_id INT NOT NULL,
    issue_date DATE NOT NULL,
    expiry_date DATE,
    status VARCHAR(20) DEFAULT 'VALID',
    certificate_hash CHAR(64) NOT NULL,

    FOREIGN KEY (instrument_id)
        REFERENCES instruments(instrument_id),

    FOREIGN KEY (verification_id)
        REFERENCES verification_records(verification_id)
);