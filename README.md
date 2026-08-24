TrustScale Database

Overview

This repository contains the database implementation for the TrustScale project.

TrustScale is a digital verification system for weighing and measuring instruments. The database stores application details, instrument information, verification records, and digitally verifiable certificates.

Database Structure

The database contains four main tables:

1. Applications

Stores information about applications submitted for instrument verification.

2. Instruments

Stores details about weighing or measuring instruments and links each instrument to an application.

3. Verification Records

Stores the verification details and results for each instrument.

4. Certificates

Stores the generated digital certificates, including certificate status and SHA-256 hash values.

Database Relationships
Applications
     │
     ▼
Instruments
     │
     ▼
Verification Records
     │
     ▼
Certificates
Security

Each certificate contains a SHA-256 hash generated using certificate-related data.

The hash can be used to help detect tampering with certificate information.

Sample Certificate
Certificate ID: CERT-2026-001
Status: VALID
Technologies Used
MySQL
MySQL Workbench
SHA-256 Hashing
Repository Files
01_schema.sql        Database tables and schema
02_demo_data.sql     Sample application
03_demo_data.sql     Sample instrument data
04_demo_data.sql     Sample certificate
05_demo_data.sql     Sample data
06_test_queries.sql  Queries used to test the database
Database Flow
Applicant
    ↓
Application Submitted
    ↓
Instrument Registered
    ↓
Instrument Verification
    ↓
Certificate Generated
    ↓
SHA-256 Hash Stored
Author

Arun Yadav
