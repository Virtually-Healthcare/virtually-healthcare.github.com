Instance: 073eef49-81ee-4c2e-893b-bc2e4efd2630
InstanceOf: Patient
Title: "Patient CDR - Rachel Kanfeld"
Description: """
Clinical Data Reposotory Rachel Kanfeld
"""
Usage: #example

* identifier[nhsNumber].system = $nhs-number
* identifier[nhsNumber].value = "9876543210"
* name.use = #usual
* name.family = "Kanfeld"
* name.given = "Rachel"
* gender = #female
* active = true
* birthDate = "1998-03-16"
* address[+]
  * use = #home
  * line[+] = "123 Dale Avenue"
  * line[+] = "Long Eaton"
  * line[+] = "Nottingham"
  * postalCode = "NG10 1NP"
* generalPractitioner[+]
  * reference = "Organization/e2d3115b-402b-45a5-a01d-7acb64466ddc"
  * identifier.system = "https://fhir.nhs.uk/Id/ods-organization-code"
  * identifier.value =  "C81010"
