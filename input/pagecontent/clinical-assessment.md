

## References

- [Nursing Process (ADPIE)](https://en.wikipedia.org/wiki/Nursing_process)
- [HL7 Personal Health Device Implementation Guide](https://build.fhir.org/ig/HL7/phd/index.html)
- [HL7 Confluence Clinical Assessment](https://confluence.hl7.org/spaces/PC/pages/35718914/Clinical+Assessment)
- [IHE Assessment Curation and Data Collection (ACDC)](https://wiki.ihe.net/index.php/Assessment_Curation_and_Data_Collection_(ACDC))

## Actors and Transactions

| Actor                                                                   | Definition                                                          |
|-------------------------------------------------------------------------|---------------------------------------------------------------------|
| [Clinical Data Repository](ActorDefinition-ClinicalDataRepository.html) | The system holding the patients provider health record              |    
| Clinical Decision Support                                               ||
| Personal Health Record (PHR)                                            | Citizen held records, e.g. Apple Health and Google Health Connect   |
| Personal Health Device (PHD)                                            | A device capturing health related data, e.g. Oura Ring, FitBit, etc |

## Overview

<figure>
{%include rpm-activity.svg%}
<p id="fX.X.X.X-X" class="figureTitle">Remote Patient Monitoring Overview</p>
</figure>
<br clear="all">

<img style="padding:3px;width:95%;" src="Remote Patient Monitoring.drawio.png" alt="Remote Patient Monitoring Process"/>
<br clear="all">
<p class="figureTitle">Remote Patient Monitoring Process</p> 
<br clear="all">

<figure>
{%include sequence-clinical-assessment.svg%}
<p id="fX.X.X.X-X" class="figureTitle">Clinical Assessment</p>
</figure>
<br clear="all">

## Pre Conditions

Data is entered into the `Clinical Data Repository` via Apple HealthKit/Google Health/[Hl7 Personal Health Device](https://hl7.org/fhir/uv/phd/STU1.1/) integration or [Structured Data Capture](data-capture.html).
This data is also sent to an `Event Service`, this emits the data as an event feed.

## Event Feed

The `Clinical Assessment Service` inspects the event feed for triggering events. This is a series of rules such as (these have not been clinically verified):

- if resting heart (LOINC 55425-3) is 10 beats higher than average resting heart rate for last two weeks then call `Does Patient have COVID Clinical Knowledge Sevice`
- if body weight (SNOMED 27113001) recorded then perform `Calculate BMI`
- if vital signs recorded and patient has active episode then perform `NEWS2 Risk Calculations`

## Assess Patient

This performs the `clinical assessment`, to perform this assessment this may need to retrieve assessments from the `Clinical Data Repository`, these may be autopopulated from a combination of data entered an application (structured data capture) or data sourced from personnel health devices. 

## Clinical Assessment 

### Clinical Assessment Performed

If the clinical assessment can be performed then a [FHIR ClinicalImpression](https://hl7.org/fhir/R4/clinicalimpression.html) and Risk Scores are returned. These should be stored in the `Clinical Data Repository`.

### Not Performed

If clinical assessment can't be performed such as Obesity which requires a Waist Circumference measurement (SNOMED 276361009) or Height (SNOMED 50373000), then a request to perform an Assessment can be made. 
