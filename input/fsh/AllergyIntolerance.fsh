Profile: AllergyIntolerance
Parent: http://hl7.org/fhir/uv/ipa/StructureDefinition/ipa-allergyintolerance
Id: AllergyIntolerance
Description: "Extension to [HL7 IPA AllergyIntolerance](http://hl7.org/fhir/uv/ipa/StructureDefinition/ipa-allergyintolerance) and includes elements from [UKCore AllergyIntolerance](https://simplifier.net/hl7fhirukcorer4/ukcore-allegyintolerance)"

* identifier 1..* MS
* identifier only CorrelationIdentifier

* patient 1..1
* patient.identifier only NHSNumber

* code.coding ^slicing.discriminator[0].type = #value
* code.coding ^slicing.discriminator[=].path = "system"
* code.coding ^slicing.ordered = false
* code.coding ^slicing.rules = #closed
* code.coding contains
    SNOMED 0..* MS
* code.coding[SNOMED] from https://fhir.hl7.org.uk/ValueSet/UKCore-AllergyCode (required)
* code.coding[SNOMED].system = $sct


