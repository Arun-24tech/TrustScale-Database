USE trustscale_db;

INSERT INTO certificates
(certificate_id, instrument_id, verification_id, issue_date, expiry_date, status, certificate_hash)
VALUES
('CERT-2026-001', 1, 1, '2026-08-10', '2027-08-10', 'VALID',
'SHA256_HASH_001'),
('CERT-2026-002', 2, 2, '2026-08-11', '2027-08-11', 'VALID',
'SHA256_HASH_002'),
('CERT-2026-003', 3, 3, '2026-08-12', '2027-08-12', 'VALID',
'SHA256_HASH_003'),
('CERT-2026-004', 4, 4, '2026-08-13', '2027-08-13', 'VALID',
'SHA256_HASH_004'),
('CERT-2026-005', 5, 5, '2026-08-14', '2027-08-14', 'VALID',
'SHA256_HASH_005');

SELECT * FROM certificates;