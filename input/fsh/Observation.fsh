Profile: Observation
Parent: http://hl7.org/fhir/uv/ipa/StructureDefinition/ipa-observation
Id: Observation
Description: "Extension of [HL7 IPA Observation](https://build.fhir.org/ig/HL7/fhir-ipa/StructureDefinition-ipa-observation.html) to include elements of [UKCore-Observation](https://simplifier.net/hl7fhirukcorer4/ukcore-observation)"

* identifier 1..* MS
* identifier only BaseIdentifier

* contained 0..0

* code.coding ^slicing.discriminator[0].type = #value
* code.coding ^slicing.discriminator[=].path = "system"
* code.coding ^slicing.ordered = false
* code.coding ^slicing.rules = #closed
* code.coding contains
    SNOMED 0..* MS and
    LOINC 0..*
* code.coding[SNOMED] from VHObservationCode (required)
* code.coding[SNOMED].system = $sct
* code.coding[LOINC] from http://hl7.org/fhir/ValueSet/observation-codes (extensible)
* code.coding[LOINC].system = $loinc

* component.code.coding ^slicing.discriminator[0].type = #value
* component.code.coding ^slicing.discriminator[=].path = "system"
* component.code.coding ^slicing.ordered = false
* component.code.coding ^slicing.rules = #closed
* component.code.coding contains
    SNOMED 0..* MS and
    LOINC 0..*
* component.code.coding[SNOMED] from VHObservationCode (required)
* component.code.coding[SNOMED].system = $sct
* component.code.coding[LOINC] from http://hl7.org/fhir/ValueSet/observation-codes (extensible)
* component.code.coding[LOINC].system = $loinc

* valueCodeableConcept.coding ^slicing.discriminator[0].type = #value
* valueCodeableConcept.coding ^slicing.discriminator[=].path = "system"
* valueCodeableConcept.coding ^slicing.ordered = false
* valueCodeableConcept.coding ^slicing.rules = #closed
* valueCodeableConcept.coding contains
    SNOMED 0..* MS and
    LOINC 0..*
* valueCodeableConcept.coding[SNOMED] from VHObservationValueCode (required)
* valueCodeableConcept.coding[SNOMED].system = $sct
* valueCodeableConcept.coding[LOINC] from http://hl7.org/fhir/ValueSet/observation-codes (required)
* valueCodeableConcept.coding[LOINC].system = $loinc

* subject.reference 1..1 MS
* subject.identifier only NHSNumber

* effective[x] 1..1 MS
* effective[x] only dateTime
//* effective[x] insert Obligation(#SHALL:populate-if-known, https://fhir.virtually.healthcare/ActorDefinition/ClinicalDataRepository)
//* effective[x] insert Obligation(#SHALL:populate-if-known, https://fhir.virtually.healthcare/ActorDefinition/ClinicalDataService)

* performer 1..* MS
* performer only Reference(Practitioner or Patient)
* performer.reference 0..1
* performer.identifier only EnglandPractitionerIdentifier or NHSNumber or StaffEnterpriseNumber

//* value[x] insert Obligation(#SHALL:populate-if-known, https://fhir.virtually.healthcare/ActorDefinition/ClinicalDataRepository)
//* value[x] insert Obligation(#SHALL:populate-if-known, https://fhir.virtually.healthcare/ActorDefinition/ClinicalDataService)

* valueCodeableConcept MS
* valueQuantity MS
* valueDateTime MS
