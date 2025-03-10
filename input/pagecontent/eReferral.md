## References

* [IHE 360 Exchange Closed Loop Referral(360X)](https://www.ihe.net/uploadedFiles/Documents/PCC/IHE_PCC_Suppl_360X.pdf)
* eReferral - [AU eRequesting Implementation Guide](https://build.fhir.org/ig/hl7au/au-fhir-erequesting/index.html)
* eReport - [HL7 Europe Hospital Discharge Report](https://build.fhir.org/ig/hl7-eu/hdr/index.html)
* NHS England
  * eReferral - [e-Referral Service - FHIR API](https://digital.nhs.uk/developer/api-catalogue/e-referral-service-fhir)
  * eReferral - [Booking and Referral Standard](https://digital.nhs.uk/services/booking-and-referral-standard) 
  * eReport - [Transfer of Care](https://digital.nhs.uk/services/transfer-of-care-initiative)
  * eReport - [GP Connect and IM1](https://digital.nhs.uk/services/gp-connect) Send Document, Update Record and IM1 Write back operations.

## Actors and Transactions

| Actor                                                               | Definition                                                                                                            |
|---------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------|
| [Referral Initiator](ActorDefinition-ReferralInitiator.html)        | The provider asking for a referral or advice/guidance                                                                 |
| [Referral Recipient](ActorDefinition-ReferralRecipient.html)        | The provider providing the procedure or advice/guidance                                                               |
| [Care Directory Serivce](ActorDefinition-CareDirectoryService.html) | Details on services provided by providers, i.e. eRS Healthcare Service, UEC Directory of Services, NHS Service Finder |                

## Overview

<figure>
{%include eReferral-activity.svg%}
<p id="fX.X.X.X-X" class="figureTitle">eReferral and eDischarge Overview Diagram</p>
</figure>
<br clear="all">


<img style="padding:3px;width:95%;" src="eReferral and eDischarge.drawio.png" alt="eReferral and eDischarge Process"/>
<br clear="all">
<p class="figureTitle">eReferral and eDischarge Process</p> 
<br clear="all">

<figure>
{%include eReferral-sequence.svg%}
<p id="fX.X.X.X-X" class="figureTitle">eReferral and eDischarge Sequence Diagram</p>
</figure>
<br clear="all">



## Architecture

<img style="padding:3px;width:80%;" src="Referral Enterprise Integration.drawio.png" alt="Enterprise Integration - Community and Primary Care"/>
<br clear="all">
<p class="figureTitle">Enterprise Integration - Community and Primary Care</p> 

### Routing Table

| Interaction | Direction | Sender Role                        | Recipient      | Method                      |
|-------------|-----------|------------------------------------|----------------|-----------------------------|
| eReferral   | Out       | Pharmacy                           | GP             | BARS                        |
|             | Out       | Private                            | Secondary Care | eRS                         |
|             | In        | GP, Unscheduled and Emergency Care | Other          | BARS                        |
|             | In/Out    | Other                              | Other          | eReferral (this)            |
| eReport     | Out       | Pharmacy                           | GP             | GP Connect Send Document    |
|             | Out       | Online Consultation Provider       | GP             | IM1 (or Ketting XML + MESH) |
|             | Out       | Other                              | GP             | IM1 (or Ketting XML + MESH) |
|             | In/Out    | Other                              | Other          | eDischarge (this)           |
