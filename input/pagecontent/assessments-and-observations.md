
All units are [UCUM](http://unitsofmeasure.org) unless stated.

### Common Observations

#### Vital Signs

See also [Vital Signs](Questionnaire-VitalSigns.html) ([Questionnaire Viewer](https://project-wildfyre.github.io/questionnaire-viewer/?q=https://virtually-healthcare.github.io/HL7-FHIR-Implementation-Guide/Questionnaire-VitalSigns.json)) form/data capture definition. Hint: Use [NLM Form Builder](https://formbuilder.nlm.nih.gov/) to view these definitions.
This relates to the *Vital Signs* section of the [HL7 International Patient Summary](https://build.fhir.org/ig/HL7/fhir-ips/Structure-of-the-International-Patient-Summary.html#vital-signs)

| Panel                                                       | SNOMED CT | SNOMED CT Display | LOINC                         | Example                                                                            |
|-------------------------------------------------------------|-----------|-------------------|-------------------------------|------------------------------------------------------------------------------------|
| [Vital Signs](https://www.hl7.org/FHIR/R4/vitalspanel.html) |           |                   | [85353-1](https://loinc.org/85353-1) | [Vital signs panel example](Observation-88b99ab6-0990-4f1c-b1a7-6adb50dd70b7.html) |


| Term                                                          | SNOMED CT                                                                                                     | SNOMED CT Display                                                       | LOINC                                | FHIR Value Type | Unit Code | Example                                                                             |
|---------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------|--------------------------------------|-----------------|-----------|-------------------------------------------------------------------------------------|
| [Body height](https://hl7.org/fhir/R4/bodyheight.html)        | [50373000](http://snomed.info/id/50373000) <br/> [248333004](http://snomed.info/id/248333004)                 | Body height measure <br/> Standing Height                               | [8302-2](https://loinc.org/8302-2)   | Quantity        | cm        | [Body height example](Observation-ba92afc0-a1c5-41df-93d8-c3df49888bcd.html)        |
| [Body temperature](https://hl7.org/fhir/R4/bodytemp.html)     | [276885007](http://snomed.info/id/276885007) <br/> [386725007](http://snomed.info/id/386725007)                                                           | Core body temperature <br/> Body temperature                                            | [8310-5](https://loinc.org/8310-5)   | Quantity        | Cel       | [Body temperature example](Observation-5ba52e14-9a98-48cb-8029-770e3e76f428.html)   |
| [Body weight](https://hl7.org/fhir/R4/bodyweight.html)        | [27113001](http://snomed.info/id/27113001)                                                                    | Body weight                                                             | [29463-7](https://loinc.org/29463-7) | Quantity        | kg        | [Body weight example](Observation-af22811f-218e-4ff6-aa07-93f12c666dd7.html)        |
| [Head circumference](https://hl7.org/fhir/R4/headcircum.html) | [363811000](http://snomed.info/id/363811000)                                                                  | Head circumference measure                                              | [9843-4](https://loinc.org/9843-4)   | Quantity        | cm        | [Head circumference example](Observation-78fef4ce-cb0a-4e7d-b768-2565550b62a2.html) |
| [Heart rate](https://hl7.org/fhir/R4/heartrate.html)          | [364075005](http://snomed.info/id/364075005)                                                                  | Heart rate                                                              | [8867-4](https://loinc.org/8867-4)   | Quantity        | /min      | [Heart rate example](Observation-3421ccda-63f3-4e6e-b39c-ca9e3850d3a2.html)         |
| [Oxygen Saturation](https://hl7.org/fhir/R4/oxygensat.html)   | [442476006](http://snomed.info/id/442476006) <br/> [1325691000000100](http://snomed.info/id/1325691000000100) | Arterial oxygen saturation <br/> Oxygen saturation at periphery unknown | [2708-6](https://loinc.org/2708-6)   | Quantity        | %         | [Oxygen Saturation example](Observation-9a2052b8-f00a-41ec-bc4e-3bd4cfae62c2.html)  |
| [Respiratory rate](https://hl7.org/fhir/R4/resprate.html)     | [86290005](http://snomed.info/id/86290005)                                                                    | Respiratory rate                                                        | [9279-1](https://loinc.org/9279-1)   | Quantity        | /min      | [Respiratory rate example](Observation-65083da2-c77f-419e-a205-68a7d3863e90.html)   |
| [Body Mass Index](https://hl7.org/fhir/R4/resprate.html)      | [60621009](http://snomed.info/id/60621009)                                                                    | Body mass index                                                         | [39156-5](https://loinc.org/39156-5) | Quantity        | kg/m2     | [Body Mass Index example](Observation-f268716f-9dc6-4361-a124-0aad3604d8a2.html)    |   
| [Blood pressure](https://hl7.org/fhir/R4/bp.html)             | [75367002](http://snomed.info/id/75367002)                                                                    | Blood pressure                                                          | [85354-9](https://loinc.org/85354-9) | component       |           | [Blood pressure example](Observation-8037d992-5936-44bf-9253-f76f904ba7b9.html)     |
| - Systolic blood pressure                                     | [72313002](http://snomed.info/id/72313002)                                                                    | Systolic arterial pressure                                              | [8480-6](https://loinc.org/8480-6)   | Quantity        | mm[Hg]    |                                                                                     |
| - Diastolic blood pressure                                    | [1091811000000102](http://snomed.info/id/1091811000000102)                                                    | Diastolic arterial pressure                                             | [8462-4](https://loinc.org/8462-4)   | Quantity        | mm[Hg]    |                                                                                     |

#### Miscellaneous

These are additional observations which will be present in a patients (mobile device) health record.

| Term                        | SNOMED CT                                                              | SNOMED CT Display                             | LOINC                                | FHIR Value Type | Unit Code | Example |
|-----------------------------|------------------------------------------------------------------------|-----------------------------------------------|--------------------------------------|-----------------|-----------|---------|
| Heart Rate Variability SDNN |                                                                        |                                               | [80404-7](https://loinc.org/80404-7) | Quantity        | ms        |         |
| Blood Glucose               | [997671000000106](http://snomed.info/id/997671000000106)  | Blood glucose level                           |                                      |                 |           |
| Atrial Fibrillation Burden  | [713801000000102](http://snomed.info/id/713801000000102)    | Atrial fibrillation monitoring administration |                                      |

### Physical Activity

This is related to the [HL7 Physical Activity Implementation Guide](https://build.fhir.org/ig/HL7/physical-activity/)

#### Exercise Activity

See also [Exercise Activity](Questionnaire-ExerciseActivity.html) ([Questionnaire Viewer](https://project-wildfyre.github.io/questionnaire-viewer/?q=https://virtually-healthcare.github.io/HL7-FHIR-Implementation-Guide/Questionnaire-ExerciseActivity.json)) form/data capture definition. Hint: Use [NLM Form Builder](https://formbuilder.nlm.nih.gov/) to view these definitions.

| Panel             | SNOMED CT                                          | SNOMED CT Display | LOINC | Example                                                                                  |
|-------------------|----------------------------------------------------|-------------------|-------|------------------------------------------------------------------------------------------|
| Physical Activity | [68130003](http://snomed.info/id/68130003) | Physical activity |       | [Physical activity panel example](Observation-8f750590-30d6-425f-a8c4-f0a7c41e01d4.html) |


| Term                     | SNOMED CT                                                                  | SNOMED CT Display    | LOINC                                                                       | FHIR Value Type                                | Unit Code | Example                                                                                   |
|--------------------------|----------------------------------------------------------------------------|----------------------|-----------------------------------------------------------------------------|------------------------------------------------|-----------|-------------------------------------------------------------------------------------------|
| Exercise Activity        | [68130003](http://snomed.info/id/68130003) Recommendation by NHS England    | Physical activity    | [73985-4](https://loinc.org/73985-4)                                        | CodeableConcept <br/> See definition for codes | n/a       | [Exercise Activity example](Observation-cb3c778b-cee4-4027-8163-c082958f87f1.html)        | 
| Calories per activity    | [251833007](http://snomed.info/id/251833007) Recommendation by NHS England  | Energy expenditure   | [55424-6](https://loinc.org/55424-6)                                        | Quantity                                       | kcal      | [Calories per activity example](Observation-71fae5af-0b9e-4b9e-b6af-3d1bb4e223a0.html)    |
| Average Heart Rate       | [444981005](http://snomed.info/id/251833007)  Recommendation by NHS England | Heart rate - resting | [55425-3](https://loinc.org/55425-3) and [8867-4](https://loinc.org/8867-4) | Quantity                                       | /min      | [Average Heart Rate example](Observation-cffe1a6e-8eda-4613-bf54-119b374bb5b9.html)       |
| Activity Duration        | [252132001](http://snomed.info/id/252132001) Recommendation by NHS England  | Measurement period   | [55411-3](https://loinc.org/55411-3)                                        | Quantity                                       | min       | [Activity Duration example](Observation-35eb7da3-9b85-46ce-bd29-75c2263b514a.html)        |
| Peak Activity Heart Rate |                                                                            |                      | [55426-1](https://loinc.org/55426-1)                                        | Quantity                                       | /min      | [Peak Activity Heart Rate example](Observation-ad7c1832-f855-4ece-a4c7-c79b433a7890.html) |

#### Daily Physical Activity

See also [Daily Physical Activity](Questionnaire-DailyPhysicalActivity.html) ([Questionnaire Viewer](https://project-wildfyre.github.io/questionnaire-viewer/?q=https://virtually-healthcare.github.io/HL7-FHIR-Implementation-Guide/Questionnaire-DailyPhysicalActivity.json)) form/data capture definition. Hint: Use [NLM Form Builder](https://formbuilder.nlm.nih.gov/) to view these definitions.

| Panel | SNOMED CT | SNOMED CT Display | LOINC | Example |
|-------|-----------|-------------------|-------|---------|
| n/a   |           |                   |       |         |

| Term                       | SNOMED CT | SNOMED CT Display | LOINC                                                                       | FHIR Value Type | Unit Code   |  Example                                                                                   |
|----------------------------|-----------|-------------------|-----------------------------------------------------------------------------|-----------------|-------------|--------------------------------------------------------------------------------------------|
| Daily Step Count           |           |                   | [41950-7](https://loinc.org/41950-7)                                        | Quantity        | /day        | [Daily Step Count example](Observation-0a7f38ae-9658-4b43-a3f9-02f66f65bf38.html)          | 
| Peak Daily Heart Rate      |           |                   | [8873-2](https://loinc.org/8873-2) and [8867-4](https://loinc.org/8867-4)   | Quantity        | /min        | [Peak Daily Heart Rate example](Observation-a14a52b7-b647-45f3-851a-8c00e28c0968.html)     | 
| Average Resting Heart Rate |           |                   | [40443-4](https://loinc.org/40443-4) and [8867-4](https://loinc.org/8867-4) | Quantity        | /min        | [Average resting heart rate example](Observation-ea09866e-d540-4d9c-ba9c-8e22338e524c.html) | 
| Calories per Day           |           |                   | [41979-6](https://loinc.org/41979-6)                                        | Quantity        | kcal/(24.h) | [Calories per Day example](Observation-b8df13d9-86f3-4545-9e82-50bca88090d9.html)          | 

### NHS Health Assessment

**Draft** for elaboration

This relates to the [PRSB NHS Health Check Standard](https://theprsb.org/standards/nhshealthcheckstandard)
See also [NHS Health Check Asessment](Questionnaire-NHSHealthCheckAssessment.html) ([Questionnaire Viewer](https://project-wildfyre.github.io/questionnaire-viewer/?q=https://virtually-healthcare.github.io/HL7-FHIR-Implementation-Guide/Questionnaire-NHSHealthCheckAssessment.json)) form/data capture definition. Hint: Use [NLM Form Builder](https://formbuilder.nlm.nih.gov/) to view these definitions.

This has overlap with [vital-signs](#vital-signs) and uses consistent SNOMED CT coding.
