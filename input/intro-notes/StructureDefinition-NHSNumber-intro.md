

Format: NNNNNNNNNN
- England, Wales and the Isle of Man value ranges: 400 000 000 to 499 999 999, and 600 000 000 to 799 999.
- Testing: 999 000 0000 to 999 999 9999 

Values include a checksum, details can be found in [NHS NUMBER](https://www.datadictionary.nhs.uk/attributes/nhs_number.html)  

| Field               | HL7 FHIR Identifier | OID / URI                 | HL7 v2 CX | HL7 FHIR Example                                 | HL7 v2 Example                                   |
|---------------------|---------------------|---------------------------|-----------|--------------------------------------------------|--------------------------------------------------|
| Value               | value               |                           | CX.1      | 9449305552                                       | 9449305552                                       |
| Type                | type                |                           | CX.5      | http://terminology.hl7.org/CodeSystem/v2-0203#NH | NH                                               |
| Assigning Authority | assigner.identifier |                           | CX.6      |                                                  | NHS (ODS codes for home countries are permitted) |
| System              | system              | 2.16.840.1.113883.2.1.4.1 | N/a       | https://fhir.nhs.uk/Id/nhs-number                | N/a                                              |
