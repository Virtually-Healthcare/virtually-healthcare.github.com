Profile:        EnglandServiceIdentifier
Parent:         http://hl7.org/fhir/StructureDefinition/Identifier
Id:             EnglandServiceIdentifier
Title:          "England Service Identifier"
Description:     """
See [eRS - Search for healthcare services (A035, FHIR R4)](https://digital.nhs.uk/developer/api-catalogue/e-referral-service-fhir#get-/R4/HealthcareService) and for [BARS - Directory of Services (DoS)](https://digital.nhs.uk/services/directory-of-services-dos)
"""

* system 1..1 MS
* system ^short = "Values are BARS `http://fhir.nhs.uk/Id/dos-service-id` and eRS `http://fhir.nhs.net/Id/ers-service`"
