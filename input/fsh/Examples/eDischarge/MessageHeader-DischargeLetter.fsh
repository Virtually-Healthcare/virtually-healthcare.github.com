Instance: DischargeLetter
InstanceOf: MessageHeader
Title: "Message Header - Discharge Letter"
Description: "TODO"
Usage: #example


* meta.lastUpdated = "2025-01-29T10:39:26+00:00"

* eventCoding = http://terminology.hl7.org/CodeSystem/v2-0003#T02

* sender.identifier.system = $ods-code
* sender.identifier.value = "FFX11"
* sender.display = "London Islington High St"

* destination.receiver.identifier.system = $ods-code
* destination.receiver.identifier.value = "F83004"
* destination.receiver.display = "Archway Practice"
* destination.endpoint = "https://fhir.virtually.healthcare/Endpoint/MESH"

* source.endpoint = "https://fhir.virtually.healthcare/Endpoint/MESH"
* source.software = "MESH"

* focus[+]
  * reference = "urn:uuid:94bf65ba-cd6c-4601-b339-6d547f424646"
  * type = #DocumentReference
