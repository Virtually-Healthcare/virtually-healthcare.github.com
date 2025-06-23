Instance:  discharged
InstanceOf: MessageDefinition
Title:   "Message Definition - Discharged"
Usage:  #definition

* status = #draft
* date = 2024-10-04
* eventCoding = http://terminology.hl7.org/CodeSystem/v2-0003#A03
* description = """
DRAFT conversion of [HL7 v2.4 ADT_A03](https://hl7-definition.caristix.com/v2/HL7v2.4/TriggerEvents/ADT_A03)
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
