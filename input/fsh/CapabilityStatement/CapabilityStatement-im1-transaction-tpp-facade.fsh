Instance: IM1TransactionTPPFacade
InstanceOf: CapabilityStatement
Title: "Facade - IM1 Transaction TPP"
Usage: #definition
* description = """This is a [Service Facade](ActorDefinition-ServiceFacade.html) to [IM1 Transaction](https://digital.nhs.uk/services/gp-it-futures-systems/im1-pairing-integration/interface-mechanisms-guidance#transaction)

This is not a complete description of the API and so does not represent the actual implemented API or capabilities of the GP provider. This is a facade to the GP System IM1, this is not the API provided by the GP System."""

* name = "IM1TransactionTPPFacade"
* title = "Facade - IM1 Transaction TPP"
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

  Search for Patient's by surname

  ```
  GET /Patient?family=Avocet
  ```

 """
* insert Interaction(#read)
* insert Interaction(#search-type)

* insert SearchParam(family, #string)
* insert WithSearchParamDocumentation([[A patients surname]])
* insert SearchParam(given, #string)
* insert WithSearchParamDocumentation([[A patients first name]])
* insert SearchParam(telecom, #token)
* insert WithSearchParamDocumentation([[A patients phone number or email address]])
* insert SearchParam(birthdate, #date)
* insert WithSearchParamDocumentation([[A patients date of birth]])
* insert SearchParam(address-postalcode, #string)
* insert WithSearchParamDocumentation([[A patients postcode]])
* insert SearchParam(gender, #token)
* insert WithSearchParamDocumentation([[A patients gender - administrative]])

* insert ResourceWithExpectation(#QuestionnaireResponse, QuestionnaireResponse , #SHALL)
* insert WithSupportedProfile(https://fhir.hl7.org.uk/StructureDefinition/UKCore-QuestionnaireResponse)
* rest.resource[=]
  * documentation = """
Writeback clinically coded (UK SNOMED CT) consultations to TPP
 """
* insert Interaction(#create)



