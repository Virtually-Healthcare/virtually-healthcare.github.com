## Reference 

- [HL7 International Patient Summary](https://build.fhir.org/ig/HL7/fhir-ips/index.html)
- [HL7 International Patient Access](https://build.fhir.org/ig/HL7/fhir-ipa/) 
- [NHS England - GP Connect Access Record HTML](https://developer.nhs.uk/apis/gpconnect-0-7-4/accessrecord_development_html_layout_guide.html) ]

## Overview

<figure>
{%include patient-summary-mindmap.svg%}
<p id="fX.X.X.X-X" class="figureTitle">Patient Summary Map</p>
</figure>
<br clear="all">

## Patient Care Model

| Resource profile                                                                                    | VH CDR    | EMIS IM1 Transaction | EMIS PFS | GP Connect (html)  | GP Connect (structured + document)        | NHS PDS  | 
|-----------------------------------------------------------------------------------------------------|-----------|----------------------|----------|--------------------|-------------------------------------------|----------|
| [AllegyIntolerance](StructureDefinition-AllergyIntolerance.html)                                    | &#10003;  | &#10003;             | &#10003; | &#10003; html only | &#10003;                                  |          |
| [Binary](StructureDefinition-Binary.html) (documents)                                               | &#10003;  | &#10003;             | &#10003; |                    | &#10003;                                  |          |
| Condition                                                                                           |           | &#10003;             | &#10003; | &#10003; html only | &#10003;                                  |          |
| DiagnosticReport (Laboratory reports)                                                               |           |                      |          |                    | &#10003;                                  |          |
| [DocumentReference](StructureDefinition-DocumentReference.html) (index of documents)                | &#10003;  | &#10003;             | &#10003; |                    | &#10003;                                  |          |
| [Encounter](StructureDefinition-Encounter.html)                                                     | &#10003;  | Inc in Composition   | &#10003; | &#10003; html only | &#10003;                                  |          |
| Composition ([Consultation Note](StructureDefinition-ConsulationNote.html))                         | generated | &#10003;             |          |                    |                                           |          |
| [Immunization](StructureDefinition-Immunization.html)                                               |           | &#10003;             | &#10003; | &#10003; html only | &#10003;                                  |          |
| [MedicationRequest](StructureDefinition-MedicationRequest.html) (prescriptions)                     |           | &#10003;             | &#10003; | &#10003; html only | &#10003;                                  |          |
| [Observation](StructureDefinition-Observation.html)                                                 | &#10003;  | &#10003;             | &#10003; | &#10003; html only | &#10003; (uncategorised data)             |          |
| [Patient](StructureDefinition-Patient.html) (demographics)                                          | &#10003;  | &#10003;             | &#10003; |                    | &#10003;                                  | &#10003; |
| ServiceRequest (referrals and laboratory orders)                                                    |           |                      |          |                    | &#10003;                                  |          |
| [Task](StructureDefinition-Task.html)                                                               | &#10003;  |                      |          |                    | &#10003; (as procedure and diary entries) |          |

### Interfaces

Virtually uses a variety of interfaces to access data for both the Patient Summary and Patient Record Detail. Due to information governance such as user type (patient, pharmacist, GP, admin, etc) and organisation/care setting, which interfaces can be used varies.

| Interface                                      | Type    | Access                 | API                                                                                                                    | Notes                                                                                 |
|------------------------------------------------|---------|------------------------|------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------|
| Virtually Healthcare CDR API                   | Detail  | All                    | [OAS](https://pjoxxcgvvf.execute-api.eu-west-2.amazonaws.com/swagger-ui/index.html#/VH%20Clinical%20Data%20Repository) | The OAS describes only a small part of the available API's.                           |
| EMIS IM1 Transaction API                       | Detail  | (local) GP direct care | [OAS](https://pjoxxcgvvf.execute-api.eu-west-2.amazonaws.com/swagger-ui/index.html#/EMIS%20Web)                        | Record entries entered in Virtually will be present (via consultation writeback)      |
| EMIS PFS API                                   | Detail  | Patient only           | [OAS](https://836ix1x1m8.execute-api.eu-west-2.amazonaws.com/swagger-ui/index.html)                                    |                                                                                       |
| IM1 Bulk API                                   | Detail  | Practitioner           |                                                                                                                        | Is mostly used for analytics but can be used to share data such as laboratory reports |
| GP Connect Access Record (html) API            | Summary | Practitioner           | [OAS](https://fubfc00id1.execute-api.eu-west-2.amazonaws.com/swagger-ui/index.html#/GP%20Connect)                      |                                                                                       |
| NHS England Personal Demographic Service (PDS) | Detail  | Practitioner           | [OAS](https://fubfc00id1.execute-api.eu-west-2.amazonaws.com/swagger-ui/index.html#/NHS%20England%20Service)           |                                                                                       | 


## Composition & FHIR Document

The basic structure of a composition is shown above and detailed below, in its aggregated form which is typically how it is exchanged, it is known as a [FHIR Document](https://hl7.org/fhir/R4/documents.html) and a redendered example is shown below:

> Examples
> - [FHIR Document GP Connect Patient Summary](Bundle-a820f27e-b626-4b89-88b1-7e759d0b9eb1.html)


 <img style="padding:3px;width:40%;" src="FHIRDocument.png" alt="Example Document"/>
<br clear="all">



