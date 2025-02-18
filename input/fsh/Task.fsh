Profile: Task
Parent: http://hl7.org/fhir/StructureDefinition/Task
Id: Task
Description: "Based on [FHIR Workflow](https://hl7.org/fhir/R4/workflow.html)"

* code 1..1
* code ^short = "[HL7 Task Codes](https://hl7.org/fhir/valueset-task-code.html) or UK SNOMED CT Procedure (`action`) code"
* note MS
* for 1..1 MS
* for.identifier only NHSNumber
* requester MS
* owner MS
* focus MS
