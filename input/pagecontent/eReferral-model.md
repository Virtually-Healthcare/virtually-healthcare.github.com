
This model is influenced by NHS England [Booking and Referral Standard](https://digital.nhs.uk/services/booking-and-referral-standard) and [e-Referral Service](https://digital.nhs.uk/services/e-referral-service), it is designed to work with or without both services.
As part of the modelling process, both have been mapped to FHIR Form Definitions:

- [BARS Referral Form](Questionnaire-BARS-Referral-Form.html)
- [eRS Referral Form](Questionnaire-eRS-Referral-Request.html)

These represent data that needs to be captured for use with these services. This model also includes elements from NHS England [Data Dictionary and Model](https://www.datadictionary.nhs.uk/) and [PRSB](https://theprsb.org/standards/#). 

<img style="padding:3px;width:50%;" src="eRequesting relationship to other standards.drawio.png" alt="eReferral relationships"/>
<br clear="all">
<p class="figureTitle">eReferral relationships</p> 

### Entity Model

<figure>
{%include eReferral-model.svg%}
<p id="fX.X.X.X-X" class="figureTitle">eReferral Model</p>
</figure>
<br clear="all">

### Mapping

| Name                            | eReferral HL7 FHIR                                                                  | BARS                                                                              | eRS                                          |
|---------------------------------|-------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------|----------------------------------------------|
| Originating Referral Identifier | ServiceRequest.identifier[OriginatingReferralIdentifier] and [UBRN]                 |                                                                                   | ServiceRequest.identifier[UBRN]              |  
| Service Code                    | ServiceRequest.code                                                                 | Task.code                                                                         |                                              |
| Patient Identifier              | ServiceRequest.subject.identifier[NHSNumber] and/or ServiceRequest.subject.reference | ServiceRequest.subject.reference                                                  | ServiceRequest.subject.identifier[NHSNumber] |
| Stay/Episode Number             | ServiceRequest.encounter.identifier (PV1-19)                                        | n/a - reference to clinical encounter required                                    | n/a                                          |
| Requester                       | ServiceRequest.requester (PractitionerRole)                                         | ServiceRequest.requester                                                          | ServiceRequest.requester (PractitionerRole)  |
| Performer (Service Id)          | ServiceRequest.performer.identifier (HealthcareService)                             | ServiceRequest.performer.reference (HealthcareService) \n Directory of Service Id | Relates to Service Search and eRS Service Id |
| Performer Type                  | ServiceRequest.performerType                                                        | n/a                                                                               | ServiceRequest.performerType (eRS Specialty) |
| Occurrence Period               | ServiceRequest.occurrencePeriod                                                     | ServiceRequest.occurrencePeriod                                                   | n/a                                          |
| Referral Letter                 | ServiceReqest.suppportingInfo[ReferralLetter] - pointer to DocumentReference        | n/a                                                                               | ServiceReqest.suppportingInfo                |
| Patient Summary                 | ServiceReqest.suppportingInfo (automatically generate if required)                  | n/a                                                                               | ServiceReqest.suppportingInfo                |
| ReasonCode                      | ServiceRequest.reasonCode (Condition or SNOMED CT Condition code)                   | CarePlan.addresses (Condition)                                                    | n/a                                          |
| Notes                           | ServiceRequest.note                                                                 | CarePlan.activity and Task.description                                            | n/a                                          |
