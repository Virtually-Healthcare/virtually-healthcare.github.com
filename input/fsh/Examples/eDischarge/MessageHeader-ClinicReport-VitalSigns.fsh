Instance: ClinicReportVitalSigns
InstanceOf: MessageHeader
Title: "Message Header - Clinic Report"
Description: "Clinic Report with single Observation Panel Clinic Report Vital Signs"
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
  * reference = "urn:uuid:88b99ab6-0990-4f1c-b1a7-6adb50dd70b7"
  * type = #Observation
