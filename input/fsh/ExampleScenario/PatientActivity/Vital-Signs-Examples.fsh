Instance: af22811f-218e-4ff6-aa07-93f12c666dd7
InstanceOf: Observation
Title: "Observation CDR - Body weight"
Description: """
Form based Data Capture - Body weight

See also [HL7 FHIR Body weight](https://hl7.org/fhir/R4/bodyweight.html)

For Device based data capture populate device instead of derivedFrom
"""
Usage: #example

* identifier[+]
  * system = "https://tools.ietf.org/html/rfc4122"
  * value = "af22811f-218e-4ff6-aa07-93f12c666dd7"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding[SNOMED][+] = http://snomed.info/sct#27113001 "Body weight"
* code.coding[LOINC][+] = http://loinc.org#29463-7
* subject.reference = "Patient/073eef49-81ee-4c2e-893b-bc2e4efd2630"
* effectiveDateTime = "2024-03-04T06:27:40.701Z"
* valueQuantity.value = 81
* valueQuantity.code = #kg
* valueQuantity.unit = "kg"
* valueQuantity.system = "http://unitsofmeasure.org"
* performer.reference = "Patient/073eef49-81ee-4c2e-893b-bc2e4efd2630"
* derivedFrom.reference = "QuestionnaireResponse/questionnaireresponse-vital-signs"


Instance: 9a2052b8-f00a-41ec-bc4e-3bd4cfae62c2
InstanceOf: Observation
Title: "Observation CDR - Oxygen Saturation"
Description: """
Form based Data Capture - Oxygen Saturation

See also [Hl7 FHIR Oxygen Saturation](https://hl7.org/fhir/R4/oxygensat.html)

For Device based data capture populate device instead of derivedFrom
"""
Usage: #example

* identifier[+]
  * system = "https://tools.ietf.org/html/rfc4122"
  * value = "9a2052b8-f00a-41ec-bc4e-3bd4cfae62c2"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding[SNOMED][+] = http://snomed.info/sct#442476006 "Arterial oxygen saturation"
* code.coding[LOINC][+] = http://loinc.org#2708-6
* subject.reference = "Patient/073eef49-81ee-4c2e-893b-bc2e4efd2630"
* effectiveDateTime = "2024-03-04T06:27:40.701Z"
* valueQuantity.value = 98
* valueQuantity.code = #%
* valueQuantity.unit = "%"
* valueQuantity.system = "http://unitsofmeasure.org"
* performer.reference = "Patient/073eef49-81ee-4c2e-893b-bc2e4efd2630"
* derivedFrom.reference = "QuestionnaireResponse/questionnaireresponse-vital-signs"

Instance: 78fef4ce-cb0a-4e7d-b768-2565550b62a2
InstanceOf: Observation
Title: "Observation CDR - Head circumference"
Description: """
Form based Data Capture - Head circumference

See also [HL7 FHIR Head circumference](https://hl7.org/fhir/R4/headcircum.html)

For Device based data capture populate device instead of derivedFrom
"""
Usage: #example

* identifier[+]
  * system = "https://tools.ietf.org/html/rfc4122"
  * value = "78fef4ce-cb0a-4e7d-b768-2565550b62a2"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding[SNOMED][+] = http://snomed.info/sct#363811000 "Head circumference measure"
* code.coding[LOINC][+] = http://loinc.org#9843-4 "Head Occipital-frontal circumference"
* subject.reference = "Patient/073eef49-81ee-4c2e-893b-bc2e4efd2630"
* effectiveDateTime = "2024-03-04T06:27:40.701Z"
* valueQuantity.value = 59
* valueQuantity.code = #cm
* valueQuantity.unit = "cm"
* valueQuantity.system = "http://unitsofmeasure.org"
* performer.reference = "Patient/073eef49-81ee-4c2e-893b-bc2e4efd2630"
* derivedFrom.reference = "QuestionnaireResponse/questionnaireresponse-vital-signs"

Instance: ba92afc0-a1c5-41df-93d8-c3df49888bcd
InstanceOf: Observation
Title: "Observation CDR - Body height"
Description: """
Form based Data Capture - Body height

See also [HL7 FHIR Body height](https://hl7.org/fhir/R4/bodyheight.html)

For Device based data capture populate device instead of derivedFrom
"""
Usage: #example

* identifier[+]
  * system = "https://tools.ietf.org/html/rfc4122"
  * value = "ba92afc0-a1c5-41df-93d8-c3df49888bcd"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding[SNOMED][+] = http://snomed.info/sct#50373000 "Body height measure"
