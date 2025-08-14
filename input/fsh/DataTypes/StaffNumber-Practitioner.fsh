Profile:        StaffEnterpriseNumber
Parent:         http://hl7.org/fhir/StructureDefinition/Identifier
Id:             Staff-Enterprise-Number
Title:          "Staff Enterprise Number"
Description:     """
[England Practitioner Identifier](StructureDefinition-PractitionerIdentifier.html) should take precedence over staff numbers (i.e. SDS User Id) in HL7 FHIR Reference and other interoperability standards.

E.g. SDS User ID and Ministry of Defence Doctor.
"""


* system 1..1
* system from StaffNumber
* value 1..1
* type.coding = $v2-0203#ESN (exactly)
* assigner ^short = "Assigning organisation, populate if known (i.e. X24/X26 for NHS England)"
* assigner.identifier only OrganisationCode
