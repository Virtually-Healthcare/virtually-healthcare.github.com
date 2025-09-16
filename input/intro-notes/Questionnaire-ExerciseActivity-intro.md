This is related to the [HL7 Physical Activity Implementation Guide](https://build.fhir.org/ig/HL7/physical-activity/)

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

<div class="alert alert-info" role="alert">
Archetype Viewer <a href="https://project-wildfyre.github.io/domain-archetype/?q=https://virtually-healthcare.github.io/Questionnaire-ExerciseActivity.json" target="_blank">Questionnaire-ExerciseActivity</a>
</div>
