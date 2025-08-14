Profile:        PractitionerIdentifier
Parent:         http://hl7.org/fhir/StructureDefinition/Identifier
Id:             PractitionerIdentifier
Title:          "Practitioner Identifier"
Description:     """
- **NHS Data Model and Dictionary** [CONSULTANT CODE](https://www.datadictionary.nhs.uk/data_elements/consultant_code.html) and [GENERAL MEDICAL PRACTITIONER PPD CODE](https://www.datadictionary.nhs.uk/attributes/general_medical_practitioner_ppd_code.html).
- **HL7 v2** Extended Composite Id Number And Name For Persons (XCN)
- **IHE XDS** author
"""

* ^purpose = """
"""


* system 1..1
* system from PractitionerIdentifiers
* value 1..1
* type.coding = $v2-0203#LN (exactly)

