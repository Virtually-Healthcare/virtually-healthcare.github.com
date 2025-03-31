
Virtually Health began as an online consultation provider which allowed patients to use web and mobile based applications to communicate with GPs. 

One of the early requirements was to write-back consultations, view medical records and book appointments in primary care systems, and we developed this in house utilising IM1 Transaction API's. 
In order to simplify the API for application developers and prevent them from learning the EMIS and TPP models, we decided to [facade](https://en.wikipedia.org/wiki/Facade_pattern) both using RESTful JSON resource based API.
FHIR was chosen as the model as we knew EMIS (and so TPP) was originally based on early HL7 v2 models

The APIs to suport `view medical record` follows guidance in [HL7 International Patient Access](https://build.fhir.org/ig/HL7/fhir-ipa/)

<figure>
{%include component-start.svg%}
<p id="fX.X.X.X-X" class="figureTitle">Current Design</p>
</figure>
<br clear="all">

The `write-back` process is similar to FHIR Structured Data Capture (SDC) - [Form Data Extraction](https://build.fhir.org/ig/HL7/sdc/extraction.html). This is:
- Data is captured in the application (images and documents are uploaded to AWS FHIRWorks)
- Data is stored in AWS FHIRWorks
- A Task to write-back the form is created in AWS FHIRWorks
- The ESB picks up the Task, transforms FHIR into EMIS/TPP format and sends to EMIS/TPP. 



<figure>
{%include component-enterprise.svg%}
<p id="fX.X.X.X-X" class="figureTitle">Future Design</p>
</figure>
<br clear="all">







