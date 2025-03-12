ValueSet: DocumentEntryType
Id: document-entry-type
Title: "DocumentEntry Type"
Description: """
- [Digital Health and Care Scotland - (EH4001) CLINICAL DOCUMENT INDEXING STANDARDS ](https://www.digihealthcare.scot/app/uploads/2024/05/CDI-Standard-V4.5-FINAL.pdf) LA Labs
"""
* ^experimental  = false

// * include codes from system $SCT where concept is-a "descendantOrSelfOf 4241000179101"

* $sct#1054161000000101 "Genetic report"
* $sct#4241000179101 "Laboratory report"
* $sct#721963009 "Order"
* $sct#721965002 "Laboratory order"
