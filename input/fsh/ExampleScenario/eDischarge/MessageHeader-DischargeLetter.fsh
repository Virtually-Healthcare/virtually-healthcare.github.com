Instance: MessageHeaderDischargeLetter
InstanceOf: MessageHeader
Title: "Message Header - Discharge Letter"
Description: "TODO"
Usage: #example


* meta.lastUpdated = "2025-01-29T10:39:26+00:00"

* eventCoding = http://terminology.hl7.org/CodeSystem/v2-0003#T02

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
  * reference = "urn:uuid:94bf65ba-cd6c-4601-b339-6d547f424646"
  * type = #DocumentReference
