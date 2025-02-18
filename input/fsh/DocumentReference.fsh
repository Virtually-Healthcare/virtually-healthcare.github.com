Profile: DocumentReference
Parent: http://hl7.org/fhir/StructureDefinition/DocumentReference
Id: DocumentReference
Description: "Merge of IHE Europe XDS, UKCore DocumentReference and includes elements from [HL7 International Patient Access](https://build.fhir.org/ig/HL7/fhir-ipa/)"

* identifier 1..* MS
* identifier only CorrelationIdentifier

* subject 1..1
* subject only Reference(Patient)
* subject.identifier only NHSNumber

* author only Reference(Organization or Practitioner)
* author.identifier only EnglandPractitionerIdentifier or StaffEnterpriseNumber
