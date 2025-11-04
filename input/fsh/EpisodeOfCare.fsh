Profile: EpisodeOfCare
Parent: https://fhir.hl7.org.uk/StructureDefinition/UKCore-EpisodeOfCare
Id: EpisodeOfCare
Description: "Merge of NHS England HL7 v2 ADT and UKCore-EpisodeOfCare"

* identifier MS
* identifier.value MS

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice based on the type"
* identifier ^slicing.ordered = false
* identifier contains
  VisitNumber 0..1 MS

* identifier[VisitNumber] only HospitalProviderSpellIdentifier
* identifier[VisitNumber] ^short = "Use to identify Problem/Condition Episode"
* identifier[VisitNumber] insert Obligation(#SHOULD:populate-if-known, https://nw-gmsa.github.io/ActorDefinition/OrderFiller)
* identifier[VisitNumber] insert Obligation(#SHALL:populate, https://nw-gmsa.github.io/ActorDefinition/OrderPlacer)
* identifier[VisitNumber] insert Obligation(#SHOULD:populate-if-known, https://nw-gmsa.github.io/ActorDefinition/AutomationManager)


