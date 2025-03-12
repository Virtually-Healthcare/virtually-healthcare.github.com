Instance: IM1TransactionEMISFacade
InstanceOf: CapabilityStatement
Title: "Facade - IM1 Transaction EMIS"
Usage: #definition
* description = """This is a [Service Facade](ActorDefinition-ServiceFacade.html) to [IM1 Transaction](https://digital.nhs.uk/services/gp-it-futures-systems/im1-pairing-integration/interface-mechanisms-guidance#transaction)

This is not a complete description of the API and so does not represent the actual implemented API or capabilities of the GP provider. This is a facade to the GP System IM1, this is not the API provided by the GP System."""

* name = "IM1TransactionEMISFacade"
* title = "Facade - IM1 Transaction EMIS"
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

  ```
  GET /Patient?{parameters}
  ```

  Conformance to this implementation guide **SHOULD** be tested via [FHIR Validation](https://hl7.org/fhir/R4/validation.html).

  **Search Examples**

  Search for Patient's for a patient with a NHS Number of 9876543210

  ```
  GET /Patient?identifier=https://fhir.nhs.uk/Id/nhs-number|9876543210
  ```

 """
* insert Interaction(#read)
* insert Interaction(#search-type)

* insert SearchParam(identifier, #token)
* insert WithSearchParamDocumentation([[A patients NHS Number e.g. `identifier=https://fhir.nhs.uk/Id/nhs-number|9876543210`]])
* insert SearchParam(name, #string)
* insert WithSearchParamDocumentation([[A server defined search that may match any of the string fields in the HumanName, including family, given, prefix, suffix, and/or text]])
* insert SearchParam(birthdate, #date)
* insert WithSearchParamDocumentation([[A patients date of birth]])

* insert ResourceWithExpectation(#AllergyIntolerance,AllergyIntolerance , #SHALL)
* insert WithSupportedProfile(https://fhir.hl7.org.uk/StructureDefinition/UKCore-AllergyIntolerance)
* insert Interaction(#search-type)
* insert SearchParam(patient, #reference)
* insert WithSearchParamDocumentation([[Who the sensitivity is for]])

* insert ResourceWithExpectation(#Condition,Condition , #SHALL)
* insert WithSupportedProfile(https://fhir.hl7.org.uk/StructureDefinition/UKCore-Condition)
* insert Interaction(#search-type)
* insert SearchParam(patient, #reference)
* insert WithSearchParamDocumentation([[Who has the condition?]])

* insert ResourceWithExpectation(#DocumentReference, DocumentReference , #SHALL)
* insert WithSupportedProfile(https://fhir.hl7.org.uk/StructureDefinition/UKCore-DocumentReference)
* insert Interaction(#search-type)
* insert SearchParam(patient, #reference)
* insert WithSearchParamDocumentation([[Who/what is the subject of the document]])

* insert ResourceWithExpectation(#Immunization, Immunization , #SHALL)
* insert WithSupportedProfile(https://fhir.hl7.org.uk/StructureDefinition/UKCore-Immunization)
* insert Interaction(#search-type)
* insert SearchParam(patient, #reference)
* insert WithSearchParamDocumentation([[The patient for the vaccination record]])

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

* insert ResourceWithExpectation(#Task, Task , #SHALL)
* insert WithSupportedProfile(https://fhir.hl7.org.uk/StructureDefinition/UKCore-Task)
* insert Interaction(#search-type)
* insert SearchParam(patient, #reference)
* insert WithSearchParamDocumentation([[Search by patient]])

* insert ResourceWithExpectation(#Composition, Composition , #SHALL)
* insert WithSupportedProfile(https://fhir.hl7.org.uk/StructureDefinition/UKCore-Composition)
* rest.resource[=]
  * documentation = """
Consultations

Not fully implemented, used for testing writebacks.
 """
* insert Interaction(#search-type)
* insert SearchParam(patient, #reference)
* insert WithSearchParamDocumentation([[Who and/or what the composition is about]])
* insert SearchParam(date, #date)
* insert WithSearchParamDocumentation([[Composition editing time]])

* insert ResourceWithExpectation(#QuestionnaireResponse, QuestionnaireResponse , #SHALL)
* insert WithSupportedProfile(https://fhir.hl7.org.uk/StructureDefinition/UKCore-QuestionnaireResponse)
* rest.resource[=]
  * documentation = """
Writeback clinically coded (UK SNOMED CT) consultations to EMIS
 """
* insert Interaction(#create)

* insert ResourceWithExpectation(#Appointment, Appointment , #SHALL)
* insert WithSupportedProfile(https://fhir.hl7.org.uk/StructureDefinition/UKCore-Appointment)
* insert Interaction(#create)

* insert ResourceWithExpectation(#Slot, Slot , #SHALL)
* insert WithSupportedProfile(https://fhir.hl7.org.uk/StructureDefinition/UKCore-Slot)
* insert Interaction(#search-type)
* insert SearchParam(schedule, #reference)
* insert WithSearchParamDocumentation([[The Schedule Resource that we are seeking a slot within]])

* insert ResourceWithExpectation(#Schedule, Schedule , #SHALL)
* insert WithSupportedProfile(https://fhir.hl7.org.uk/StructureDefinition/UKCore-Schedule)
* insert Interaction(#search-type)
* insert SearchParam(service-type, #token)
* insert WithSearchParamDocumentation([[The type of appointments that can be booked into associated slot(s)]])
* insert SearchParam(date, #date)
* insert WithSearchParamDocumentation([[Search for Schedule resources that have a period that contains this date specified]])
