Profile:        NWAttachment
Parent:         http://hl7.org/fhir/StructureDefinition/Attachment
Id:             NWAttachment
Title:          "Attachment"
Description:     """
DRAFT: Additional conformance on FHIR Attachment data type. In HL7 FHIR this is likely to be a Binary resource and in HL7 v2 the OBX segment.
When laboratory reports include a url link in DiagnosticReport, the FHIR Bundle should also include a FHIR DocumentReference providing additional document metadata.
"""

* url ^short = "Uri where the data can be found. Mandatory for PDF or FHIR Documents"
* data ^short = "Avoid using for wider compatability reasons."
* contentType from DocumentEntryMimeType
