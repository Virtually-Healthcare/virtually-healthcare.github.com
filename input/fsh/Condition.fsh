Profile: Condition
Parent: https://fhir.hl7.org.uk/StructureDefinition/UKCore-Condition
Id: Condition
Description: "Extension to [UKCore Condition](https://simplifier.net/hl7fhirukcorer4/ukcore-condition) with requirements from [HL7 IPA Condition](https://build.fhir.org/ig/HL7/fhir-ipa/StructureDefinition-ipa-condition.html)"

* identifier 1..* MS
* identifier only CorrelationIdentifier

* subject 1..1
* subject only Reference(Patient)
* subject.identifier only NHSNumber

* code.coding ^slicing.discriminator[0].type = #value
* code.coding ^slicing.discriminator[=].path = "system"
* code.coding ^slicing.ordered = false
* code.coding ^slicing.rules = #closed
* code.coding contains
    SNOMED 0..* MS and
    LOINC 0..*
* code.coding[SNOMED] from VHConditionCode (required)
* code.coding[SNOMED].system = $sct
* code.coding[LOINC] from http://hl7.org/fhir/ValueSet/observation-codes (extensible)
* code.coding[LOINC].system = $loinc
