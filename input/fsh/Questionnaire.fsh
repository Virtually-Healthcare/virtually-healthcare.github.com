Profile: Questionnaire
Parent: http://hl7.org/fhir/StructureDefinition/Questionnaire
Id: Questionnaire
Description: "Based on [HL7 Structured Data Capture](https://build.fhir.org/ig/HL7/sdc/)"

* url 1..1

* item.extension contains http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl named itemControl 0..1
* item.extension contains http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption named unitOption 0..*