* code.coding[LOINC][+] = http://loinc.org#8302-2 "Body height"
* subject.reference = "Patient/073eef49-81ee-4c2e-893b-bc2e4efd2630"
* effectiveDateTime = "2024-03-04T06:27:40.701Z"
* valueQuantity.value = 179
* valueQuantity.code = #cm
* valueQuantity.unit = "cm"
* valueQuantity.system = "http://unitsofmeasure.org"
* performer.reference = "Patient/073eef49-81ee-4c2e-893b-bc2e4efd2630"
* derivedFrom.reference = "QuestionnaireResponse/questionnaireresponse-vital-signs"

Instance: 5ba52e14-9a98-48cb-8029-770e3e76f428
InstanceOf: Observation
Title: "Observation CDR - Body temperature"
Description: """
Form based Data Capture - Body temperature

See also [HL7 FHIR Body temperature](https://hl7.org/fhir/R4/bodytemp.html)

For Device based data capture populate device instead of derivedFrom
"""
Usage: #example

* identifier[+]
  * system = "https://tools.ietf.org/html/rfc4122"
  * value = "5ba52e14-9a98-48cb-8029-770e3e76f428"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding[SNOMED][+] = http://snomed.info/sct#276885007 "Core body temperature"
* code.coding[LOINC][+] = http://loinc.org#8310-5 "Body temperature"
* subject.reference = "Patient/073eef49-81ee-4c2e-893b-bc2e4efd2630"
* effectiveDateTime = "2024-03-04T06:27:40.701Z"
* valueQuantity.value = 36.1
* valueQuantity.code = #Cel
* valueQuantity.unit = "Cel"
* valueQuantity.system = "http://unitsofmeasure.org"
* performer.reference = "Patient/073eef49-81ee-4c2e-893b-bc2e4efd2630"
* derivedFrom.reference = "QuestionnaireResponse/questionnaireresponse-vital-signs"


Instance: 8037d992-5936-44bf-9253-f76f904ba7b9
InstanceOf: Observation
Title: "Observation CDR - Blood pressure"
Description: """
Form based Data Capture - Blood pressure

See also [HL7 Blood pressure](https://hl7.org/fhir/R4/bp.html)

For Device based data capture populate device instead of derivedFrom
"""
Usage: #example

* identifier[+]
  * system = "https://tools.ietf.org/html/rfc4122"
  * value = "8037d992-5936-44bf-9253-f76f904ba7b9"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding[LOINC][+] = http://loinc.org#85354-9
* code.coding[SNOMED][+] = http://snomed.info/sct#75367002 "Blood pressure"
* subject.reference = "Patient/073eef49-81ee-4c2e-893b-bc2e4efd2630"
* effectiveDateTime = "2024-03-04T06:27:40.701Z"
* component[+]
  * code.coding[SNOMED][+] = http://snomed.info/sct#72313002 "Systolic arterial pressure"
  * code.coding[LOINC][+] = http://loinc.org#8480-6
  * valueQuantity.value = 117
  * valueQuantity.code = #mm[Hg]
  * valueQuantity.unit = "mm Hg"
  * valueQuantity.system = "http://unitsofmeasure.org"
* component[+]
  * code.coding[SNOMED][+] = http://snomed.info/sct#1091811000000102 "Diastolic arterial pressure"
  * code.coding[LOINC][+] = http://loinc.org#8462-4
  * valueQuantity.value = 74
  * valueQuantity.code = #mm[Hg]
  * valueQuantity.unit = "mm Hg"
  * valueQuantity.system = "http://unitsofmeasure.org"
* performer.reference = "Patient/073eef49-81ee-4c2e-893b-bc2e4efd2630"
* derivedFrom.reference = "QuestionnaireResponse/questionnaireresponse-vital-signs"


Instance: 3421ccda-63f3-4e6e-b39c-ca9e3850d3a2
InstanceOf: Observation
Title: "Observation CDR - Heart rate"
Description: """
Form based Data Capture - Heart rate

See also [HL7 FHIR Heart rate](https://hl7.org/fhir/R4/heartrate.html)

For Device based data capture populate device instead of derivedFrom
"""
Usage: #example

* identifier[+]
  * system = "https://tools.ietf.org/html/rfc4122"
  * value = "3421ccda-63f3-4e6e-b39c-ca9e3850d3a2"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding[SNOMED][+] = http://snomed.info/sct#364075005 "Heart rate"
* code.coding[LOINC][+] = http://loinc.org#8867-4
* subject.reference = "Patient/073eef49-81ee-4c2e-893b-bc2e4efd2630"
* effectiveDateTime = "2024-03-04T06:27:40.701Z"
* valueQuantity.value = 49
* valueQuantity.code = #/min
* valueQuantity.unit = "/min"
* valueQuantity.system = "http://unitsofmeasure.org"
* performer.reference = "Patient/073eef49-81ee-4c2e-893b-bc2e4efd2630"
* derivedFrom.reference = "QuestionnaireResponse/questionnaireresponse-vital-signs"

