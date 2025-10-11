Instance: 3a0ec151-0fff-4591-94db-af3536e5e380
InstanceOf: Observation
Title: "Observation Current non-drinker of alcohol"
Description: """
See [Questionnaire: Social Content](Questionnaire-SocialContext.html)
"""
Usage: #example

* identifier[+]
  * system = "urn:ietf:rfc:3986"
  * value = "urn:uuid:3a0ec151-0fff-4591-94db-af3536e5e380"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#social-history
* code.coding[SNOMED][+] = http://snomed.info/sct#228273003 "Finding relating to alcohol drinking behaviour"
* subject.reference = "urn:uuid:073eef49-81ee-4c2e-893b-bc2e4efd2630"
* effectiveDateTime = "2025-10-11T10:50:40.701Z"
* valueCodeableConcept.coding[+] = http://snomed.info/sct#105542008 "Current non-drinker of alcohol"
* performer.reference = "urn:uuid:073eef49-81ee-4c2e-893b-bc2e4efd2630"


Instance: bff13007-c9b5-414f-9dc8-b55af52cdbce
InstanceOf: Observation
Title: "Observation Non-drinker for personal reasons"
Description: """
See [Questionnaire: Social Content](Questionnaire-SocialContext.html)
"""
Usage: #example

* identifier[+]
  * system = "urn:ietf:rfc:3986"
  * value = "urn:uuid:bff13007-c9b5-414f-9dc8-b55af52cdbce"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#social-history
* code.coding[SNOMED][+] = http://snomed.info/sct#228273003 "Finding relating to alcohol drinking behaviour"
* subject.reference = "urn:uuid:073eef49-81ee-4c2e-893b-bc2e4efd2630"
* effectiveDateTime = "2025-10-11T10:50:40.701Z"
* valueCodeableConcept.coding[+] = http://snomed.info/sct#105543003 "Non-drinker for personal reasons"
* performer.reference = "urn:uuid:073eef49-81ee-4c2e-893b-bc2e4efd2630"


Instance: a2cf5305-6de3-4ec5-8c7c-4c1b68b30d5c
InstanceOf: Observation
Title: "Observation Ex Smoker"
Description: """
See [Questionnaire: Social Content](Questionnaire-SocialContext.html)
"""
Usage: #example

* identifier[+]
  * system = "urn:ietf:rfc:3986"
  * value = "urn:uuid:a2cf5305-6de3-4ec5-8c7c-4c1b68b30d5c"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#social-history
* code.coding[SNOMED][+] = http://snomed.info/sct#365981007 "Finding of tobacco smoking behaviour"
* subject.reference = "urn:uuid:073eef49-81ee-4c2e-893b-bc2e4efd2630"
* effectiveDateTime = "2025-10-11T10:50:40.701Z"
* valueCodeableConcept.coding[+] = http://snomed.info/sct#8517006 "Former smoker"
* performer.reference = "urn:uuid:073eef49-81ee-4c2e-893b-bc2e4efd2630"


Instance: 07604762-0a52-456f-9602-7f76b66da6af
InstanceOf: Observation
Title: "Observation Stopped smoking"
Description: """
See [Questionnaire: Social Content](Questionnaire-SocialContext.html)
"""
Usage: #example

* identifier[+]
  * system = "urn:ietf:rfc:3986"
  * value = "urn:uuid:07604762-0a52-456f-9602-7f76b66da6af"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#social-history
* code.coding[SNOMED][+] = http://snomed.info/sct#160617001 "Stopped smoking"
* subject.reference = "urn:uuid:073eef49-81ee-4c2e-893b-bc2e4efd2630"
* effectiveDateTime = "2025-10-11T10:50:40.701Z"
* valueDateTime = "2012-09-29T00:00:00.000Z"
* performer.reference = "urn:uuid:073eef49-81ee-4c2e-893b-bc2e4efd2630"