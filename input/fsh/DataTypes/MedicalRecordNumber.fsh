Profile:        MedicalRecordNumber
Parent:         CorrelationIdentifier
Id:             MedicalRecordNumber
Title:          "Medical Record Number"
Description:     """
Only use in References Data Type if the NHS Number is not known or unverified.
"""

* ^purpose = """
| Standard | Data Type | Value |
|----------|-------|-------|
| NHS Data Dictionary | | - |
| OID/HL7 v3 | |  |
| HL7 v2 | CX.4|   |
| HL7 FHIR | Identifier.system |  |
| HL7 v2 | CX.5 | MR |
| HL7 FHIR | Identifier.type | http://terminology.hl7.org/CodeSystem/v2-0203#MR |
| HL7 v2 | CX.6 | ODS Code |
| HL7 FHIR | Identifier.assigner.identifier | https://fhir.nhs.uk/Id/ods-organization-code#{ODS Code} |

"""

* type = $v2-0203#MR (exactly)
* system = "https://fhir.nhs.uk/Id/medical-record-number"
* system ^short = "Generic system to represent MRN in NHS Trusts. Can be replaced with a system specified by NHS Trust, e.g. https://fhir.alderhey.nhs.uk/Id/medical-record-number"
* assigner ^short = "Assigning Facility"
* assigner.identifier.system = $ods-code



