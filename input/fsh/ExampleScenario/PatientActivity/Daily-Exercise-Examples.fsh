Instance: 0a7f38ae-9658-4b43-a3f9-02f66f65bf38
InstanceOf: Observation
Title: "Observation CDR - Daily Step Count"
Description: """
Patient Held Device Data Capture - Daily Step Count
"""
Usage: #example

* identifier[+]
  * system = "https://tools.ietf.org/html/rfc4122"
  * value = "0a7f38ae-9658-4b43-a3f9-02f66f65bf38"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#activity
* code.coding[LOINC][+] = http://loinc.org#41950-7 "Number of steps in 24 Hours, Measured"
* subject.reference = "Patient/073eef49-81ee-4c2e-893b-bc2e4efd2630"
* effectiveDateTime = "2024-10-28T04:49:08.943Z"
* valueQuantity.value = 9607
* valueQuantity.code = #/d
* valueQuantity.unit = "/d"
* valueQuantity.system = "http://unitsofmeasure.org"
* performer.reference = "Patient/073eef49-81ee-4c2e-893b-bc2e4efd2630"
* device.display = "Apple Healthkit"

Instance: a14a52b7-b647-45f3-851a-8c00e28c0968
InstanceOf: Observation
Title: "Observation CDR - Peak daily heart rate"
Description: """
Patient Held Device Data Capture - Peak daily heart rate
"""
Usage: #example

* identifier[+]
  * system = "https://tools.ietf.org/html/rfc4122"
  * value = "a14a52b7-b647-45f3-851a-8c00e28c0968"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding[LOINC][+] = http://loinc.org#8873-2 "Maximum Heart rate in 24 Hours"
* code.coding[LOINC][+] = http://loinc.org#8867-4
* subject.reference = "Patient/073eef49-81ee-4c2e-893b-bc2e4efd2630"
* effectiveDateTime = "2024-10-28T04:49:08.943Z"
* valueQuantity.value = 132
* valueQuantity.code = #/min
* valueQuantity.unit = "/min"
* valueQuantity.system = "http://unitsofmeasure.org"
* performer.reference = "Patient/073eef49-81ee-4c2e-893b-bc2e4efd2630"
* device.display = "Apple Healthkit"

Instance: ea09866e-d540-4d9c-ba9c-8e22338e524c
InstanceOf: Observation
Title: "Observation CDR - Average Resting Heart Rate"
Description: """
Patient Held Device Data Capture - Average Resting Heart Rate
"""
Usage: #example

* identifier[+]
  * system = "https://tools.ietf.org/html/rfc4122"
  * value = "ea09866e-d540-4d9c-ba9c-8e22338e524c"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding[LOINC][+] = http://loinc.org#40443-4 "Heart rate - resting"
* code.coding[LOINC][+] = http://loinc.org#8867-4
* subject.reference = "Patient/073eef49-81ee-4c2e-893b-bc2e4efd2630"
* effectiveDateTime = "2024-10-28T04:49:08.943Z"
* valueQuantity.value = 64
* valueQuantity.code = #/min
* valueQuantity.unit = "/min"
* valueQuantity.system = "http://unitsofmeasure.org"
* performer.reference = "Patient/073eef49-81ee-4c2e-893b-bc2e4efd2630"
* device.display = "Apple Healthkit"

Instance: b8df13d9-86f3-4545-9e82-50bca88090d9
InstanceOf: Observation
Title: "Observation CDR - Calories per Day"
Description: """
Patient Held Device Data Capture - Calories per Day
"""
Usage: #example

* identifier[+]
  * system = "https://tools.ietf.org/html/rfc4122"
  * value = "b8df13d9-86f3-4545-9e82-50bca88090d9"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#activity
* code.coding[LOINC][+] = http://loinc.org#41979-6 "Calories burned in 24 Hours, Calc"
* subject.reference = "Patient/073eef49-81ee-4c2e-893b-bc2e4efd2630"
* effectiveDateTime = "2024-10-28T04:49:08.943Z"
* valueQuantity.value = 714
* valueQuantity.code = #kcal/(24.h)
* valueQuantity.unit = "kcal/(24.h)"
* valueQuantity.system = "http://unitsofmeasure.org"
* performer.reference = "Patient/073eef49-81ee-4c2e-893b-bc2e4efd2630"
* device.display = "Apple Healthkit"
