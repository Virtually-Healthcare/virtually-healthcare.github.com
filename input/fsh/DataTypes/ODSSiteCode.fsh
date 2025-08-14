Profile:        OrganisationSiteIdentifier
Parent:         http://hl7.org/fhir/StructureDefinition/Identifier
Id:             OrganisationSiteIdentifier
Title:          "Organisation Site Identifier"
Description:     """
- **NHS Data Model and Dictionary** [ORGANISATION SITE IDENTIFIER](https://www.datadictionary.nhs.uk/attributes/organisation_site_identifier.html)
- **HL7 v2** Facility (PL.5)
"""

* system 1..1
* system = "https://fhir.nhs.uk/Id/ods-site-code" (exactly)
* value 1..1
