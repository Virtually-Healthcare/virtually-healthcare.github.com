Instance: Patient-OctaviaCHISLETT-9449305552
InstanceOf: Patient
Title: "Patient - Octavia CHISLETT NHS Number: 9449305552"
Description: """
Example NHS England PDS Test Pack
"""
Usage: #example

* active = true
* identifier[0].use = #official
* identifier[0].type = $v2-0203#NH
* identifier[0].system = $nhs-number
* identifier[0].value = "9449305552"
* identifier[0].assigner.identifier.value = "X24"
* identifier[1].type = $v2-0203#MR
* identifier[1].value = "A12356565"
* identifier[1].system = "https://devmtx-restapis-stable.meditech.com:443/identifier/MRN"
* identifier[1].assigner.identifier.system = $ods-code
* identifier[1].assigner.identifier.value = "RBS"
* identifier[2].type = $v2-0203#MR
* identifier[2].value = "633"
* identifier[2].system = "http://open.epic.com/FHIR/StructureDefinition/patient-fhir-id"
* identifier[2].assigner.identifier.system = $ods-code
* identifier[2].assigner.identifier.value = "R0A"

* name.use = #official
* name.family = "CHISLETT"
* name.given = "Octavia"

* birthDate = "2008-09-20"

* address[+]
  * use = #home
  * type = #both
  * line[+] = "1 RAVENSFIELD GARDENS"
  * city = "EPSOM"
  * district = "SURREY"
  * postalCode = "KT19 0ST"


* gender = #female

* contact.name.use = #official
* contact.name.family = "DAWKINS"
* contact.name.given = "Bob"
* contact.telecom.use = #mobile
* contact.telecom.value = "077021231231"
* contact.telecom.system = #phone
