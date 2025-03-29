Profile: ServiceRequest
Parent: https://fhir.hl7.org.uk/StructureDefinition/UKCore-ServiceRequest
Id: ServiceRequest
Description: """
Extension of [UKCore-ServiceRequest](https://simplifier.net/hl7fhirukcorer4/ukcore-servicerequest)
plus requirements present in [NHS England - e-Referral Service - FHIR API](https://digital.nhs.uk/developer/api-catalogue/e-referral-service-fhir) and
and [NHS England - Booking and Referral Standard](https://simplifier.net/guide/nhsbookingandreferralstandard)

"""

* extension[additionalContact] ^short = "Do not use, not supported. Use CareTeam instead."

* identifier 0..* MS
* identifier only CorrelationIdentifier

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice based on the type"
* identifier ^slicing.ordered = false
* identifier contains
  OriginatingReferralIdentifier 0..1 MS

* identifier[OriginatingReferralIdentifier] only OriginatingReferralIdentifier
* identifier[OriginatingReferralIdentifier] ^short = "Identifier assigned by the Referrer. (HL7 v2 RF1-6 Originating Referral Identifier)"
* identifier[OriginatingReferralIdentifier] insert Obligation(#SHOULD:populate-if-known, https://fhir.virtually.healthcare/ActorDefinition/ReferralRecipient)
* identifier[OriginatingReferralIdentifier] insert Obligation(#SHALL:populate, https://fhir.virtually.healthcare/ActorDefinition/ReferralInitiator)

* code 1..1
* code ^short = "What is being requested/ordered. (HL7 v2 RF1-3 Referral Type)"

* code.coding 1..* MS
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding ^slicing.description = "Slice based on the system"
* code.coding ^slicing.ordered = false
* code.coding contains
  PatientReferralSCT 1..1 MS

* code.coding[PatientReferralSCT] ^short = "Patient Referral Type UK SNOMED CT"
* code.coding[PatientReferralSCT] from PatientReferral (extensible)
* code.coding[PatientReferralSCT].system = $sct

* category 1..* MS
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "coding.system"
* category ^slicing.rules = #open
* category ^slicing.description = "Slice based on the coding.system"
* category ^slicing.ordered = false
* category contains
  PatientReferral 1..1 MS

* category[PatientReferral].coding.code = #3457005
* category[PatientReferral].coding.system = $sct

* category[genomicsWholeCaseSequencing] 0..0

* subject only Patient
* subject.reference 0..1 MS
* subject.identifier only NHSNumber

* basedOn 0..* MS
* basedOn only Reference(ServiceRequest)
* basedOn.identifier only CorrelationIdentifier

* encounter 0..1 MS
* encounter only Reference(Encounter)
* encounter.identifier ^short = "Episode or Stay ID (HL7 v2 PV1-19 Visit Number)"
* encounter.identifier only VisitNumber
* encounter.identifier insert Obligation(#SHALL:populate-if-known, https://fhir.virtually.healthcare/ActorDefinition/ReferralInitiator)
* encounter.identifier insert Obligation(#SHALL:populate-if-known, https://fhir.virtually.healthcare/ActorDefinition/ReferralRecipient)

* performer 1..* MS
* performer only Reference(Practitioner or PractitionerRole or Organization or HealthcareService)

* performer ^slicing.discriminator.type = #value
* performer ^slicing.discriminator.path = "type"
* performer ^slicing.rules = #open
* performer ^slicing.description = "Slice based on the type"
* performer ^slicing.ordered = false
* performer contains
  Clinician 0..1 MS and Service 0..1 MS

* performer[Clinician].type = "Practitioner"
* performer[Clinician] only Reference(Practitioner)
* performer[Clinician].identifier 0..1 MS
* performer[Clinician].identifier only EnglandPractitionerIdentifier
* performer[Service].type = "HealthcareService"
* performer[Service] only Reference(HealthcareService)
* performer[Service].identifier 0..1 MS
* performer[Service].identifier only EnglandServiceIdentifier


* supportingInfo 0..* MS
* supportingInfo only Reference(ObservationPanel or Observation or DiagnosticReport or DocumentReference or Consent)

* supportingInfo ^slicing.discriminator.type = #value
* supportingInfo ^slicing.discriminator.path = "type"
* supportingInfo ^slicing.rules = #open
* supportingInfo ^slicing.description = "Slice based on the coding.system"
* supportingInfo ^slicing.ordered = false
* supportingInfo contains
  ReferralLetter 0..1 MS

* supportingInfo[ReferralLetter] only Reference(DocumentReference)
* supportingInfo[ReferralLetter].type = #DocumentReference
