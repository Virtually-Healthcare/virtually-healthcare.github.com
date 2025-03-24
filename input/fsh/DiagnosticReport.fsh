Profile: DiagnosticReport
Parent: https://fhir.hl7.org.uk/StructureDefinition/UKCore-DiagnosticReport
Id: DiagnosticReport
Description: """
Extension of [UKCore-UKCore-DiagnosticReport](https://simplifier.net/hl7fhirukcorer4/ukcore-diagnosticreport),
to include  Royal College of Radiologists (HL7 v2 ORU), Digital Health and Care Wales HL7 v2 ORU and [HL7 IPS DiagnosticReport](http://hl7.org/fhir/uv/ips/StructureDefinition/DiagnosticReport-uv-ips)
"""

* identifier 1..* MS
* identifier only CorrelationIdentifier

* basedOn only CodeableReference
* basedOn.identifier 1..1 MS
* basedOn.identifier only CorrelationIdentifier

* basedOn ^slicing.discriminator.type = #value
* basedOn ^slicing.discriminator.path = "identifier.type"
* basedOn ^slicing.rules = #open
* basedOn ^slicing.description = "Slice based on the type"
* basedOn ^slicing.ordered = false
* basedOn contains
  OriginatingReferralIdentifier 0..1 MS

* basedOn[OriginatingReferralIdentifier] ^short = "Identifier assigned by the referrer"
* basedOn[OriginatingReferralIdentifier].type 1..1 MS
* basedOn[OriginatingReferralIdentifier].type = "ServiceRequest"
* basedOn[OriginatingReferralIdentifier].identifier 1..1
* basedOn[OriginatingReferralIdentifier].identifier only OriginatingReferralIdentifier

* code.coding ^slicing.discriminator[0].type = #value
* code.coding ^slicing.discriminator[=].path = "system"
* code.coding ^slicing.ordered = false
* code.coding ^slicing.rules = #closed
* code.coding contains
    SNOMED 0..* MS and
    LOINC 0..*
* code.coding[SNOMED] from https://fhir.hl7.org.uk/ValueSet/UKCore-ReportCode (extensible)
* code.coding[SNOMED].system = $sct
* code.coding[LOINC] from http://hl7.org/fhir/ValueSet/report-codes (extensible)
* code.coding[LOINC].system = $loinc

* subject.reference 1..1 MS
* subject.identifier only NHSNumber

* encounter 0..1 MS
* encounter only Reference(Encounter)
* encounter.identifier ^short = "Episode or Stay ID (HL7 v2 PV1-19 Visit Number)"
* encounter.identifier only VisitNumber
* encounter.identifier insert Obligation(#SHALL:populate-if-known, https://fhir.virtually.healthcare/ActorDefinition/ReferralInitiator)
* encounter.identifier insert Obligation(#SHALL:populate-if-known, https://fhir.virtually.healthcare/ActorDefinition/ReferralRecipient)


* effective[x] 1..1 MS
* effective[x] only dateTime

* performer 0..* MS
* performer only Reference(Practitioner)
//* performer.reference 1..1

* conclusion 0..1 MS
* conclusionCode 0..* MS
* presentedForm 0..* MS
