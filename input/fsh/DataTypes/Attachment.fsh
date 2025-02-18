Profile:        Attachment
Parent:         http://hl7.org/fhir/StructureDefinition/Attachment
Id:             Attachment
Title:          "Attachment"
Description:     """
DRAFT: Additional conformance on FHIR Attachment data type. In HL7 FHIR this is likely to be a Binary resource and in HL7 v2 the OBX segment.
"""

* url ^short = "Uri where the data can be found. Mandatory if data not populated"
* data ^short = "Data inline, base64ed. Mandatory if url not populated"
