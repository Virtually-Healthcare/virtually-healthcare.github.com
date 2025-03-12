Profile:        AccessionNumber
Parent:         CorrelationIdentifier
Id:             AccessionNumber
Title:          "Accession Number"
Description:     """
Usually assigned by the order filler.
"""

* ^purpose = """
| Data Item | Standard | Data Type | Value |
|----------|-------|-------|-------|
| |HL7 FHIR | Identifier.value | {value} |
| |IHE XDS  | DocumentEntry.referenceIdList | {value} using HL7 v2 CX format? |
|  | HL7 v2  | CX.1 | {value} |
| Identifier type | HL7 v2 | CX.5 | ACSN |
|  |HL7 FHIR | Identifier.type | http://terminology.hl7.org/CodeSystem/v2-0203#ACSN |
| Assigning Facility | HL7 v2  | CX.6 | ODS Code |
| | HL7 FHIR | Identifier.assigner.identifier | https://fhir.nhs.uk/Id/ods-organization-code#{ODS Code} |
"""

* type = $v2-0203#ACSN
* system ^short = "uri should be defined and unique supplying organisation."
* value 1..1
