Instance:  original-document-notification-and-content
InstanceOf: MessageDefinition
Title:   "Message Definition - Original Document Notification and Content"
Usage:  #definition

* status = #draft
* date = 2024-10-04
* eventCoding = http://terminology.hl7.org/CodeSystem/v2-0003#T02
* description = """
DRAFT conversion of [HL7 v2.5.1 MDM_T02](https://hl7-definition.caristix.com/v2/HL7v2.5.1/TriggerEvents/MDM_T02)
"""
* category = #consequence

* focus[+]
* focus[=]
  * code = #DocumentReference
  * profile = Canonical(DocumentReference)
  * min = 0
  * max = "*"

* focus[+]
* focus[=]
  * code = #Patient
  * profile = Canonical(Patient)
  * min = 0
  * max = "*"
