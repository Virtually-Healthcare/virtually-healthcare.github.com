Instance: Patient-JackDawkins-9912003888
InstanceOf: Patient
Title: "Patient - Jack Dawkins NHS Number: 9912003888"
Description: """
Loosely based on [NHS Digital End of Life Care FHIR STU3 - Demographics Atomic Unit](https://nhsconnect.github.io/FHIR-END-OF-LIFE-API/api_eol_demographics.html)
"""
Usage: #example

* active = true
* identifier[nhsNumber].use = #official
* identifier[nhsNumber].type = $v2-0203#NH
* identifier[nhsNumber].system = $nhs-number
* identifier[nhsNumber].value = "9912003888"
* identifier[nhsNumber].assigner.identifier.system = $ods-code
* identifier[nhsNumber].assigner.identifier.value = "X24"
* identifier[MedicalRecordNumber][+]
  * type = $v2-0203#MR
  * system = "https://fhir.nhs.uk/Id/medical-record-number"
  * value = "A12356565"
  * assigner.identifier.value = "RW1"

* identifier[MedicalRecordNumber][+]
  * type = $v2-0203#MR
  * system = "https://fhir.nhs.uk/Id/medical-record-number"
  * value = "633"
  * assigner.identifier.value = "YHMS"

* name.use = #official
* name.family = "DAWKINS"
* name.given = "Jack"

* birthDate = "1937-10-02"

* address[+]
  * use = #home
  * type = #both
  * city = "Leodis"
  * postalCode = "LA19 5YN"

* gender = #male

* contact.name.use = #official
* contact.name.family = "DAWKINS"
* contact.name.given = "Bob"
* contact.telecom.value = "077021231231"
* contact.telecom.system = #phone
* contact.telecom.use = #mobile
