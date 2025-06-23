Instance:  patient-referral
InstanceOf: MessageDefinition
Title:   "Message Definition - Patient Referral"
Usage:  #definition

* status = #draft
* date = 2024-10-04
* eventCoding = http://terminology.hl7.org/CodeSystem/v2-0003#I12
* description = """
DRAFT conversion of [HL7 v2.5.1 REF_I12 - Patient referral](https://hl7-definition.caristix.com/v2/HL7v2.5.1/TriggerEvents/REF_I12)
"""
* category = #notification

* focus[+]
* focus[=]
  * code = #ServiceRequest
  * profile = Canonical(ServiceRequest)
  * min = 1
  * max = "*"

// * allowedResponse[+].message = Canonical(laboratory-order-acknowledgement)


