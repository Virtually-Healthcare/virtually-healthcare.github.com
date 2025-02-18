Profile:        OrganisationSiteCode
Parent:         http://hl7.org/fhir/StructureDefinition/Identifier
Id:             OrganisationSiteCode
Title:          "Organisation Site Code"
Description:     """
NHS Data Dictionary [ORGANISATION SITE IDENTIFIER](https://www.datadictionary.nhs.uk/attributes/organisation_site_identifier.html)

Use ODS Site code relevant for organisation. E.g. Use Mid Yorkshire Hospitals NHS Trust (RXF) version of Pinderfields Hospital (RXF05) when referring to Mid Yorks, not others in the director
"""

* system 1..1
* system = "https://fhir.nhs.uk/Id/ods-site-code" (exactly)
* value 1..1
