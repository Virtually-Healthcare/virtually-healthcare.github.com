Profile: ConsulationNote
Parent: http://hl7.org/fhir/StructureDefinition/Composition
Id: ConsulationNote
Description: """
Basic outline of a Consulation Note for use with GP Connect Send Document
"""

* subject 1..1
* subject.reference 1..1
* subject only Reference(Patient)
* subject.identifier only NHSNumber
* relatesTo.target[x] only Identifier or Reference(Composition)
* custodian.identifier only OrganisationCode

* section 1.. MS
* section.text 1.. MS
* section.section ..0
* section.title 1..1
* section.code 1..1
* section.code from http://hl7.org/fhir/ValueSet/doc-section-codes
* section.code.coding 1..*
* section.code.coding.system 1..1
* section.code.coding.code 1..1


* section ^slicing.discriminator[0].type = #value
* section ^slicing.discriminator[=].path = "code"
* section ^slicing.ordered = false
* section ^slicing.rules = #open
* section ^short = "Sections composing the IPS"
* section ^definition = "The root of the sections that make up the IPS composition."
* section.text 1.. MS
* section.section ..0
* section contains
    Subjective 0..* MS
    and Complaints 0..* MS
    and VitalSigns 0..* MS
    and Objective 0..* MS
    and SocialHistory 0..* MS
    and Problems 0..* MS

* section[Subjective] ^short = "Subjective"
* section[Subjective].code = $loinc#61150-9 "Subjective Narrative"

* section[Complaints] ^short = "Complaints"
* section[Complaints].code = $loinc#10154-3 "Chief complaint Narrative"

* section[VitalSigns] ^short = "VitalSigns"
* section[VitalSigns].code = $loinc#8716-3 "Vital signs"

* section[Objective] ^short = "Objective"
* section[Objective].code = $loinc#61149-1 "Objective Narrative"

* section[SocialHistory] ^short = "Social History"
* section[SocialHistory].code = $loinc#29762-2 "Social history Narrative"

* section[Problems] ^short = "Problems"
* section[Problems].code = $loinc#11450-4 "Problem list"
