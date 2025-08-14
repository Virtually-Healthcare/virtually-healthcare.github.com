Profile:        NHSNumber
Parent:         http://hl7.org/fhir/StructureDefinition/Identifier
Id:             NHSNumber
Title:          "NHS Number"
Description:     """
- **NHS Data Model and Dictionary** [NHS NUMBER](https://www.datadictionary.nhs.uk/attributes/nhs_number.html), see also Northern Ireland [HEALTH AND CARE NUMBER](https://www.datadictionary.nhs.uk/data_elements/health_and_care_number.html) and Scotland [COMMUNITY HEALTH INDEX NUMBER](https://www.datadictionary.nhs.uk/attributes/community_health_index_number.html)
- **HL7 v2** Patient Identifier List (PID-3)
- **IHE XDS** sourcePatientId and patientId

Only traced NHS Number **SHOULD** be used, un-traced NHS Numbers **MUST** be clearly indicated.
"""

* ^purpose = """
"""

* system 1..1
* system = "https://fhir.nhs.uk/Id/nhs-number"
* value 1..1
* type = $v2-0203#NH (exactly)
