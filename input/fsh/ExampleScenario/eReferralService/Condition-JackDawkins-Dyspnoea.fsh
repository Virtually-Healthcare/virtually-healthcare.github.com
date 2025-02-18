Instance: Condition-Dyspnoea-9912003888
InstanceOf: Condition
Title: "Condition - Dyspnoea"
Description: """
Condition Dyspnoea Jack Dawkins NHS Number: 9912003888

Loosely based on [NHS Digital End of Life Care FHIR STU3 - Advance Treatment Preferences Atomic Unit](https://nhsconnect.github.io/FHIR-END-OF-LIFE-API/api_eol_atp.html)
"""
Usage: #example

* identifier.system = "https://tools.ietf.org/html/rfc4122"
* identifier.value = "71fae5af-0b9e-4b9e-b6af-3d1bb4e223a0"
* identifier.assigner.identifier.system = $ods-code
* identifier.assigner.identifier.value = "FK502"

* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* severity = $sct#24484000 "Severe"

* subject.identifier.system = $nhs-number
* subject.identifier.value = "9912003888"
* subject.display = "Jack DAWKINS"

* code = $sct#267036007 "Dyspnoea"

* onsetDateTime = "2018-08-20"

* asserter.identifier.system = $gmc-number
* asserter.identifier.value = "C3456789"
* asserter.display = "Dr Samuel Darwin"
