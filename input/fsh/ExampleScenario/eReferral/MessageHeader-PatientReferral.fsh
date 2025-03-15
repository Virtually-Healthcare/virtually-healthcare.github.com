Instance: MessageHeaderPatientReferral
InstanceOf: MessageHeader
Title: "Message Header - Patient Referral"
Description: "TODO"
Usage: #example


* meta.lastUpdated = "2025-01-29T10:39:26+00:00"

* eventCoding = http://terminology.hl7.org/CodeSystem/v2-0003#I12

* sender.identifier.system = $ods-code
* sender.identifier.value = "F83004"
* sender.display = "Archway Practice"

* destination.receiver.identifier.system = $ods-code
* destination.receiver.identifier.value = "FFX11"
* destination.receiver.display = "London Islington High St"
* destination.endpoint = "https://fhir.virtually.healthcare/Endpoint/MESH"

* source.endpoint = "https://fhir.virtually.healthcare/Endpoint/ESB"
* source.software = "VH Enterprise Service Bus"

* focus[+]
  * reference = "urn:uuid:f3533ea0-9588-4f25-ace7-969d80823b20"
  * type = #ServiceRequest
