Instance: IM1PatientEMISFacade
InstanceOf: CapabilityStatement
Title: "Facade - IM1 Patient EMIS"
Usage: #definition
* description = """This is a [Service Facade](ActorDefinition-ServiceFacade.html) to [IM1 Patient](https://digital.nhs.uk/services/gp-it-futures-systems/im1-pairing-integration/interface-mechanisms-guidance#patient)

This is influenced by [HL7 International Patient Access](https://build.fhir.org/ig/HL7/fhir-ipa/)

This is not a complete description of the API and so does not represent the actual implemented API or capabilities of the GP provider. This is a facade to the GP System IM1, this is not the API provided by the GP System."""

* name = "IM1PatientEMISFacade"
* title = "Facade - IM1 Patient EMIS"
* status = #draft
* experimental = false
* date = "2024-10-08"
* kind = #requirements
* fhirVersion = #4.0.1
* format[+] = #application/fhir+xml
* format[+] = #application/fhir+json
* rest.mode = #server

* insert ResourceWithExpectation(#Patient,Patient , #SHALL)
* insert WithSupportedProfile(https://fhir.hl7.org.uk/StructureDefinition/UKCore-Patient)
* rest.resource[=]
  * documentation = """
TODO
 """
* insert Interaction(#read)
* insert Interaction(#update)

* insert ResourceWithExpectation(#AllergyIntolerance,AllergyIntolerance , #SHALL)
* insert WithSupportedProfile(https://fhir.hl7.org.uk/StructureDefinition/UKCore-AllergyIntolerance)
* insert Interaction(#search-type)
* insert SearchParam(patient, #reference)
* insert WithSearchParamDocumentation([[Who the sensitivity is for]])
* insert SearchParam(date, #date)
* insert WithSearchParamDocumentation([[Date first version of the resource instance was recorded]])

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

* insert ResourceWithExpectation(#Observation, Observation , #SHALL)
* insert WithSupportedProfile(https://fhir.hl7.org.uk/StructureDefinition/UKCore-Observation)
* insert Interaction(#search-type)
* insert SearchParam(patient, #reference)
* insert WithSearchParamDocumentation([[The subject that the observation is about (if patient)]])
* insert SearchParam(date, #date)
* insert WithSearchParamDocumentation([[Obtained date/time. If the obtained element is a period, a date that falls in the period]])
* insert SearchParam(category, #token)
* insert WithSearchParamDocumentation([[The classification of the type of observation]])

* insert ResourceWithExpectation(#Binary,Binary , #SHALL)
* insert Interaction(#read)

* insert ResourceWithExpectation(#Encounter, Encounter , #SHALL)
* insert WithSupportedProfile(https://fhir.hl7.org.uk/StructureDefinition/UKCore-Encounter)
* insert Interaction(#search-type)
* insert SearchParam(patient, #reference)
* insert WithSearchParamDocumentation([[The patient or group present at the encounter]])
* insert SearchParam(date, #date)
* insert WithSearchParamDocumentation([[A date within the period the Encounter lasted]])

* insert ResourceWithExpectation(#Communication, Communication , #SHALL)
* insert WithSupportedProfile(https://fhir.hl7.org.uk/StructureDefinition/UKCore-Communication)
* insert Interaction(#search-type)
* insert Interaction(#create)
* insert Interaction(#delete)
* insert SearchParam(patient, #reference)
* insert WithSearchParamDocumentation([[Focus of message]])

* insert ResourceWithExpectation(#Task, Task , #SHALL)
* insert WithSupportedProfile(https://fhir.hl7.org.uk/StructureDefinition/UKCore-Task)
* insert Interaction(#search-type)
* insert Interaction(#create)
* insert Interaction(#update)
* insert SearchParam(patient, #reference)
* insert WithSearchParamDocumentation([[Search by patient]])
* insert SearchParam(authored-on, #date)
* insert WithSearchParamDocumentation([[Search by creation date]])

* insert ResourceWithExpectation(#QuestionnaireResponse, QuestionnaireResponse , #SHALL)
* insert WithSupportedProfile(https://fhir.hl7.org.uk/StructureDefinition/UKCore-QuestionnaireResponse)
* rest.resource[=]
  * documentation = """
Pharmacy Nomination Only (questionnaire = https://fhir.virtually.healthcare/PharmacyNomination)
 """
* insert Interaction(#search-type)
* insert Interaction(#create)
* insert SearchParam(patient, #reference)
* insert WithSearchParamDocumentation([[The patient that is the subject of the questionnaire response]])
* insert SearchParam(questionnaire, #reference)
* insert WithSearchParamDocumentation([[The questionnaire the answers are provided for]])
