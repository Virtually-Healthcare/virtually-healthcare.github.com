## Virtually Healthcare Health Information Exchange (HIE)

This guide documents the [canonical data model](https://www.enterpriseintegrationpatterns.com/patterns/messaging/CanonicalDataModel.html)/[domain model](https://martinfowler.com/eaaCatalog/domainModel.html) we use internally to meet general NHS requirements such as using:

- [UK SNOMED CT](https://digital.nhs.uk/services/terminology-and-classifications/snomed-ct) for our clinical terminology.
- [NHS Data Dictionary](https://www.datadictionary.nhs.uk/) for identifiers and values, such as NHS Number, GMC, GMP, ODS, etc. 
- [HL7 UK Core](https://simplifier.net/HL7FHIRUKCoreR4/)

We are also moving towards several international standards such as:

- [HL7 International Patient Access](https://build.fhir.org/ig/HL7/fhir-ipa/)
- [HL7 Structured Data Capture](https://build.fhir.org/ig/HL7/sdc/)
- [IHE Mobile Care Services Discovery (mCSD)](https://profiles.ihe.net/ITI/mCSD/volume-1.html)

The section on **adaptors** describes how we have interfaced to external systems, as we internally use a domain model we need to build an [Anti-Corruption-Layer](https://docs.aws.amazon.com/prescriptive-guidance/latest/cloud-design-patterns/acl.html) to convert external models to our domain model.

## SNOMED CT

UK edition of SNOMED (83821000000107)

### Dependencies

{% include dependency-table.xhtml %}

