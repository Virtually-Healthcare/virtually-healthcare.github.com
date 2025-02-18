Profile: MedicationRequest
Parent: http://hl7.org/fhir/uv/ipa/StructureDefinition/ipa-medicationrequest
Id: MedicationRequest
Description: "[HL7 IPA MedicationRequest](http://hl7.org/fhir/uv/ipa/StructureDefinition/ipa-medicationrequest) plus requirements from [UKCore-MedicationRequest](https://simplifier.net/hl7fhirukcorer4/ukcore-medicationrequest)"

* extension contains ExtensionCourses named extensionCourses 0..1

* identifier 1..* MS
* identifier only CorrelationIdentifier

* subject.reference 1..1 MS
* subject.identifier only NHSNumber

* medication[x] from VHMedicationCode (extensible)
* medication[x] only CodeableConcept
* medication[x] MS
* medication[x] insert Obligation(#SHALL:populate-if-known, https://fhir.virtually.healthcare/ActorDefinition/ClinicalDataRepository)
* medication[x] insert Obligation(#SHALL:populate-if-known, https://fhir.virtually.healthcare/ActorDefinition/ClinicalDataService)

* performer only Reference(Practitioner)
* performer.reference 1..1
* performer.identifier only EnglandPractitionerIdentifier or StaffEnterpriseNumber

