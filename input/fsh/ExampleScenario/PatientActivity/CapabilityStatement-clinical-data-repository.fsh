Instance: VH-ClinicalDataRepository
InstanceOf: CapabilityStatement
Title: "Virtually Healthcare - Clinical Data Repository"
Usage: #definition
* description = """
The CDR adheres to the following standards:

 - [UK SNOMED CT](https://digital.nhs.uk/services/terminology-and-classifications/snomed-ct) and [LOINC](https://loinc.org/) for our clinical terminology.
 - [NHS Data Dictionary](https://www.datadictionary.nhs.uk/) for identifiers and values, such as NHS Number, GMC, GMP, ODS, etc.
 - [HL7 UK Core](https://simplifier.net/HL7FHIRUKCoreR4/)

The CDR closely follows:

 - [HL7 International Patient Access](https://build.fhir.org/ig/HL7/fhir-ipa/) Server
 - [IHE Query for Existing Data for Mobile (QEDm)](https://build.fhir.org/ig/IHE/QEDm/branches/master/index.html) Server
 - [HL7 UK - UK Core Access](https://build.fhir.org/ig/HL7-UK/UK-Core-Access/index.html)
"""

* name = "ClinicalDataRepository"
* title = "Virtually Healthcare - Clinical Data Repository"
* status = #draft
* experimental = false
* date = "2024-10-08"
* kind = #requirements
* fhirVersion = #4.0.1
* format[+] = #application/fhir+xml
* format[+] = #application/fhir+json
* rest.mode = #server

// Patient

