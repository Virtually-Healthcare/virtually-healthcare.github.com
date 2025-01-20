
### Referral Model 

The traditional data model is on a union of data requirements extracted from a series of HL7 v2 and IHE XDS interoperability specifications (see [references](#references)) and so has a base on existing data flows. 

<figure>
{%include entity-model-traditional.svg%}
<p id="fX.X.X.X-X" class="figureTitle">Traditional Clinical Data Repository Model</p>
</figure>
<br clear="all">

### Clinical Record and Workflow Model

<figure>
{%include entity-model-workflow.svg%}
<p id="fX.X.X.X-X" class="figureTitle">Workflow Clinical Data Repository Model</p>
</figure>
<br clear="all">


### References

- Patient Administration
  - Patient 
    - [NHS England HL7 v2 ADT](NHS/HSCIC-ITK-HL7-V2-Message-Specifications.pdf) and [NHS England HL7 v2 ADT Reference Tables](NHS/HSCIC-ITK-HL7-V2-Reference-Tables.pdf). Examples:
      - [ADT_A28](ADT/A28_Example.txt) Add person information (Create Patient Event)
      - [ADT_A31](ADT/A31_example.txt) Update person information (Update Patient Event)
      - [ADT_A40](ADT/A40_Example.txt) Merge person information (Merge Patient Event)
  - Encounter
    - [NHS England HL7 v2 ADT](NHS/HSCIC-ITK-HL7-V2-Message-Specifications.pdf) and [NHS England HL7 v2 ADT Reference Tables](NHS/HSCIC-ITK-HL7-V2-Reference-Tables.pdf). Examples:
      - [ADT_A05](ADT/A05_Example.txt) Pre-admit a patient (*Inpatient* Admission Notification Event)
      - [ADT_A01](ADT/A01_example.txt) Admit/visit notification (Admission/Visit Notification Event)
      - [ADT_A03](ADT/A03_example.txt) Discharge/end visit (Dischage/Visit End Notification Event)
      - [ADT_A04](ADT/A04_example.txt) Register a patient (*Outpatient* or *Emergency* Encounter (and Patient) Notification Event)
      - [ADT_A08](ADT/A08_example.txt) Update patient information (*Outpatient* or *Emergency* Encounter (and Patient) Updated Notification Event)
- Reports 
  - Laboratory Reports
    - [Digital Health and Care Wales Laboratory Report / Observation Result  - HL7 v2 ORU](NHS/DHCW-HL7v25-ORUR01-Specification.pdf). Examples:
      - [ORU_R01 Pathology Report](ORU/DHCW-Example-Pathology-Report-HL7v2ORU.txt)
      - [ORU_R01 Pathology Report with ranges and attachments](ORU/DHCW-Example-PathologyReport-withAttachementsAndRanges-HL7v2ORU.txt)
    - [Royal College of Radiologists Imaging Report - HL7 v2 ORU](https://www.rcr.ac.uk/media/wwtp2mif/rcr-publications_radiology-reporting-networks-understanding-the-technical-options_march-2022.pdf)
    - [NLM Newborn Screening LOINC Panel and Example HL7 Result Message](https://lhncbc.nlm.nih.gov/newbornscreeningcodes/nb/sc/constructingNBSHL7messages.html), this has detailed clinical coding (LOINC) and a good example of a panel.
- Documents
  - [IHE (Europe) Document Metadata](https://www.ihe-europe.net/sites/default/files/2017-11/IHE_ITI_XDS_Metadata_Guidelines_v1.0.pdf) section 3.2.3.2 (page 25) includes UK content.
  - [Digital Health and Care Scotland - (EH4001) CLINICAL DOCUMENT INDEXING STANDARDS ](https://www.digihealthcare.scot/app/uploads/2024/05/CDI-Standard-V4.5-FINAL.pdf)
  - Kettering XML
    - [EDT Message Specification](kettering/EDT_Message_Specification_v3.0.7.pdf) pdf
    - [Kettering Format in vision](kettering/Kettering_Format_Messages_in_Vision.pdf) pdf
    - [Kettering Example XML file](kettering/KetteringExample.xml) xml
