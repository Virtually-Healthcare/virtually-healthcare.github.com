Profile: Immunization
Parent: http://hl7.org/fhir/uv/ipa/StructureDefinition/ipa-immunization
Id: Immunization
Description: "Extension to [HL7 IPA Immunization](http://hl7.org/fhir/uv/ipa/StructureDefinition/ipa-immunization) plus requirements from [UKCore Immunization](https://simplifier.net/hl7fhirukcorer4/ukcore-immunization)"

* identifier 1..* MS
* identifier only CorrelationIdentifier

* patient 1..1
* patient.identifier only NHSNumber

* vaccineCode from VHImmunisationCode (required)
