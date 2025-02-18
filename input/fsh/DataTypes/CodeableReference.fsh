Profile:        CodeableReference
Parent:         http://hl7.org/fhir/StructureDefinition/Reference
Id:             CodeableReference
Title:          "CodeableReference"
Description:     """
Backport of FHIR R5 CodeableReference. (copied from [BE eHealth Platform Federal Core Profiles](https://www.ehealth.fgov.be/standards/fhir/core/index.html)).
Extension able to hold a reference and a concept (Temporary solution until https://jira.hl7.org/browse/FHIR-44661 is solved and see Zulip: https://chat.fhir.org/#narrow/stream/179280-fhir.2Finfrastructure-wg/topic/Backporting.20CodeableReference)
"""

* extension contains ExtCodeableReference named concept 0..1

