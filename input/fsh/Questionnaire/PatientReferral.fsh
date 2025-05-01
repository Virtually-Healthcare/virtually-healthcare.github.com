Instance: PatientReferral
InstanceOf: Questionnaire
Title: "Patient Referral Form (Domain Archetype)"
Description: """
INITIAL VERSION

Based on a combination of eRS and BARS requirements plus selected elements from North West GMSA
"""
Usage:  #definition

* title = "Virtually Healthcare Patient Referral"
* status = #draft
* url = "https://fhir.virtually.healthcare/Questionnaire/PatientReferral"

* item[+]
  * linkId = "Patient"
  * text = "Patient"
  * type = #group
  * definition = "https://fhir.virtually.healthcare/StructureDefinition/Patient#Patient"

  * item[+]
    * type = #string
    * linkId = "LN/45394-4"
    * definition = "https://fhir.virtually.healthcare/StructureDefinition/Patient#Patient.name.family"
    * required = true
    * text = "Patient surname"
  * item[+]
    * type = #string
    * linkId = "LN/45392-8"
    * required = true
    * definition = "https://fhir.virtually.healthcare/StructureDefinition/Patient#Patient.name.given"
    * text = "Patient first name"
  * item[+]
    * type = #date
    * linkId = "LN/21112-8"
    * required = true
    * definition = "https://fhir.virtually.healthcare/StructureDefinition/Patient#Patient.birthDate"
    * text = "Date of birth"
  * item[+]
    * type = #group
    * linkId = "LN/56799-0"
    * definition = "https://fhir.virtually.healthcare/StructureDefinition/Patient#Patient.address"
    * text = "Address"
    * item[+]
      * type = #string
      * linkId = "HL7/PID-11-1"
      * definition = "https://fhir.virtually.healthcare/StructureDefinition/Patient#Patient.address.line"
      * repeats = true
      * text = "Address Line"
    * item[+]
      * type = #string
      * linkId = "HL7/PID-11-3"
      * definition = "https://fhir.virtually.healthcare/StructureDefinition/Patient#Patient.address.city"
      * text = "City"
    * item[+]
      * type = #string
      * linkId = "HL7/PID-11-"
      * definition = "https://fhir.virtually.healthcare/StructureDefinition/Patient#Patient.address.postalCode"
      * text = "Postcode"
  * item[+]
    * type = #choice
    * linkId = "LN/46098-0"
    * definition = "https://fhir.virtually.healthcare/StructureDefinition/Patient#Patient.gender"
    * text = "Sex registered at birth"
    * answerValueSet = "http://hl7.org/fhir/ValueSet/administrative-gender"
  * item[+]
    * type = #string
    * linkId = "LN/89061-6"
    * definition = "https://fhir.virtually.healthcare/StructureDefinition/Patient#Patient.identifier:nhsNumber"
    * text = "NHS Number"
  * item[+]
    * type = #string
    * linkId = "LN/76435-7"
    * text = "Hospital (EMIS/TPP) Number"
    * definition = "https://fhir.virtually.healthcare/StructureDefinition/Patient#Patient.identifier:MedicalRecordNumber"
    * required = true
  * item[+]
    * type = #string
    * linkId = "LN/42077-8"
    * text = "Phone"
    * definition = "https://fhir.virtually.healthcare/StructureDefinition/Patient#Patient.telecom"
  * item[+]
    * type = #string
    * linkId = "LN/76458-9"
    * text = "Email"
    * definition = "https://fhir.virtually.healthcare/StructureDefinition/Patient#Patient.telecom"
  * item[+]
    * type = #choice
    * linkId = "HL7/PD1-3"
    * text = "GP Surgery (ODS Code)"
    * definition = "https://fhir.virtually.healthcare/StructureDefinition/Patient#Patient.generalPractitioner"

* item[+]
  * linkId = "Episode/Patient Journey Id"
  * text = "Patient"
  * type = #group
  * definition = "https://fhir.virtually.healthcare/StructureDefinition/Encounter#Encounter"
  * item[+]
    * type = #string
    * linkId = "LN/56797-4"
    * text = "Stay/Problem Number"
    * definition = "https://fhir.virtually.healthcare/StructureDefinition/Encounter#Encounter.identifier.value"
    * required = false
  * item[+]
    * type = #date
    * linkId = "HL7/PV1-44"
    * text = "Start Date"
    * definition = "https://fhir.virtually.healthcare/StructureDefinition/Encounter#Encounter.period.start"
    * required = false

