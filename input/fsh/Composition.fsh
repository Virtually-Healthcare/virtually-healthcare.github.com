Profile: Composition
Parent: http://hl7.org/fhir/StructureDefinition/Composition
Id: Composition
Description: """
Merge of PRSB Section Headers, NHS England [Transfer of Care - Outpatient Letter](https://developer.nhs.uk/apis/itk3tocoutpatientletter-2-9-0/explore_headings.html) and [HL7 International Patient Summary](https://build.fhir.org/ig/HL7/fhir-ips/index.html)
Not following UKCore-Composition due to coding issues around section.code.
"""

* subject 1..1
* subject.reference 1..1
* subject only Reference(Patient)
* subject.identifier only NHSNumber
* relatesTo.target[x] only Identifier or Reference(Composition)
* custodian.identifier only OrganisationCode

* section 1.. MS
* section.text 1.. MS
* section.section ..0
* section.title 1..1
* section.code 1..1
* section.code from http://hl7.org/fhir/ValueSet/doc-section-codes
* section.code.coding 1..*
* section.code.coding.system 1..1
* section.code.coding.code 1..1


* section ^slicing.discriminator[0].type = #value
* section ^slicing.discriminator[=].path = "code"
* section ^slicing.ordered = false
* section ^slicing.rules = #open
* section ^short = "Sections composing the IPS"
* section ^definition = "The root of the sections that make up the IPS composition."
* section.text 1.. MS
* section.section ..0
* section contains
    sectionMedications 0..* MS and
    sectionAllergies 0..* MS and
    sectionProblems 0..* MS and
    sectionProceduresHx 0..* MS and
    sectionImmunizations 0..* MS and
    sectionMedicalDevices 0..* MS and
    sectionResults 0..* MS and
    sectionVitalSigns 0..* and
    sectionPastIllnessHx 0..* and
    sectionFunctionalStatus 0..* and
    sectionPlanOfCare 0..* and
    sectionSocialHistory 0..* and
    sectionPregnancyHx 0..* and
    sectionAdvanceDirectives 0..* and
    sectionAlerts 0..* and
    sectionPatientStory 0..*

* section[sectionMedications] ^short = "IPS Medication Summary Section"
* section[sectionMedications] ^definition = "The medication summary section contains a description of the patient's medications relevant for the scope of the patient summary.\r\nThe actual content could depend on the jurisdiction, it could report:\r\n- the currently active medications; \r\n- the current and past medications considered relevant by the authoring GP; \r\n- the patient prescriptions or dispensations automatically extracted by a regional or a national EHR.\r\n\r\nIn those cases medications are documented in the Patient Summary as medication statements or medication requests.\r\nThis section requires either an entry indicating the subject is known not to be on any relevant medication; either an entry indicating that no information is available about medications; or entries summarizing the subject's relevant medications."
* section[sectionMedications].title 1.. MS
* section[sectionMedications].title ^short = "Medication Summary section"
* section[sectionMedications].title ^definition = "The label for this particular section.  This will be part of the rendered content for the document, and is often used to build a table of contents.\r\n\r\nMedication Summary "
* section[sectionMedications].code 1..
* section[sectionMedications].code = $loinc#10160-0


* section[sectionAllergies] ^short = "IPS Allergies and Intolerances Section"
* section[sectionAllergies] ^definition = "This section documents the relevant allergies or intolerances (conditions) for that patient, describing the kind of reaction (e.g. rash, anaphylaxis,..); preferably the agents that cause it; and optionally the criticality and the certainty of the allergy.\r\nAt a minimum, it should list currently active and any relevant historical allergies and adverse reactions.\r\nIf no information about allergies is available, or if no allergies are known this should be clearly documented in the section."
* section[sectionAllergies].title 1.. MS
* section[sectionAllergies].code 1..
* section[sectionAllergies].code = $loinc#48765-2

* section[sectionProblems] ^short = "IPS Problems Section"
* section[sectionProblems] ^definition = "The IPS problem section lists and describes clinical problems or conditions currently being monitored for the patient."
* section[sectionProblems].title 1.. MS
* section[sectionProblems].code 1..
* section[sectionProblems].code = $loinc#11450-4

* section[sectionProceduresHx] ^short = "IPS History of Procedures Section"
* section[sectionProceduresHx] ^definition = "The History of Procedures Section contains a description of the patient past procedures that are pertinent to the scope of this document.\r\nProcedures may refer for example to:\r\n1. Invasive Diagnostic procedure:e.g. Cardiac catheterization; (the results of these procedure are documented in the results section)\r\n2. Therapeutic procedure: e.g. dialysis;\r\n3. Surgical procedure: e.g. appendectomy"
* section[sectionProceduresHx].title 1.. MS
* section[sectionProceduresHx].code 1..
* section[sectionProceduresHx].code = $loinc#47519-4

* section[sectionImmunizations] ^short = "IPS Immunizations Section"
* section[sectionImmunizations] ^definition = "The Immunizations Section defines a patient's current immunization status and pertinent immunization history.\r\nThe primary use case for the Immunization Section is to enable communication of a patient's immunization status.\r\nThe section includes the current immunization status, and may contain the entire immunization history that is relevant to the period of time being summarized."
* section[sectionImmunizations].title 1.. MS
* section[sectionImmunizations].code 1..
* section[sectionImmunizations].code = $loinc#11369-6

