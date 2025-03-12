ValueSet: DocumentEntryMimeType
Id: document-entry-mimetype
Title: "DocumentEntry mimeType"
Description: """
- [Switzerland DocumentEntry.mimeType](https://fhir.ch/ig/ch-term/3.1.0/ValueSet-DocumentEntry.mimeType.html)
"""
* ^experimental  = false

* $bcp13#application/pdf "PDF"
* $bcp13#application/dicom "DICOM"
* $bcp13#application/fhir+json "FHIR (JSON)"
* $bcp13#application/fhir+xml "FHIR (XML)"
* $bcp13#image/jpeg "JPEG Image"
* $bcp13#image/png "PNG Portable Network Graphics"
