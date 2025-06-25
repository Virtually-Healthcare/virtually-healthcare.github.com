Instance:  consultation-note
InstanceOf: MessageDefinition
Title:   "Message Definition - Consultation Note"
Usage:  #definition

* status = #draft
* date = 2024-10-04
* eventCoding = http://terminology.hl7.org/CodeSystem/v2-0003#A04
* description = """
DRAFT conversion of [HL7 v2.4 ADT_A04](https://hl7-definition.caristix.com/v2/HL7v2.4/TriggerEvents/ADT_A04)
"""
* category = #notification

* focus[+]
* focus[=]
  * code = #Encounter
  * profile = Canonical(Encounter)
  * min = 1
  * max = "*"

* focus[+]
* focus[=]
  * code = #Patient
  * profile = Canonical(Patient)
  * min = 0
  * max = "*"

* focus[+]
* focus[=]
  * code = #Observation
  * profile = Canonical(Observation)
  * min = 0
  * max = "*"

* focus[+]
* focus[=]
  * code = #Condition
  * profile = Canonical(Condition)
  * min = 0
  * max = "*"

* focus[+]
* focus[=]
  * code = #Procedure
  * profile = Canonical(Procedure)
  * min = 0
  * max = "*"

* focus[+]
* focus[=]
  * code = #AllergyIntolerance
  * profile = Canonical(AllergyIntolerance)
  * min = 0
  * max = "*"
