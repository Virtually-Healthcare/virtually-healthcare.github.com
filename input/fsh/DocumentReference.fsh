Profile:        DocumentReference
Parent:         https://fhir.hl7.org.uk/StructureDefinition/UKCore-DocumentReference
Id:             DocumentReference
Title:          "DocumentReference"
Description:    """
Based on UK Definitions from [IHE Europe Metadata for exchange medical documents and images](https://www.ihe-europe.net/sites/default/files/2017-11/IHE_ITI_XDS_Metadata_Guidelines_v1.0.pdf)
"""

* identifier 1..* MS
* identifier only CorrelationIdentifier

* type from DocumentEntryType
* category from DocumentEntryClass

* content.attachment only NWAttachment

* context.facilityType from FacilityType
* context.practiceSetting from Specialty

* context.sourcePatientInfo.identifier only MedicalRecordNumber

* context.event ^short = "The procedure or test code associated with the Accession Number (e.g. NICIP, Genomic Test Directory, etc.)"

* context.encounter 0..1 MS
* context.encounter only Reference(Encounter)
* context.encounter.identifier only VisitNumber

* context.related 0..*

* context.related ^slicing.discriminator.type = #pattern
* context.related ^slicing.discriminator.path = "identifier.type"
* context.related ^slicing.rules = #open
* context.related ^slicing.description = "Slice based on the type"
* context.related ^slicing.ordered = false

* context.related contains
  OriginatingReferralIdentifier 0..1 MS
* context.related[OriginatingReferralIdentifier] only Reference(ServiceRequest)
* context.related[OriginatingReferralIdentifier].type 1..1 MS
* context.related[OriginatingReferralIdentifier].type = "ServiceRequest"
* context.related[OriginatingReferralIdentifier].identifier 1..1
* context.related[OriginatingReferralIdentifier].identifier only OriginatingReferralIdentifier

* context.sourcePatientInfo only Reference(Patient)
* context.sourcePatientInfo.identifier only MedicalRecordNumber

* subject 1..1
* subject only Reference(Patient)
* subject.identifier only NHSNumber

* author only Reference(Practitioner)
* author.identifier only EnglandPractitionerIdentifier
* author 1..1 MS

* custodian 0..1 MS
* custodian.identifier only OrganisationCode


