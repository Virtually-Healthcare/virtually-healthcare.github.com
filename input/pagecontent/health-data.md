
<img style="padding:3px;width:50%;" src="Health Analytics.drawio.png" alt="Health Data Pipeline"/>
<br clear="all">
<p class="figureTitle">Health Data Pipeline</p>  
<br clear="all">

## Structured Data Capture

Structured Data Capture (SDC) refers to a method of collecting and organizing data into a predefined, consistent format, making it easier to store, retrieve, analyze, and share. This approach uses standardized data elements, codes, and formats, ensuring that data can be easily exchanged across different systems and organizations.

### Key Characteristics of Structured Data Capture:

- **Predefined Structure:** Data is organized into specific fields or columns with defined purposes, like names, dates, addresses, or lab values.
- **Standardized Formats:** Data elements are captured using consistent formats and codes, ensuring uniformity and ease of interpretation.
- **Relational Databases:** Structured data is often stored in relational databases, which are designed to handle this type of organized data.
- **Easy Access and Analysis:** The structured format allows for quick querying, sorting, and analysis of the data using tools like SQL.
- **Data Integrity:** The predefined structure and formats help ensure data accuracy and consistency, which is crucial for reliable analysis and decision-making.
- **Interoperability:** Structured data can be easily exchanged and shared between different systems and organizations, as it follows a standardized format.
- **Examples:** In healthcare, structured data includes patient demographics, lab results, medication lists, and vital signs. In business, it includes customer information, sales data, and inventory records.

### Benefits of Structured Data Capture:

- **Efficiency:** Structured data is easier to store, retrieve, and analyze, leading to increased efficiency in data management.
- **Accuracy:** The predefined structure and formats help ensure data accuracy and consistency.
- **Interoperability:** Structured data can be easily exchanged and shared between different systems and organizations.
- **Scalability:** Structured data systems are designed to handle large volumes of data, making them scalable for growing organizations.
- **Improved Decision-Making:** Accurate and easily accessible data enables better decision-making in various fields.
- **Machine Learning:** Structured data is well-suited for machine learning applications, as the organized format makes it easier for algorithms to identify patterns and insights.

## Health Records and Clinical Data Repository 

A Clinical Data Repository (CDR) is a centralized, real-time database that aggregates and stores patient-centric health data from various sources, providing a unified view for clinicians, researchers, and other healthcare stakeholders.

### Purpose and Function:

- **Data Aggregation:** CDRs collect data from diverse sources, including electronic health records (EHRs), laboratory results, pathology reports, imaging data, and more.
- **Unified View:** They offer a single, comprehensive view of a patient's medical information, facilitating better care coordination and decision-making.
- **Support for Multiple Uses:** CDRs are designed to support a variety of applications, including clinical care, research, quality improvement, and population health management.
- **Not a Data Warehouse:** While sometimes referred to as a clinical data warehouse (CDW), a CDR is focused on individual patient data retrieval, whereas a data warehouse is designed for data analysis across populations.
- **Data Included:**
  - Patient Demographics: Age, gender, contact information, etc.
  - Medical History: Past illnesses, surgeries, allergies, etc.
  - Clinical Data: Lab results, radiology reports, pathology reports, etc.
  - Treatment History: Medications, procedures, diagnoses, etc.
  - Administrative Data: Insurance information, billing data, etc.
  - Clinical Trials Data: Information related to patient participation in clinical trials
  - Disease Registries: Data related to specific diseases or conditions
  - Health Surveys: Data collected from patient surveys
  - Hospital Admission, Discharge, and Transfer Dates: Information about patient movement within a healthcare system

### Benefits:

- **Improved Care Coordination:** Clinicians can access a complete picture of a patient's health history, leading to more informed decisions and better patient outcomes.
- **Enhanced Research:** Researchers can use the data in CDRs to conduct studies on disease patterns, treatment effectiveness, and other important areas.
- **Better Quality Improvement:** CDRs can help identify trends and patterns in patient care, enabling healthcare organizations to improve quality and efficiency.
- **Population Health Management:** CDRs can provide valuable data for monitoring population health trends and developing targeted interventions.
- **Continuity of Care:** CDRs support continuity of care across multiple settings, ensuring that patients receive consistent care regardless of where they seek treatment.

## Health Analytics and Clinical Data Warehouse
 
Health analytics involves using data analysis techniques to improve healthcare outcomes, optimize processes, and inform decision-making, encompassing areas like claims data, clinical data, and patient behaviors.
A Clinical Data Warehouse (CDW) is a key tool for health analytics.

### Definition:

Health analytics is the application of data analysis to healthcare data to gain insights and improve various aspects of the healthcare system. It will often use a Clinical Data Warehouse (CDW)

### Data Sources:

It utilizes data from various sources, including:

- **Claims and Cost Data:** Analyzing insurance claims, maximising QOF points and healthcare costs.
- **Pharmaceutical and Research and Development Data:** Examining drug efficacy, research outcomes, and development trends.
- **Clinical Data:** Studying patient records, medical procedures, and treatment outcomes.
- **Patient Behaviors and Preferences Data:** Understanding patient choices, adherence to treatment plans, and satisfaction levels.

