Profile:        AccessionNumber
Parent:         CorrelationIdentifier
Id:             AccessionNumber
Title:          "Accession Number"
Description:     """
- **NHS Data Model and Dictionary** nil, see also [RADIOLOGICAL ACCESSION NUMBER](https://www.datadictionary.nhs.uk/data_elements/radiological_accession_number.html)
- **HL7 v2** Accession ID (SPM-30)
- **IHE XDS** referenceIdList

Uniquely identifies a Specimen across multiple laboratory systems.
"""

* ^purpose = ""

* type = $v2-0203#ACSN
* system ^short = "uri should be defined and unique supplying organisation."
* value 1..1
