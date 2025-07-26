## References

- [HL7 Europe Hospital Discharge Report](https://build.fhir.org/ig/hl7-eu/hdr/index.html)
- [International Patient Summary](https://build.fhir.org/ig/HL7/fhir-ips/index.html)
- [LOINC Consultation note - recommended C-CDA R1.1 sections](https://loinc.org/72231-4)

## Introduction

The consultation note forms the basis of `IM1 Consultation Writeback` and `GP Connect Send Document`. It is also related to the EMIS consultation screen sections and [PRSB section headings](https://theprsb.org/wp-content/uploads/2019/03/Guidance-on-specific-PRSB-sections-to-use.pdf).

 <img style="padding:3px;width:70%;" src="EMISConsultation.png" alt="EMIS Consultation"/>
<br clear="all">

### Overview

As composition is not for **data capture**, we need an archetype to form the high framework for the consulation-note.

The current model is shown below. Historically this is related to [SOAP Note](https://en.wikipedia.org/wiki/SOAP_note) and also [Nursing Process (ADPIE)](https://en.wikipedia.org/wiki/Nursing_process) which are also included for documentation purposes.

<figure>
{%include consultation-note-mindmap.svg%}
<p id="fX.X.X.X-X" class="figureTitle">Consultation Note Map</p>
</figure>
<br clear="all">

## Informatics Model

The consultation note consists of three main structures:

- composition which forms the main body of the consultation
- archetype/template, which are a templated set of questions that can be used during a consultation. It will often be referred to as a form, and it is primarily a data capture method. Examples include
    - [vital signs](Questionnaire-VitalSigns.html)
    - [daily physical activity](Questionnaire-DailyPhysicalActivity.html)
- resource entities, which are the data structures persisted in the clinical repository. The most common resource will be:
    - [Observation](StructureDefinition-Observation.html)

 <img style="padding:3px;width:70%;" src="ConsultationNote.drawio.png" alt="EMIS Consultation"/>
<br clear="all">

Both archetype/template and entities are **data capture** related and will often relate to a data entry screen within an application. Compositions provide a high-level structure to the consultation, but they are generally assembled from both archetype/templates and resource entities; it is a **data aggregate**.

Many questions within the archetype / template will be the same and also overlap with directly captured entities. I.e., in remote patient monitoring (virtual wards) a patient's weight, pulse rate and blood pressure can be captured from device data. These data items also exist in [vital signs](Questionnaire-VitalSigns.html).

> Where a template/archetype question may have multiple uses, it is persisted as a resource entity.

These questions will be SNOMED or LOINC coded.

## Composition & FHIR Document

The basic structure of a composition is shown above and detailed below, in its aggregated form which is typically how it is exchanged, it is known as a [FHIR Document]() and a redendered example is shown below:

> Examples
> - [FHIR Document EMIS IM1 Consultation Note 30 Jun 2002](Bundle-e119d231-def6-43a7-af40-56d7754977bd.html)
> - [FHIR Document EMIS IM1 Consultation Note 8 Nov 2024](Bundle-ab2539ee-fd55-4abc-9898-d4c1520dd2ba.html)


 <img style="padding:3px;width:40%;" src="FHIRDocument.png" alt="Example Document"/>
<br clear="all">

### Comosition.section - Document Section Codes

Each section is coded using Document Section Codes, which can be found [Value Set: Document Section Codes](https://hl7.org/fhir/R4/valueset-doc-section-codes.html).

> This is not required to be SNOMED CT coded.


| EMIS Document Section | LOINC Document Section Codes                                                                | PRSB Section Heading                                 | FHIR Observation category |
|-----------------------|---------------------------------------------------------------------------------------------|------------------------------------------------------|---------------------------|
| Care Plan             | [18776-5 Plan of care note](https://loinc.org/18776-5)                                      | Professional contacts<br/>Plan and requested actions |                           |
| Result                | [30954-2 Relevant diagnostic tests/laboratory data Narrative](https://loinc.org/30954-2)    | Investigation results                                | `laboratory`              |
| Examination           | [8716-3 Vital signs](https://loinc.org/8716-3)                                              | Observations<br/>Examination findings                | `vital-signs`             |
|                       | [29545-1 Physical examination](https://loinc.org/29545-1)                                      |                                                      | `exam`                    |
| Procedure             | [47519-4 History of procedures](https://loinc.org/47519-4)                                  |                                                      | `procedure`               |
| Allergy               | [48765-2 Allergies and adverse reactions Document](https://loinc.org/48765-2)               | Allergies and adverse reactions                      |                           |
| History               | [29762-2 Social history Narrative](https://loinc.org/29762-2)                               | Social context<br/>Educational history               | `social-history`          |
|                       | [10162-6 History of pregnancies Narrative](https://loinc.org/10162-6)                       |                                                      |                           |
| Test Request          | [42349-1 Reason for referral (narrative)](https://loinc.org/42349-1)                        | Referral details                                     |                           |
| Comment               | [61149-1 Objective Narrative](https://loinc.org/61149-1)                                    |                                                      |                           |
| Follow up             | [18776-5 Plan of treatment (narrative)](https://loinc.org/18776-5)                          |                                                      |                           |
| Family History        | [10157-6 History of family member diseases Narrative](https://loinc.org/10157-6)            | Family history                                       |                           |
| Medication            | [10160-0 History of medication use Narrative](https://loinc.org/10160-0)                    | Medications and medical devices                      |                           |
| Problem               | [11450-4 Problem list - Reported](https://loinc.org/11450-4)                                | Problem list                                         |                           |
| Document              |                                                                                             |                                                      |                           |         
| N/a                   | [81338-6 Goals, preferences, and priorities for care experience](https://loinc.org/81338-6) |                                                      |                           |
| N/a                   | [11369-6 Immunization](https://loinc.org/11369-6)                                           | Vaccinations                                         |                           |
| N/a                   | [51848-0 Assessment](https://loinc.org/72231-4/panel#64371) | Clinical risk factors                                                     | `survey`                   |


