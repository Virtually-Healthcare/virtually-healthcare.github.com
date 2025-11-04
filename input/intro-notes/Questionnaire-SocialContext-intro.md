
<div class="alert alert-danger" role="alert">
This is currently being elaborated and subject to change.
</div>

## Reference

- PRSB **Social Context** sections from:
  - [Core Information Standard](https://prsb2.vercel.app/page/core-information-standard)
  - [Social Prescribing Standard](https://prsb2.vercel.app/page/social-prescribing)
- US Social determinants of health (SDOH) Clinical Care [SDOHCC Questionnaire PRAPARE](https://build.fhir.org/ig/HL7/fhir-sdoh-clinicalcare/Questionnaire-SDOHCC-QuestionnairePRAPARE.html)

## Domain Archetype

<div class="alert alert-info" role="alert">
Archetype Viewer <a href="https://project-wildfyre.github.io/domain-archetype/?q=https://virtually-healthcare.github.io/Questionnaire-SocialContext.json" target="_blank">Questionnaire-SocialContext</a>
</div>

<figure>
{%include social-context-mindmap.svg%}
<p id="fX.X.X.X-X" class="figureTitle">Social Context Model</p>
</figure>
<br clear="all">

### Alcohol use

| Question               | SNOMED CT                                    | LOINC | Answer ValueSet <br/> SNOMED ECL | FHIR Value Type | Unit Code | Example                                                                                   |
|------------------------|----------------------------------------------|-------|----------------------------------|-----------------|-----------|-------------------------------------------------------------------------------------------|
| Alcohol current status | [228273003](http://snomed.info/id/228273003) |       |                                  |                 |           | [Current non-drinker of alcohol](Observation-3a0ec151-0fff-4591-94db-af3536e5e380.html)   |
| Non drinker type       | [105542008](http://snomed.info/id/105542008) |       | ecl < 105542008                  |                 |           | [Non-drinker for personal reasons](Observation-bff13007-c9b5-414f-9dc8-b55af52cdbce.html) |
| Amount of Drinking     | [219006](http://snomed.info/id/219006)       |       | ecl < 219006                     |                 |           |                                                                                           |

