USE trustscale_db;
INSERT INTO applications
(applicant_name, applicant_email, instrument_type, application_date, status)
VALUES
('Rajesh Kumar', 'rajesh@example.com', 'Digital Weighing Scale', '2026-08-01', 'APPROVED'),
('Priya Sharma', 'priya@example.com', 'Electronic Weighing Machine', '2026-08-02', 'APPROVED'),
('Amit Singh', 'amit@example.com', 'Platform Scale', '2026-08-03', 'APPROVED'),
('Neha Gupta', 'neha@example.com', 'Retail Weighing Scale', '2026-08-04', 'APPROVED'),
('Vikram Patel', 'vikram@example.com', 'Industrial Weighing Scale', '2026-08-05', 'APPROVED');

SELECT * FROM applications;

