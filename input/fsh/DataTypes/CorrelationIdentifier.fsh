Profile:        CorrelationIdentifier
Parent:         http://hl7.org/fhir/StructureDefinition/Identifier
Id:             CorrelationIdentifier
Title:          "Correlation Identifier"
Description:     """
See [Enterprise Integration Patterns - Correlation Identifier](https://www.enterpriseintegrationpatterns.com/patterns/messaging/CorrelationIdentifier.html) and  [Rule 3: Reference Other Aggregates by Identity (Implementing Domain Driven Design)](https://www.archi-lab.io/infopages/ddd/aggregate-design-rules-vernon.html#rule-3-reference-other-aggregates-by-identity)
"""

* ^purpose = """
This relates directly to HL7 v2 Data Types

#### [EI - Entity Identifier](https://hl7-definition.caristix.com/v2/HL7v2.5.1/DataTypes/EI)

The `EI.2 - Namespace Id` (FHIR Identifier.assigner.value)  should be an ODS code. E.g. ORC segment (extract)

```
ORC|RE|ABC123^ROA|XYZ789^699X0
```

where ROA is the ODS code for Manchester University NHS Foundation Trust and 699XO is the ODS code from NW Region GLH

#### [CX - Extended Composite ID with Check Digit](https://hl7-definition.caristix.com/v2/HL7v2.5.1/DataTypes/CX)

The 'CX.6 - Assigning Facility' (FHIR Identifier.assigner.value) should be an ODS code. E.g. ORC segment (extract)

```
PID|1||EPI1234^^^MR^ROA||Doe^John^Michael^Mr.||19800101|123 Main St^Anytown^CA^12345||555-1234||S||ABC123|987654321|M
```

where ROA is the ODS code for Manchester University NHS Foundation Trust
"""

* type 0..1 MS
* system ^short = "uri is defined by supplying organisation."
* value 1..1 MS

* assigner 1..1 MS
* assigner.identifier 1..1 MS
* assigner.identifier.value 1..1 MS
* assigner.identifier.system 1..1 MS
* assigner.identifier.system = $ods-code
