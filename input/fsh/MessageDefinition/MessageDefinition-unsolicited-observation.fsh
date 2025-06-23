Instance:  unsolicited-observation
InstanceOf: MessageDefinition
Title:   "Message Definition - Unsolicited Observation"
Usage:  #definition

* status = #draft
* date = 2024-10-04
* eventCoding = http://terminology.hl7.org/CodeSystem/v2-0003#R01
* description = """
DRAFT conversion of [HL7 v2.5.1 ORU_R01](https://hl7-definition.caristix.com/v2/HL7v2.5.1/TriggerEvents/ORU_R01)
"""
* category = #notification

* focus[+]
* focus[=]
  * code = #DiagnosticReport
  * profile = Canonical(DiagnosticReport)
  * min = 0
  * max = "*"

* focus[+]
* focus[=]
  * code = #Observation
  * profile = Canonical(ObservationPanel)
  * min = 0
  * max = "*"

* focus[+]
* focus[=]
  * code = #Patient
  * profile = Canonical(Patient)
  * min = 0
  * max = "*"
