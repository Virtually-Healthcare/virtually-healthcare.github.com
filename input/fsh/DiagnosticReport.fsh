Profile: DiagnosticReport
Parent: https://fhir.hl7.org.uk/StructureDefinition/UKCore-DiagnosticReport
Id: DiagnosticReport
Description: """
Extension of [UKCore-UKCore-DiagnosticReport](https://simplifier.net/hl7fhirukcorer4/ukcore-diagnosticreport),
to include  Royal College of Radiologists (HL7 v2 ORU), Digital Health and Care Wales HL7 v2 ORU and [HL7 IPS DiagnosticReport](http://hl7.org/fhir/uv/ips/StructureDefinition/DiagnosticReport-uv-ips)
"""

* identifier 1..* MS
* identifier only CorrelationIdentifier

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

* effective[x] 1..1 MS
* effective[x] only dateTime

* performer 0..* MS
* performer only Reference(Practitioner)
* performer.reference 1..1