* item[+]
  * type = #group
  * linkId = "HL7/ORC-12"
  * definition = "https://fhir.virtually.healthcare/StructureDefinition/PractitionerRole#PractitionerRole"
  * text = "Healthcare Professional"
  * item[+]
    * type = #string
    * linkId = "LN/18705-4"
    * code[+] = $loinc#18705-4
    * required = true
    * definition = "https://fhir.virtually.healthcare/StructureDefinition/PractitionerRole#PractitionerRole.practitioner.display"
    * text = "Referring Clinician Name"
  * item[+]
    * type = #choice
    * linkId = "LN/18707-0"
    * definition = "https://fhir.virtually.healthcare/StructureDefinition/PractitionerRole#PractitionerRole.specialty.coding.code"
    * text = "Referring Clinician Current Speciality"
    * required = true
    * answerValueSet = "https://fhir.hl7.org.uk/ValueSet/UKCore-PracticeSettingCode"
  * item[+]
    * type = #string
    * linkId = "LN/46608-6"
    * definition = "https://fhir.virtually.healthcare/StructureDefinition/PractitionerRole#PractitionerRole.practitioner.identifier.value"
    * text = "Referring Clinician Professional Identifier"
    * required = true
  * item[+]
    * type = #string
    * linkId = "LN/89058-2"
    * code[+] = $loinc#89058-2 "Contact email address"
    * definition = "https://fhir.virtually.healthcare/StructureDefinition/PractitionerRole#PractitionerRole.telecom.value"
    * text = "Email"
  * item[+]
    * type = #string
    * linkId = "LN/81230-5"
    * definition = "https://fhir.virtually.healthcare/StructureDefinition/PractitionerRole#PractitionerRole.telecom.value"
    * text = "Phone"
  * item[+]
    * type = #string
    * linkId = "HL7/ORC-21"
    * definition = "https://fhir.virtually.healthcare/StructureDefinition/PractitionerRole#PractitionerRole.organization.identifier.value"
    * text = "Referring Organisation ODS Code"

* item[+]
  * type = #group
  * linkId = "HL7/OBR/ORC"
  * definition = "https://fhir.virtually.healthcare/StructureDefinition/ServiceRequest#ServiceRequest"
  * text = "Referral Details"
  * item[+]
    * type = #string
    * linkId = "HL7/OBR-2/ORC-2"
    * text = "Test request ID/Order ID"
    * definition = "https://fhir.virtually.healthcare/StructureDefinition/ServiceRequest#ServiceRequest.identifier:OriginatingReferralIdentifier"
    * required = false
    * readOnly = true
  * item[+]
    * type = #choice
    * linkId = "HL7/OBR-4"
    * text = "Referral code"
    * required = true
    * repeats = false
    * definition = "https://fhir.virtually.healthcare/StructureDefinition/ServiceRequest#ServiceRequest.code:BARSReferralCode"
  * item[+]
    * type = #choice
    * linkId = "HL7/DG1"
    * repeats = true
    * text = "Specific disease suspected/reason for testing"
    * answerValueSet = Canonical(VHConditionCode)
    * definition = "https://fhir.virtually.healthcare/StructureDefinition/ServiceRequest#ServiceRequest.reasonCode"

//.... 4.4	Provider Directory of Service Id	0..1	choice		Definition: ServiceRequest.performer.identifier.value
//.... 4.5	When the procedure should take place	0..1	group
//..... 4.5.1	Start Date	0..1	date		Definition: ServiceRequest.occurrencePeriod.start
//..... 4.5.2	End Date	0..1	date		Definition: ServiceRequest.occurrencePeriod.end
// 6	Triage Assessment Details	0..1	group
//... 7	Consent	0..1	group		Definition: Consent
//.... 7.1	Patient Consent for Referral and Sharing Data	0..1	boolean
