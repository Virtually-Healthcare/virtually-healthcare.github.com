
| FHIR identifier                          | OID/HL7v3                         | HL7v2 | Format            | Description                                                                                                              |
|------------------------------------------|-----------------------------------|-------|-------------------|--------------------------------------------------------------------------------------------------------------------------|
| https://fhir.hl7.org.uk/Id/gmp-number    | 2.16.840.1.113883.2.1.3.2.4.16.62 | GMP   | G[1234589]NNNNNN	 | General Medical Practitioner Code GENERAL MEDICAL PRACTITIONER PPD CODE. Formerly called GP General National Code (GNC). |
| https://fhir.hl7.org.uk/Id/gmc-number    | 2.16.840.1.113883.2.1.3.2.4.16.63 | GMC   | CNNNNNNN          | General Medical Council Code CONSULTANT_COE                                                                              |
| https://fhir.hl7.org.uk/Id/nmc-number    |                                   |       | 		NNANNNNA        | Nursing and Midwifery Council Code	                                                                                      |
| https://fhir.hl7.org.uk/Id/gphc-number   | 	                                 |       | 		NNNNNNN         | General Pharmaceutical Council Code	                                                                                     |
| https://fhir.hl7.org.uk/Id/hcpc-number   | 	                                 |       | 		AANNNNNN(*)     | Health and Care Professional Council Code                                                                                |
| https://fhir.hl7.org.uk/Id/din-number    | 	                                 |       | 		NNNNNN	         | DOCTOR INDEX NUMBER	                                                                                                     |
| https://fhir.nhs.uk/Id/sds-user-id       | 1.2.826.0.1285.0.2.0.65	          |       | 	N(*)             | SDS User ID	                                                                                                             |
| https://fhir.nhs.uk/Id/gmc-reference-number | 2.16.840.1.113883.2.1.3.2.4.18.29 |       | NNNNNNN           | 	GMC Reference Number                                                                                                    |


Format

- N = any number
- A = any alpha
- (*) NHS Prescription Services systems require these prescriber codes to be 8 characters long. Additional zeroes (0) should be inserted immediately following the first 2 alpha characters to extend the code to 8 characters as necessary.


| Code                              | Format    | Example  |
|-----------------------------------|-----------|----------|
| GP/medical prescriber (DIN)       | 	NNNNNN   | 	954000  |
| Nurse prescriber (NMC)            | NNANNNNA	 | 71A2998E |
| Pharmacist prescriber (GPHC)      | 	NNNNNNN	 | 2033467  |
| Optometrist prescriber            | 	NN-NNNNN | 01-09491 |
| Podiatrist prescriber (HCPC)      | 	CHNNNNNN | CH029821 |
| Physiotherapist prescriber (HCPC) | 	PHNNNNNN | PH095159 |
| Radiographer prescriber (HCPC)    | 	RANNNNNN | RA088262 |
| Dietician prescriber (HCPC)	      | DTNNNNNN  | DT012345 |
| Paramedic prescriber (HCPC)	      | PANNNNNN  | PA054321 |