Instance: 65083da2-c77f-419e-a205-68a7d3863e90
InstanceOf: Observation
Title: "Observation CDR - Respiratory rate"
Description: """
Form based Data Capture - Respiratory rate

See also [HL7 FHIR Respiratory rate](https://hl7.org/fhir/R4/resprate.html)

For Device based data capture populate device instead of derivedFrom
"""
Usage: #example

* identifier[+]
  * system = "https://tools.ietf.org/html/rfc4122"
  * value = "65083da2-c77f-419e-a205-68a7d3863e90"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding[SNOMED][+] = http://snomed.info/sct#86290005 "Respiratory rate"
* code.coding[LOINC][+] = http://loinc.org#9279-1
* subject.reference = "Patient/073eef49-81ee-4c2e-893b-bc2e4efd2630"
* effectiveDateTime = "2024-03-04T06:27:40.701Z"
* valueQuantity.value = 19
* valueQuantity.code = #/min
* valueQuantity.unit = "/min"
* valueQuantity.system = "http://unitsofmeasure.org"
* performer.reference = "Patient/073eef49-81ee-4c2e-893b-bc2e4efd2630"
* derivedFrom.reference = "QuestionnaireResponse/questionnaireresponse-vital-signs"

Instance: f268716f-9dc6-4361-a124-0aad3604d8a2
InstanceOf: Observation
Title: "Observation CDR - Body Mass Index"
Description: """
Form based Data Capture - Body Mass Index

See also [HL7 FHIR Body Mass Index](https://hl7.org/fhir/R4/resprate.html)

For Device based data capture populate device instead of derivedFrom
"""
Usage: #example

* identifier[+]
  * system = "https://tools.ietf.org/html/rfc4122"
  * value = "f268716f-9dc6-4361-a124-0aad3604d8a2"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding[SNOMED][+] = http://snomed.info/sct#60621009 "Body mass index"
* code.coding[LOINC][+] = http://loinc.org#39156-5
* subject.reference = "Patient/073eef49-81ee-4c2e-893b-bc2e4efd2630"
* effectiveDateTime = "2024-03-04T06:27:40.701Z"
* valueQuantity.value = 25.1
* valueQuantity.code = #kg/m2
* valueQuantity.unit = "kg/m2"
* valueQuantity.system = "http://unitsofmeasure.org"
* performer.reference = "Patient/073eef49-81ee-4c2e-893b-bc2e4efd2630"
* derivedFrom.reference = "QuestionnaireResponse/questionnaireresponse-vital-signs"

Instance: 88b99ab6-0990-4f1c-b1a7-6adb50dd70b7
InstanceOf: Observation
Title: "Observation CDR - Vital Signs Panel"
Description: """
See also [HL7 FHIR Vital Signs](https://www.hl7.org/FHIR/R4/vitalspanel.html)
"""
Usage: #example

* identifier[+]
  * system = "https://tools.ietf.org/html/rfc4122"
  * value = "1300fffb-e319-400b-84d0-4e9c1f619af4"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#85353-1
* subject.reference = "Patient/073eef49-81ee-4c2e-893b-bc2e4efd2630"
* effectiveDateTime = "2024-03-04T06:27:40.701Z"
* performer.reference = "Patient/073eef49-81ee-4c2e-893b-bc2e4efd2630"

* hasMember[+]
  * reference = "Observation/af22811f-218e-4ff6-aa07-93f12c666dd7"
* hasMember[+]
  * reference = "Observation/9a2052b8-f00a-41ec-bc4e-3bd4cfae62c2"
* hasMember[+]
  * reference = "Observation/78fef4ce-cb0a-4e7d-b768-2565550b62a2"
* hasMember[+]
  * reference = "Observation/ba92afc0-a1c5-41df-93d8-c3df49888bcd"
* hasMember[+]
  * reference = "Observation/5ba52e14-9a98-48cb-8029-770e3e76f428"
* hasMember[+]
  * reference = "Observation/3421ccda-63f3-4e6e-b39c-ca9e3850d3a2"
* hasMember[+]
  * reference = "Observation/65083da2-c77f-419e-a205-68a7d3863e90"
* hasMember[+]
  * reference = "Observation/f268716f-9dc6-4361-a124-0aad3604d8a2"
* hasMember[+]
  * reference = "Observation/8037d992-5936-44bf-9253-f76f904ba7b9"
