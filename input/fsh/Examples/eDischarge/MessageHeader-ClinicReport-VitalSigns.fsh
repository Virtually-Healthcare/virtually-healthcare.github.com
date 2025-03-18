Instance: ClinicReportVitalSigns
InstanceOf: MessageHeader
Title: "Message Header - Clinic Report Vital Signs"
Description: "TODO"
Usage: #example


* meta.lastUpdated = "2025-01-29T10:39:26+00:00"

* eventCoding = http://terminology.hl7.org/CodeSystem/v2-0003#R01

* sender.identifier.system = $ods-code
* sender.identifier.value = "F83004"
* sender.display = "Archway Practice"

* destination.receiver.identifier.system = $ods-code
* destination.receiver.identifier.value = "F83004"
* destination.receiver.display = "Archway Practice"
* destination.endpoint = "https://fhir.virtually.healthcare/Endpoint/EMIS"

* source.endpoint = "https://fhir.virtually.healthcare/Endpoint/Online"
* source.software = "Virtually App 1.02"

* focus[+]
  * reference = "urn:uuid:94bf65ba-cd6c-4601-b339-6d547f424646"
  * type = #Observation
