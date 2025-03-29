
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


