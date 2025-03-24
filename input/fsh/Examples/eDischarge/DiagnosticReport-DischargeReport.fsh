Instance: 63487b62-cbdc-4f29-b393-70eed3fbc498
InstanceOf: DiagnosticReport
Title: "Diagnostic Report Physical Activity Example."
Description: "Based on US Physical Activity IG"

* meta.versionId = "1.0"

* identifier[+]
  * value = "25edee2b-add8-4522-9fa2-1ee8f229bd75"
  * system = "https://fhir.virtually.healthcare/Id/ReportId"
  * assigner.identifier.system = $ods-code
  * assigner.identifier.value = "FFX11"

* basedOn[OriginatingReferralIdentifier]
  * type = "ServiceRequest"
  * identifier.system = "https://tools.ietf.org/html/rfc4122"
  * identifier.value = "f3533ea0-9588-4f25-ace7-969d80823b20"
  * identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#PLAC
  * identifier.assigner.identifier.system = $ods-code
  * identifier.assigner.identifier.value = "F83004"

* status = #final
* category = http://hl7.org/fhir/us/physical-activity/CodeSystem/pa-temporary-codes#PhysicalActivity

* code.coding[LOINC] = $loinc#11488-4

* subject.reference = "urn:uuid:073eef49-81ee-4c2e-893b-bc2e4efd2630"
* subject.identifier.system = $nhs-number
* subject.identifier.value = "9912003888"

* effectiveDateTime = "2023-09-07T11:45:41+00:00"

* performer[+]
  * identifier.system = $ods-code
  * identifier.value = "FFX11"
  * type = #Organization
  * display = "Boots"

* performer[+]
  * type = "Practitioner"
  * identifier.system = "https://fhir.hl7.org.uk/Id/gmc-number"
  * identifier.value = "C1234567"
  * display = "FICTITIOUS, Ralph"
  * extension[performerFunction].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#SPRF

* resultsInterpreter[+]
  * type = "Practitioner"
  * identifier.system = "https://fhir.hl7.org.uk/Id/gmc-number"
  * identifier.value = "C1234567"
  * display = "FICTITIOUS, Ralph"

* conclusion = "Normal - no action"

// Panels
* result[+]
  * reference = "urn:uuid:88b99ab6-0990-4f1c-b1a7-6adb50dd70b7"
  * type = #Observation


// Individual Observations

* result[+]
  * reference = "urn:uuid:0a7f38ae-9658-4b43-a3f9-02f66f65bf38"
  * type = #Observation
* result[+]
  * reference = "urn:uuid:a14a52b7-b647-45f3-851a-8c00e28c0968"
  * type = #Observation

