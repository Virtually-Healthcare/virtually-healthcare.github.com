Extension: ExtCodeableReference
Id: ext-codeable-reference
Title: "ExtCodeableReference"
Description: "(copied from [BE eHealth Platform Federal Core Profiles](https://www.ehealth.fgov.be/standards/fhir/core/index.html)) Extension able to hold a reference and a concept (Temporary solution until https://jira.hl7.org/browse/FHIR-44661 is solved and see Zulip: https://chat.fhir.org/#narrow/stream/179280-fhir.2Finfrastructure-wg/topic/Backporting.20CodeableReference )"

* ^url = "https://hl7.mft.nhs.uk/StructureDefinition/ext-codeable-reference"
* ^context.type = #element
* ^context.expression = "Element"
* value[x] 1..1
* value[x] only CodeableConcept
