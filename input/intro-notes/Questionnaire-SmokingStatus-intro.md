
<div class="alert alert-danger" role="alert">
This is currently being elaborated and subject to change.
</div>

## Reference

See also:

- [PRSB Community Pharmacy Standard](https://theprsb.org/standards/communitypharmacy/)
- [NICE Smoking cessation](https://cks.nice.org.uk/topics/smoking-cessation/)
- Primary Care IT - QOF Indicator Support Smoking
    - [SMOK004 - Smokers given advice](https://support.primarycareit.co.uk/portal/en-gb/kb/articles/smok004)
    - [SMOK002 - Smoking status recorded for long term conditions](https://support.primarycareit.co.uk/portal/en-gb/kb/articles/smok002)
- [openEHR CKM - Tobacco smoking summary](https://ckm.openehr.org/ckm/archetypes/1013.1.2466)

## Domain Archetype

<div class="alert alert-info" role="alert">
Archetype Viewer <a href="https://project-wildfyre.github.io/domain-archetype/?q=https://virtually-healthcare.github.io/Questionnaire-SmokingStatus.json" target="_blank">Questionnaire-SmokingStatus</a>
</div>


| Question               | SNOMED CT                                    | LOINC       | Answer ValueSet <br/> SNOMED ECL | FHIR Value Type | Unit Code | Example                                                                  |
|------------------------|----------------------------------------------|-------------|----------------------------------|-----------------|-----------|--------------------------------------------------------------------------|
| Current Smoking Status | [365981007](http://snomed.info/id/365981007) | [72166-2](https://loinc.org/72166-2) | [Smoking Status](ValueSet-SmokingStatus.html)               |                 |           | [Ex Smoker](Observation-a2cf5305-6de3-4ec5-8c7c-4c1b68b30d5c.html)       |
| Date stopped smoking   | [160617001](http://snomed.info/id/160617001) |             |                                  |                 |           | [Stopped smoking](Observation-07604762-0a52-456f-9602-7f76b66da6af.html) |


