Profile:        MedicalRecordNumber
Parent:         CorrelationIdentifier
Id:             MedicalRecordNumber
Title:          "Medical Record Number"
Description:     """
Only use in References Data Type if the NHS Number is not known or unverified.
"""

* ^purpose = """
"""

* type = $v2-0203#MR (exactly)
* system from MedicalRecordSystem
* system ^short = "Generic system to represent MRN in NHS Trusts. Can be replaced with a system specified by NHS Trust"
* system ^example.valueString = "https://emis.com/Id/Patient/DBID"
* system ^example.label = "EMIS DBID"
//* system ^example = "https://www.acme.org/Id/medical-record-number"
* assigner ^short = "Assigning Facility"
* assigner.identifier.system = $ods-code
* assigner ^example.valueString = "F83671"
* assigner ^example.label = "THE BEAUMONT PRACTICE"


