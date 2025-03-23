Instance: DischargeReportRemotePatientMonitoring
InstanceOf: MessageHeader
Title: "Message Header - Discharge Report R01"
Description: "DiagnosticReport with multiple Observation Panel Clinic and individual Observations"
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

// Panel Vital Signs
* focus[+]
  * reference = "urn:uuid:63487b62-cbdc-4f29-b393-70eed3fbc498"
  * type = #DiagnosticReport

// Panel Vital Signs
* focus[+]
  * reference = "urn:uuid:88b99ab6-0990-4f1c-b1a7-6adb50dd70b7"
  * type = #Observation
// Panel Exercice
* focus[+]
  * reference = "urn:uuid:8f750590-30d6-425f-a8c4-f0a7c41e01d4"
  * type = #Observation
// Observations Daily Activity
* focus[+]
  * reference = "urn:uuid:0a7f38ae-9658-4b43-a3f9-02f66f65bf38"
  * type = #Observation
* focus[+]
  * reference = "urn:uuid:a14a52b7-b647-45f3-851a-8c00e28c0968"
  * type = #Observation
* focus[+]
  * reference = "urn:uuid:ea09866e-d540-4d9c-ba9c-8e22338e524c"
  * type = #Observation
* focus[+]
  * reference = "urn:uuid:b8df13d9-86f3-4545-9e82-50bca88090d9"
  * type = #Observation
* focus[+]
  * reference = "urn:uuid:cb3c778b-cee4-4027-8163-c082958f87f1"
  * type = #Observation