* insert ResourceWithExpectation(#Patient,Patient , #SHALL)
* insert WithSupportedProfile(https://fhir.hl7.org.uk/StructureDefinition/UKCore-Patient)
// * insert WithSupportedProfile(http://hl7.org/fhir/uv/ipa/StructureDefinition/ipa-patient)
* rest.resource[=]
  * documentation = """

  ```
  GET /Patient?{parameters}
  ```

  Conformance to this implementation guide **SHOULD** be tested via [FHIR Validation](https://hl7.org/fhir/R4/validation.html).

  **Search Examples**

  Search for Patient's for a patient with a NHS Number of 9876543210

  ```
  GET /Patient?identifier=https://fhir.nhs.uk/Id/nhs-number|9876543210
  ``

 """
* insert Interaction(#read)
* insert InteractionWithExpectation(#search-type, #SHALL)
* insert SearchParamWithExpectation(_id, #token, #SHALL)
* insert SearchParamWithExpectation(birthdate, #date, #SHALL)
* insert WithSearchParamDocumentation([[A patients date of birth]])
* insert SearchParamWithExpectation(family, #string, #SHALL)
* insert WithSearchParamDocumentation([[A patients surname]])
* insert SearchParamWithExpectation(gender, #token, #SHALL)
* insert WithSearchParamDocumentation([[A patients gender - administrative]])
* insert SearchParamWithExpectation(given, #string, #SHALL)
* insert WithSearchParamDocumentation([[A patients first name]])
* insert SearchParamWithExpectation(identifier, #token, #SHALL)
* insert WithSearchParamDocumentation([[A patients NHS Number e.g. `identifier=https://fhir.nhs.uk/Id/nhs-number|9876543210`]])
* insert SearchParamWithExpectation(name, #string, #SHALL)
* insert WithSearchParamDocumentation([[A patients name]])

* insert SearchParamCombination
* insert RequiringSearchParam(birthdate)
* insert RequiringSearchParam(family)

* insert SearchParamCombination
* insert RequiringSearchParam(birthdate)
* insert RequiringSearchParam(name)

* insert SearchParamCombination
* insert RequiringSearchParam(gender)
* insert RequiringSearchParam(family)

* insert SearchParamCombination
* insert RequiringSearchParam(gender)
* insert RequiringSearchParam(name)

// AllergyIntolerance

* insert ResourceWithExpectation(#AllergyIntolerance,AllergyIntolerance , #SHALL)
* insert WithSupportedProfile(https://fhir.hl7.org.uk/StructureDefinition/UKCore-AllergyIntolerance)
// * insert WithSupportedProfile(http://hl7.org/fhir/uv/ipa/StructureDefinition/ipa-allergyintolerance)

* insert Interaction(#search-type)
* insert SearchParam(patient, #reference)

* insert WithSearchParamDocumentation([[Who the sensitivity is for]])
* insert SearchParam(clinical-status, #token)
* insert WithSearchParamDocumentation([[active | inactive | resolved]])
* insert SearchParamWithExpectation(date, #date, #SHALL)
* insert WithSearchParamDocumentation([[Date first version of the resource instance was recorded]])
* insert SearchParamWithExpectation(last-date, #date, #SHALL)
* insert WithSearchParamDocumentation([[Date(/time) of last known occurrence of a reaction]])

* insert SearchParamCombination
* insert RequiringSearchParam(patient)
* insert RequiringSearchParam(clinical-status)
* insert SearchParamCombination
* insert RequiringSearchParam(patient)
* insert RequiringSearchParam(date)
* insert SearchParamCombination
* insert RequiringSearchParam(patient)
* insert RequiringSearchParam(last-date)


* insert ResourceWithExpectation(#Condition,Condition , #SHALL)
* insert WithSupportedProfile(https://fhir.hl7.org.uk/StructureDefinition/UKCore-Condition)
* insert Interaction(#search-type)
* insert SearchParam(patient, #reference)
* insert WithSearchParamDocumentation([[Who has the condition?]])
* insert SearchParam(onset-date, #date)
* insert WithSearchParamDocumentation([[Date related onsets (dateTime and Period)]])

* insert ResourceWithExpectation(#DocumentReference, DocumentReference , #SHALL)
* insert WithSupportedProfile(https://fhir.hl7.org.uk/StructureDefinition/UKCore-DocumentReference)
* insert Interaction(#search-type)
* insert SearchParam(patient, #reference)
* insert WithSearchParamDocumentation([[Who/what is the subject of the document]])
* insert SearchParam(date, #date)
* insert WithSearchParamDocumentation([[When this document reference was created]])

* insert ResourceWithExpectation(#Immunization, Immunization , #SHALL)
* insert WithSupportedProfile(https://fhir.hl7.org.uk/StructureDefinition/UKCore-Immunization)
* insert Interaction(#search-type)
* insert SearchParam(patient, #reference)
* insert WithSearchParamDocumentation([[The patient for the vaccination record]])
* insert SearchParam(date, #date)
* insert WithSearchParamDocumentation([[Vaccination (non)-Administration Date]])

* insert ResourceWithExpectation(#MedicationRequest, MedicationRequest , #SHALL)
* insert WithSupportedProfile(https://fhir.hl7.org.uk/StructureDefinition/UKCore-MedicationRequest)
* insert Interaction(#search-type)
* insert SearchParam(patient, #reference)
* insert WithSearchParamDocumentation([[Returns prescriptions for a specific patient]])
* insert SearchParam(authoredon, #date)
* insert WithSearchParamDocumentation([[Return prescriptions written on this date]])

// Observation

* insert ResourceWithExpectation(#Observation, Observation , #SHALL)
* insert WithSupportedProfile(https://fhir.hl7.org.uk/StructureDefinition/UKCore-Observation)
// * insert WithSupportedProfile(http://hl7.org/fhir/uv/ipa/StructureDefinition/ipa-observation)
* insert WithSupportedProfile(http://hl7.org/fhir/StructureDefinition/vitalsigns)

* insert Interaction(#search-type)

* insert SearchParam(patient, #reference)
* insert WithSearchParamDocumentation([[The subject that the observation is about (if patient)]])
* insert SearchParam(date, #date)
* insert WithSearchParamDocumentation([[Obtained date/time. If the obtained element is a period, a date that falls in the period]])
* insert SearchParam(category, #token)
* insert WithSearchParamDocumentation([[The classification of the type of observation]])
* insert SearchParam(code, #token)
* insert WithSearchParamDocumentation([[Obtained date/time. If the obtained element is a period, a date that falls in the period]])
* insert SearchParam(status, #token)
* insert WithSearchParamDocumentation([[The status of the observation]])

* insert SearchParamCombination
* insert RequiringSearchParam(patient)
* insert RequiringSearchParam(category)
* insert SearchParamCombination
* insert RequiringSearchParam(patient)
* insert RequiringSearchParam(code)
* insert SearchParamCombination
* insert RequiringSearchParam(patient)
* insert RequiringSearchParam(category)
* insert RequiringSearchParam(date)
* insert SearchParamCombination
* insert RequiringSearchParam(patient)
* insert RequiringSearchParam(category)
* insert RequiringSearchParam(status)
* insert SearchParamCombination
* insert RequiringSearchParam(patient)
* insert RequiringSearchParam(code)
* insert RequiringSearchParam(date)

* insert ResourceWithExpectation(#Binary,Binary , #SHALL)
* insert Interaction(#read)
