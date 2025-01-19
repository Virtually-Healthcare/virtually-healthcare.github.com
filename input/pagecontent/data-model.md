
### Base Data Model 

<figure>
{%include entity-model-base.svg%}
<p id="fX.X.X.X-X" class="figureTitle">Base Clinical Data Repository Model</p>
</figure>
<br clear="all">

### Workflow extension



### References

- Patient 
  - [NHS England HL7 v2 ADT](HSCIC-ITK-HL7-V2-Message-Specifications.pdf) and [NHS England HL7 v2 ADT Reference Tables](HSCIC-ITK-HL7-V2-Reference-Tables.pdf). Examples:
    - [ADT_A28](ADT/A28_Example.txt) Add person information (Create Patient Event)
    - [ADT_A31](ADT/A31_example.txt) Update person information (Update Patient Event)
    - [ADT_A40](ADT/A40_Example.txt) Merge person information (Merge Patient Event)
- Encounter
  - [NHS England HL7 v2 ADT](HSCIC-ITK-HL7-V2-Message-Specifications.pdf) and [NHS England HL7 v2 ADT Reference Tables](HSCIC-ITK-HL7-V2-Reference-Tables.pdf). Examples:
    - [ADT_A05](ADT/A05_Example.txt) Pre-admit a patient (*Inpatient* Admission Notification Event)
    - [ADT_A01](ADT/A01_example.txt) Admit/visit notification (Admission/Visit Notification Event)
    - [ADT_A03](ADT/A03_example.txt) Discharge/end visit (Dischage/Visit End Notification Event)
    - [ADT_A04](ADT/A04_example.txt) Register a patient (*Outpatient* or *Emergency* Encounter (and Patient) Notification Event)
    - [ADT_A08](ADT/A08_example.txt) Update patient information (*Outpatient* or *Emergency* Encounter (and Patient) Updated Notification Event)
- Diagnostic Report, Observation Panel and Observation
  - [Digital Health and Care Wales Laboratory Report / Observation Result  - HL7 v2 ORU](DHCW-HL7v25-ORUR01-Specification.pdf). Examples:
    - [ORU_R01 Pathology Report](DHCW-Example-Pathology-Report-HL7v2ORU.txt)
    - [ORU_R01 Pathology Report with ranges and attachments](DHCW-Example-PathologyReport-withAttachementsAndRanges-HL7v2ORU.txt)
  - [Royal College of Radiologists Imaging Report - HL7 v2 ORU](https://www.rcr.ac.uk/media/wwtp2mif/rcr-publications_radiology-reporting-networks-understanding-the-technical-options_march-2022.pdf)
  - [NLM Newborn Screening LOINC Panel and Example HL7 Result Message](https://lhncbc.nlm.nih.gov/newbornscreeningcodes/nb/sc/constructingNBSHL7messages.html), this has detailed clinical coding (LOINC) and a good example of a panel.
- Document Reference
  - [IHE (Europe) Document Metadata](https://www.ihe-europe.net/sites/default/files/2017-11/IHE_ITI_XDS_Metadata_Guidelines_v1.0.pdf) section 3.2.3.2 (page 25)
  - [Digital Health and Care Scotland - (EH4001) CLINICAL DOCUMENT INDEXING STANDARDS ](https://www.digihealthcare.scot/app/uploads/2024/05/CDI-Standard-V4.5-FINAL.pdf)
  - Switzerland [CH MHD DocumentReference Comprehensive](https://build.fhir.org/ig/ehealthsuisse/ch-epr-fhir/StructureDefinition-ch-mhd-documentreference-comprehensive.html)

