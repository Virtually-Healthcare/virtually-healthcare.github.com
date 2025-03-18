Instance: 71fae5af-0b9e-4b9e-b6af-3d1bb4e223a0
InstanceOf: Observation
Title: "Observation CDR - Calories per activity"
Description: """
Patient Held Device Data Capture - Calories per activity
"""
Usage: #example

* identifier[+]
  * system = "https://tools.ietf.org/html/rfc4122"
  * value = "71fae5af-0b9e-4b9e-b6af-3d1bb4e223a0"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#activity
* code = http://loinc.org#55424-6 "Calories burned in Unspecified Time, Pedometer"
* subject.reference = "Patient/073eef49-81ee-4c2e-893b-bc2e4efd2630"
* effectiveDateTime = "2024-10-28T04:49:08.943Z"
* valueQuantity.value = 413
* valueQuantity.code = #kcal
* valueQuantity.system = "http://unitsofmeasure.org"
* performer.reference = "Patient/073eef49-81ee-4c2e-893b-bc2e4efd2630"
* device.display = "Apple Healthkit"

Instance: cffe1a6e-8eda-4613-bf54-119b374bb5b9
InstanceOf: Observation
Title: "Observation CDR - Average Heart Rate"
Description: """
Patient Held Device Data Capture - Average Heart Rate
"""
Usage: #example

* identifier[+]
  * system = "https://tools.ietf.org/html/rfc4122"
  * value = "cffe1a6e-8eda-4613-bf54-119b374bb5b9"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding[LOINC][+] = http://loinc.org#55425-3 "Heart rate unspecified time mean by Pedometer"
* code.coding[LOINC][+] = http://loinc.org#8867-4
* subject.reference = "Patient/073eef49-81ee-4c2e-893b-bc2e4efd2630"
* effectiveDateTime = "2024-10-28T04:49:08.943Z"
* valueQuantity.value = 116
* valueQuantity.code = #/min
* valueQuantity.unit = "/min"
* valueQuantity.system = "http://unitsofmeasure.org"
* performer.reference = "Patient/073eef49-81ee-4c2e-893b-bc2e4efd2630"
* device.display = "Apple Healthkit"

Instance: 35eb7da3-9b85-46ce-bd29-75c2263b514a
InstanceOf: Observation
Title: "Observation CDR - Activity Duration"
Description: """
Patient Held Device Data Capture - Activity Duration
"""
Usage: #example

* identifier[+]
  * system = "https://tools.ietf.org/html/rfc4122"
  * value = "35eb7da3-9b85-46ce-bd29-75c2263b514a"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#activity
* code = http://loinc.org#55411-3 "Exercise duration"
* subject.reference = "Patient/073eef49-81ee-4c2e-893b-bc2e4efd2630"
* effectiveDateTime = "2024-10-28T04:49:08.943Z"
* valueQuantity.value = 51
* valueQuantity.code = #min
* valueQuantity.system = "http://unitsofmeasure.org"
* performer.reference = "Patient/073eef49-81ee-4c2e-893b-bc2e4efd2630"
* device.display = "Apple Healthkit"

Instance: ad7c1832-f855-4ece-a4c7-c79b433a7890
InstanceOf: Observation
Title: "Observation CDR - Peak Activity Heart Rate"
Description: """
Patient Held Device Data Capture - Peak Activity Heart Rate
"""
Usage: #example

* identifier[+]
  * system = "https://tools.ietf.org/html/rfc4122"
  * value = "ad7c1832-f855-4ece-a4c7-c79b433a7890"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#activity
* code = http://loinc.org#55426-1 "Maximum Heart rate in Unspecified Time"
* subject.reference = "Patient/073eef49-81ee-4c2e-893b-bc2e4efd2630"
* effectiveDateTime = "2024-10-28T04:49:08.943Z"
* valueQuantity.value = 119
* valueQuantity.code = #/min
* valueQuantity.system = "http://unitsofmeasure.org"
* performer.reference = "Patient/073eef49-81ee-4c2e-893b-bc2e4efd2630"
* device.display = "Apple Healthkit"

Instance: cb3c778b-cee4-4027-8163-c082958f87f1
InstanceOf: Observation
Title: "Observation CDR - Exercise Activity Walking"
Description: """
Patient Held Device Data Capture - Exercise Activity Walking
"""
Usage: #example

* identifier[+]
  * system = "https://tools.ietf.org/html/rfc4122"
  * value = "cb3c778b-cee4-4027-8163-c082958f87f1"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#activity
* code = http://loinc.org#73985-4 "Exercise activity"
* subject.reference = "Patient/073eef49-81ee-4c2e-893b-bc2e4efd2630"
* effectiveDateTime = "2024-10-28T04:49:08.943Z"
* valueCodeableConcept = http://snomed.info/sct#870595007 "Walking"
* performer.reference = "Patient/073eef49-81ee-4c2e-893b-bc2e4efd2630"
* device.display = "Apple Healthkit"

Instance: 8f750590-30d6-425f-a8c4-f0a7c41e01d4
InstanceOf: Observation
Title: "Observation CDR - Physical Activity Panel"
Description: """
Patient Held Device Data Capture - Physical Activity Panel
"""
Usage: #example

* identifier[+]
  * system = "https://tools.ietf.org/html/rfc4122"
  * value = "8f750590-30d6-425f-a8c4-f0a7c41e01d4"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#activity
* code = http://snomed.info/sct#68130003 "Physical activity"
* subject.reference = "Patient/073eef49-81ee-4c2e-893b-bc2e4efd2630"
* effectiveDateTime = "2024-10-28T04:49:08.943Z"
* performer.reference = "Patient/073eef49-81ee-4c2e-893b-bc2e4efd2630"

* hasMember[+]
  * reference = "Observation/cb3c778b-cee4-4027-8163-c082958f87f1"
* hasMember[+]
  * reference = "Observation/71fae5af-0b9e-4b9e-b6af-3d1bb4e223a0"
* hasMember[+]
  * reference = "Observation/cffe1a6e-8eda-4613-bf54-119b374bb5b9"
* hasMember[+]
  * reference = "Observation/35eb7da3-9b85-46ce-bd29-75c2263b514a"
* hasMember[+]
  * reference = "Observation/ad7c1832-f855-4ece-a4c7-c79b433a7890"
