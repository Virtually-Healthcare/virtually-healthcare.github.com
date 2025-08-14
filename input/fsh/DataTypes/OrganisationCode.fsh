Profile:        OrganisationCode
Parent:         http://hl7.org/fhir/StructureDefinition/Identifier
Id:             OrganisationCode
Title:          "Organisation Code"
Description:     """
- **NHS Data Model and Dictionary** [ORGANISATION_CODE](https://www.datadictionary.nhs.uk/attributes/organisation_code.html)
- **HL7 v2** Extended Composite Name and Identification Number for Organizations (XON.3) and Assigning Authority For Location (PL.11)
- **IHE XDS** author
"""

* system 1..1
* system = $ods-code (exactly)
* value 1..1
