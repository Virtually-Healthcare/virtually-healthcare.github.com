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
- Documents
  - [IHE (Europe) Document Metadata](https://www.ihe-europe.net/sites/default/files/2017-11/IHE_ITI_XDS_Metadata_Guidelines_v1.0.pdf) section 3.2.3.2 (page 25) includes UK content.
  - [Digital Health and Care Scotland - (EH4001) CLINICAL DOCUMENT INDEXING STANDARDS ](https://www.digihealthcare.scot/app/uploads/2024/05/CDI-Standard-V4.5-FINAL.pdf)


### Care Coordination Model

<figure>
{%include pcc-entity-model.svg%}
<p id="fX.X.X.X-X" class="figureTitle">Workflow Clinical Data Repository Model</p>
</figure>
<br clear="all">


