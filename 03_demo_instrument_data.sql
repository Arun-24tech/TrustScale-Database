USE trustscale_db;
INSERT INTO instruments
(application_id, instrument_name, instrument_type, serial_number, manufacturer, state)
VALUES
(1, 'Apex Digital Scale 30kg', 'Digital Weighing Scale', 'SN-DS-1001', 'Apex Instruments', 'Uttar Pradesh'),
(2, 'SmartWeight EW-50', 'Electronic Weighing Machine', 'SN-EW-1002', 'SmartWeight Technologies', 'Delhi'),
(3, 'HeavyDuty Platform 500kg', 'Platform Scale', 'SN-PS-1003', 'HeavyDuty Systems', 'Haryana'),
(4, 'RetailPro Scale 15kg', 'Retail Weighing Scale', 'SN-RS-1004', 'RetailPro Instruments', 'Rajasthan'),
(5, 'IndustrialMax 1000kg', 'Industrial Weighing Scale', 'SN-IS-1005', 'IndustrialMax Ltd', 'Maharashtra');

SELECT * FROM instruments;


INSERT INTO verification_records
(instrument_id, officer_id, verification_date, result, remarks)
VALUES
(1, 'OFF-101', '2026-08-10', 'PASS', 'Instrument verified successfully'),
(2, 'OFF-102', '2026-08-11', 'PASS', 'Accuracy within acceptable limits'),
(3, 'OFF-103', '2026-08-12', 'PASS', 'Platform scale verified successfully'),
(4, 'OFF-101', '2026-08-13', 'PASS', 'Retail scale calibration successful'),
(5, 'OFF-104', '2026-08-14', 'PASS', 'Industrial scale verified successfully');


SELECT * FROM verification_records;