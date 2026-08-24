USE trustscale_db;

SELECT 
    c.certificate_id,
    a.applicant_name,
    i.instrument_name,
    i.serial_number,
    v.officer_id,
    v.verification_date,
    v.result,
    c.status AS certificate_status,
    c.certificate_hash
FROM certificates c
JOIN instruments i 
    ON c.instrument_id = i.instrument_id
JOIN applications a 
    ON i.application_id = a.application_id
JOIN verification_records v 
    ON c.verification_id = v.verification_id;