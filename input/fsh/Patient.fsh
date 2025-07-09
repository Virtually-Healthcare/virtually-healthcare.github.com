Profile: Patient
Parent: http://hl7.org/fhir/uv/ipa/StructureDefinition/ipa-patient
//Parent: https://fhir.hl7.org.uk/StructureDefinition/UKCore-Patient
Id: Patient
Description: "Extension of UKCore-Patient and includes elements from [HL7 International Access](https://build.fhir.org/ig/HL7/fhir-ipa/)"

* identifier 1..* MS
* identifier.type from IdentifierTypeVH

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice based on the type"
* identifier ^slicing.ordered = false

* identifier contains
  MedicalRecordNumber 0..* and nhsNumber 0..*

* identifier[nhsNumber] only NHSNumber
* identifier[nhsNumber] ^short = "UK National Health Identifiers"
* identifier[MedicalRecordNumber] only MedicalRecordNumber
* identifier[MedicalRecordNumber] ^short = "Medical Record Number"

* name 1..*
* name.family MS
* name.given MS

* deceasedDateTime MS
