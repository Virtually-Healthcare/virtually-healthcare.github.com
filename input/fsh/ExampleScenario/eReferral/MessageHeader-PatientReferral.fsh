Instance: MessageHeaderPatientReferral
InstanceOf: MessageHeader
Title: "Message Header - Patient Referral"
Description: "TODO"
Usage: #example


* meta.lastUpdated = "2025-01-29T10:39:26+00:00"

* eventCoding = http://terminology.hl7.org/CodeSystem/v2-0003#I12

* sender.identifier.system = $ods-code
* sender.identifier.value = "R0A"
* sender.display = "MANCHESTER UNIVERSITY NHS FOUNDATION TRUST"

* destination.receiver.identifier.system = $ods-code
* destination.receiver.identifier.value = "699X0"
* destination.receiver.display = "NORTH WEST GLH"
* destination.endpoint = "https//fhir.mft.nhs.uk/Endpoint/LIMS"

* source.endpoint = "https//fhir.mft.nhs.uk/Endpoint/HIVE"
* source.software = "MFT Epic"

* focus[+]
  * reference = "urn:uuid:f3533ea0-9588-4f25-ace7-969d80823b20"
  * type = #ServiceRequest
