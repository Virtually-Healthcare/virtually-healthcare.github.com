Instance: f3533ea0-9588-4f25-ace7-969d80823b20
InstanceOf: ServiceRequest
Title: "ServiceRequest - Create"
Description: """
Example conversion of [$ers.createReferral multishortlist](https://digital.nhs.uk/developer/api-catalogue/e-referral-service-fhir#post-/STU3/ReferralRequest/$ers.createReferral) to FHIR R4 ServiceRequest in a Clinical Data Repository
"""
Usage: #example

* identifier[OriginatingReferralIdentifier]
  * system = "https://tools.ietf.org/html/rfc4122"
  * value = "f3533ea0-9588-4f25-ace7-969d80823b20"
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#PLAC
  * assigner.identifier.system = $ods-code
  * assigner.identifier.value = "F83004"

* status = #active
* intent = #order
* subject.identifier.system = $nhs-number
* subject.identifier.value = "9912003888"

* performer[+]
  * identifier.value = "FFX11"
  * identifier.system = $ods-code

* code.coding[PatientReferralSCT] = $sct#425315000 "Cardiac assessment"

* category[PatientReferral] = $sct#3457005 "Patient Referral"

* priority = #routine



