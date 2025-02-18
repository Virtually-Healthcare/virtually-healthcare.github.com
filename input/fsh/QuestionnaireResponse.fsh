Profile: QuestionnaireResponse
Parent: http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse
Id: QuestionnaireResponse
Description: "Based on [HL7 Structured Data Capture](https://build.fhir.org/ig/HL7/sdc/)"

* identifier 1..1 MS
* identifier only CorrelationIdentifier
* identifier ^short = "Identifier of the completed form. Required for POST operations"

* questionnaire 1..1 MS

* subject 1..1 MS
* subject only Reference(Patient)
* subject.identifier only NHSNumber

* authored 0..1 MS
* authored ^short = "When the form was completed. Required for POST operations"
* author 0..1 MS

* encounter ^short = "The encounter where the data was captured in. Required for GP system writeaback, optional for CDR"
