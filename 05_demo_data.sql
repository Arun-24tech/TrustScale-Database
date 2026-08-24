USE trustscale_db;
UPDATE certificates
SET certificate_hash = SHA2(
    CONCAT(certificate_id, instrument_id, issue_date, status),
    256
)
WHERE certificate_id LIKE 'CERT-%';

SELECT certificate_id, certificate_hash
FROM certificates;