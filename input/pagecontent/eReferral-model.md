
This model is influenced by NHS England [Booking and Referral Standard](https://digital.nhs.uk/services/booking-and-referral-standard) and [e-Referral Service](https://digital.nhs.uk/services/e-referral-service), it is designed to work with or without both services.
As part of the modelling process, both have been mapped to FHIR Form Definitions:



These represent data that needs to be captured for use with these services. This model also includes elements from NHS England [Data Dictionary and Model](https://www.datadictionary.nhs.uk/) and [PRSB](https://theprsb.org/standards/#). 

<img style="padding:3px;width:50%;" src="eRequesting relationship to other standards.drawio.png" alt="eReferral relationships"/>
<br clear="all">
<p class="figureTitle">eReferral relationships</p> 

### Domain Archetype

None at present, will be based on a union of: 

- [BARS Referral Form](Questionnaire-BARS-Referral-Form.html)
- [eRS Referral Form](Questionnaire-eRS-Referral-Request.html)

### Entity Model

<figure>
{%include eReferral-model.svg%}
<p id="fX.X.X.X-X" class="figureTitle">eReferral Model</p>
</figure>
<br clear="all">

### Mapping

| Name                            | eReferral HL7 FHIR                                                                   | BARS                                                                              | eRS                                          | REF_I12           | 
|---------------------------------|--------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------|----------------------------------------------|-------------------|
| Originating Referral Identifier | ServiceRequest.identifier[OriginatingReferralIdentifier] and [UBRN]                  |                                                                                   | ServiceRequest.identifier[UBRN]              | RF1-6 and RF1-11  |
| Authored On                     | ServiceRequest.authoredOn                                                            |                                                                                   |                                              | RF1-7             |
| Service Code                    | ServiceRequest.code                                                                  | Task.code                                                                         |                                              | RF1-3 (or OBR-4?) |
| Priority                        | ServiceRequest.priority                                                              |                                                                                   |                                              | RF1-2             |
| Patient Identifier              | ServiceRequest.subject.identifier[NHSNumber] and/or ServiceRequest.subject.reference | ServiceRequest.subject.reference                                                  | ServiceRequest.subject.identifier[NHSNumber] | PID-3             | 
| Stay/Episode Number             | ServiceRequest.encounter.identifier (PV1-19)                                         | n/a - reference to clinical encounter required                                    | n/a                                          | PV1-19            |  
| Requester                       | ServiceRequest.requester (PractitionerRole)                                          | ServiceRequest.requester                                                          | ServiceRequest.requester (PractitionerRole)  | PV1               | 
| Performer (Service Id)          | ServiceRequest.performer.identifier (HealthcareService)                              | ServiceRequest.performer.reference (HealthcareService) \n Directory of Service Id | Relates to Service Search and eRS Service Id |                   | 
| Performer Type                  | ServiceRequest.performerType                                                         | n/a                                                                               | ServiceRequest.performerType (eRS Specialty) |                   |                   
| Occurrence Period               | ServiceRequest.occurrencePeriod                                                      | ServiceRequest.occurrencePeriod                                                   | n/a                                          | RF1-8             |                   
| Referral Letter                 | ServiceRequest.supportingInfo[ReferralLetter] - pointer to DocumentReference         | n/a                                                                               | ServiceRequest.supportingInfo                | OBX (type = ED)   |                   
| Patient Summary                 | ServiceRequest.supportingInfo (automatically generate if required)                   | n/a                                                                               | ServiceRequest.supportingInfo                | OBX (type = ED)   |                   
| Consent                         | ServiceRequest.supportingInfo                                                        | Consent                                                                           |                                              |                   |
| ReasonCode                      | ServiceRequest.reasonCode (Condition or SNOMED CT Condition code)                    | CarePlan.addresses (Condition)                                                    | n/a                                          | RF1-10            |                   
| Notes                           | ServiceRequest.note                                                                  | CarePlan.activity and Task.description                                            | n/a                                          | NTE               |                   