* section[sectionMedicalDevices] ^short = "IPS Medical Devices Section"
* section[sectionMedicalDevices] ^definition = "The medical devices section contains narrative text and coded entries describing the patient history of medical device use."
* section[sectionMedicalDevices].title 1.. MS
* section[sectionMedicalDevices].code 1..
* section[sectionMedicalDevices].code = $loinc#46264-8

* section[sectionResults] ^short = "IPS Results Section"
* section[sectionResults] ^definition = "This section assembles relevant observation results collected on the patient or produced on in-vitro biologic specimens collected from the patient. Some of these results may be laboratory results, others may be anatomic pathology results, others, radiology results, and others, clinical results."
* section[sectionResults].title 1.. MS
* section[sectionResults].code 1..
* section[sectionResults].code = $loinc#30954-2

* section[sectionVitalSigns] ^label = "Vital signs"
* section[sectionVitalSigns] ^short = "IPS Vital Signs Section"
* section[sectionVitalSigns] ^definition = "The Vital signs section includes blood pressure, body temperature, heart rate, and respiratory rate. It may also include other clinical findings, such as height, weight, body mass index, head circumference, and pulse oximetry. In particular, notable vital signs or physical findings such as the most recent, maximum and/or minimum, baseline, or relevant trends may be included"
* section[sectionVitalSigns].title 1..
* section[sectionVitalSigns].code 1..
* section[sectionVitalSigns].code = $loinc#8716-3

* section[sectionPastIllnessHx] ^short = "IPS History of Past Illness Section"
* section[sectionPastIllnessHx] ^definition = "The History of Past Illness section contains a description of the conditions the patient suffered in the past."
* section[sectionPastIllnessHx].title 1..
* section[sectionPastIllnessHx].code 1..
* section[sectionPastIllnessHx].code = $loinc#11348-0

* section[sectionFunctionalStatus] ^short = "IPS Functional Status"
* section[sectionFunctionalStatus] ^definition = "The functional status section shall contain a narrative description of capability of the patient to perform acts of daily living, including possible needs of the patient to be continuously assessed by third parties. The invalidity status may in fact influence decisions about how to administer treatments.\r\nProfiles to express disabilities and functional assessments will be specified by future versions of this guide."
* section[sectionFunctionalStatus].title 1..
* section[sectionFunctionalStatus].code 1..
* section[sectionFunctionalStatus].code = $loinc#47420-5

* section[sectionPlanOfCare] ^short = "IPS Plan of Care Section"
* section[sectionPlanOfCare] ^definition = "The plan of care section contains a narrative description of the expectations for care including proposals, goals, and order requests for monitoring, tracking, or improving the condition of the patient."
* section[sectionPlanOfCare].title 1..
* section[sectionPlanOfCare].code 1..
* section[sectionPlanOfCare].code = $loinc#18776-5

* section[sectionSocialHistory] ^short = "IPS Social History Section"
* section[sectionSocialHistory] ^definition = "The social history section contains a description of the person’s Health related \"lifestyle factors\" or \"lifestyle observations\" (e.g. smoke habits; alcohol consumption; diets, risky habits.)"
* section[sectionSocialHistory].title 1..
* section[sectionSocialHistory].code 1..
* section[sectionSocialHistory].code = $loinc#29762-2

* section[sectionPregnancyHx] ^short = "IPS History of Pregnancy Section"
* section[sectionPregnancyHx] ^definition = "The history of pregnancy section shall contain information about whether the patient is currently pregnant or not.\r\nIt may contain addition summarizing information about the outcome of earlier pregnancies."
* section[sectionPregnancyHx].title 1..
* section[sectionPregnancyHx].code 1..
* section[sectionPregnancyHx].code = $loinc#10162-6

* section[sectionAdvanceDirectives] ^short = "IPS Advance Directives Section"
* section[sectionAdvanceDirectives] ^definition = "The advance directives section contains a narrative description of patient's advance directive."
* section[sectionAdvanceDirectives].title 1..
* section[sectionAdvanceDirectives].code 1..
* section[sectionAdvanceDirectives].code = $loinc#42348-3

* section[sectionAlerts] ^short = "IPS Alerts Section"
* section[sectionAlerts] ^definition = "The alerts section flags potential concerns and/or dangers to/from the patient and may also include obstacles to care."
* section[sectionAlerts].title 1..
* section[sectionAlerts].code 1..
* section[sectionAlerts].code = $loinc#104605-1

* section[sectionPatientStory] ^short = "IPS Patient Story Section"
* section[sectionPatientStory] ^definition = "The section contains narrative text along with optional resources that express what matters to a patient. This may include needs, strengths, values, concerns and preferences to others providing support and care. The patient’s story, provided here, may be told by the patient or by a proxy."
* section[sectionPatientStory].title 1..
* section[sectionPatientStory].code 1..
* section[sectionPatientStory].code = $loinc#81338-6
* section[sectionPatientStory].entry ^short = "Patient Story resources."
* section[sectionPatientStory].entry ^definition = "Contains resources to support the Patient Story. Instances of DocumentReference or any other suitable resource type may be used."