### Applications:

Health analytics is used for a wide range of purposes, including:

- **Improving Patient Care:** Identifying opportunities to enhance patient experience, improve outcomes, and personalize treatment plans.
- **Optimizing Healthcare Processes:** Streamlining workflows, reducing costs, and improving efficiency in healthcare organizations.
- **Supporting Research and Development:** Analyzing data to identify new treatments, therapies, and preventative measures.
- **Informing Policy and Decision-Making:** Providing data-driven insights to guide healthcare policy and resource allocation.

### Types of Analytics:

- **Descriptive Analytics:** Summarizing past data to understand what has happened.
- **Diagnostic Analytics:** Identifying the reasons behind past events.
- **Predictive Analytics:** Forecasting future trends and outcomes.
- **Prescriptive Analytics:** Recommending actions to improve outcomes.

## Standards and Patterns

| Actors and Interactions        | Health Standards                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | Technical Patterns                                                                                                                                                                              | Health Data Definitions                                                                                                                                                                                                                                                                                                                                                  |
|--------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Structured Data Capture (SDC)  | - [HL7 Structured Data Capture](https://build.fhir.org/ig/HL7/sdc/)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      | resource, forms, documents and aggregates                                                                                                                                                       | [openEHR Clinical Knowledge Manager (CKM)](https://ckm.openehr.org/ckm/)                                                                                                                                                                                                                                                                                      |
| SDC and other sources to CDR   | - [HL7 v2 Events and Messages](https://en.wikipedia.org/wiki/Health_Level_7)<br/> - [FHIR RESTful](https://hl7.org/fhir/R4/http.html)<br/> - [FHIR Message](https://hl7.org/fhir/R4/messaging.html)<br/> - [FHIR Document](https://hl7.org/fhir/R4/documents.html)/[HL7 v3 Clinical Document Architecture (CDA)](https://en.wikipedia.org/wiki/Clinical_Document_Architecture) via [Health Document Sharing (XDS/MHDS)](patient-care-coordination.html)<br/> - email + pdf<br/><br/>  Primary Care <br/>    - [IM1 Transaction](https://digital.nhs.uk/developer/api-catalogue/interface-mechanism-1-standards)<br/>    - [GP Connect Send Document](https://simplifier.net/guide/gp-connect-send-document/Home)<br/> - [IM1 Bulk](https://digital.nhs.uk/developer/api-catalogue/interface-mechanism-1-standards) via Extract, Transform and Load (ETL) | [Events](https://en.wikipedia.org/wiki/Event_(computing)), [Messaging](https://en.wikipedia.org/wiki/Message) and [REST](https://en.wikipedia.org/wiki/REST) Inserts and Updates (POST and PUT) | [FHIR Profiles](https://hl7.org/fhir/R4/profiling.html)                                                                                                                                                                                                                                                                                                                  | 
| Clinical Data Repository (CDR) | - [HL7 Internation Patient Acccess (IPA)](https://build.fhir.org/ig/HL7/fhir-ipa/) FHIR RESTful<br/><br/>  Primary Care <br/>    - [IM1 Transaction](https://digital.nhs.uk/developer/api-catalogue/interface-mechanism-1-standards)<br/> - [GP Connect: Access Record](https://digital.nhs.uk/services/gp-connect/gp-connect-in-your-organisation/gp-connect-access-record)                                                                                                                                                                                                                                                                                                                                                                                                                                                                             | [Structured Query Lanaguage (SQL)](https://en.wikipedia.org/wiki/SQL) and [REST](https://en.wikipedia.org/wiki/REST) Queries (GET)                                                              | - [Professional Record Standards Body (PRSB)](https://theprsb.org/standards/) <br/> - [openEHR Clinical Knowledge Manager (CKM)](https://ckm.openehr.org/ckm/) <br/><br/> Clinical Coding <br/> - [SNOMED CT](https://www.england.nhs.uk/long-read/clinical-coding-snomed-ct/) <br/>- [LOINC](https://loinc.org/)                                                        |
| CDR to CDW                     |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          | [Extract, Transform and Load](https://en.wikipedia.org/wiki/Extract,_transform,_load)                                                                                                           |                                                                                                                                                                                                                                                                                                                                                                          | 
| Clinical Data Warehouse (CDW)  | [Observational Health Data Sciences and Informatics (OHDSI)](https://www.ohdsi.org/) includes OMOP                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       | [Structured Query Lanaguage (SQL)](https://en.wikipedia.org/wiki/SQL)                                                                                                                           | <br/><br/> Clinical Coding <br/> - [SNOMED CT](https://www.england.nhs.uk/long-read/clinical-coding-snomed-ct/) <br/>- [LOINC](https://loinc.org/) <br/> - [ICD-10](https://digital.nhs.uk/services/terminology-and-classifications/clinical-classifications) <br/> - [OPCS-4](https://digital.nhs.uk/services/terminology-and-classifications/clinical-classifications) |                                             | 

<figure>
{%include component-health-data.svg%}
<p id="fX.X.X.X-X" class="figureTitle">Health Data</p>
</figure>
<br clear="all">


