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

* type.coding ^slicing.discriminator[0].type = #value
* type.coding ^slicing.discriminator[=].path = "system"
* type.coding ^slicing.ordered = false
* type.coding ^slicing.rules = #closed
* type.coding contains
    SNOMED 0..* MS and
    LOINC 0..*
* type.coding[SNOMED] from VHObservationCode (required)
* type.coding[SNOMED].system = $sct
* type.coding[SNOMED].code = #823651000000106
* type.coding[LOINC] from http://hl7.org/fhir/ValueSet/observation-codes (extensible)
* type.coding[LOINC].system = $loinc
* type.coding[LOINC].code = #11488-4


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
    ComplaintsAndIssues 0..* MS
    and VitalSigns 0..* MS
    and Objective 0..* MS
    and SocialHistory 0..* MS
    and Problems 0..* MS

* section[ComplaintsAndIssues] ^short = "Complaints and Issues"
* section[ComplaintsAndIssues].title = "Presenting complaints or issues"
* section[ComplaintsAndIssues].code = $loinc#61150-9 "Subjective Narrative"

* section[VitalSigns] ^short = "Vital Signs"
* section[VitalSigns].title = "Vital Signs"
* section[VitalSigns].code = $loinc#8716-3 "Vital signs"
* section[VitalSigns].entry ^short = "Observation with category of `vital-signs`"
* section[VitalSigns].entry only Reference(Observation)

* section[Objective] ^short = "Objective"
* section[Objective].title = "Examination findings "
* section[Objective].code = $loinc#61149-1 "Objective Narrative"
* section[Objective].entry ^short = "Observation with category of `exam`"
* section[Objective].entry only Reference(Observation)

* section[SocialHistory] ^short = "Social History"
* section[SocialHistory].title = "Social Context"
* section[SocialHistory].code = $loinc#29762-2 "Social history Narrative"
* section[SocialHistory].entry ^short = "Observation with category of `social-history`"
* section[SocialHistory].entry only Reference(Observation)

* section[Problems] ^short = "Problems"
* section[Problems].title = "Problems"
* section[Problems].code = $loinc#11450-4 "Problem list"
* section[Problems].entry only Reference(Condition)
