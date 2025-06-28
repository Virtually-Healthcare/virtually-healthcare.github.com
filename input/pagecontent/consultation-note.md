## References

- [HL7 Europe Hospital Discharge Report](https://build.fhir.org/ig/hl7-eu/hdr/index.html)
- [International Patient Summary](https://build.fhir.org/ig/HL7/fhir-ips/index.html)

## Introduction

The consultation note forms the basis of `IM1 Consultation Writeback` and `GP Connect Send Document`. It is also related to the EMIS consultation screen sections and [PRSB section headings](https://theprsb.org/wp-content/uploads/2019/03/Guidance-on-specific-PRSB-sections-to-use.pdf).

 <img style="padding:3px;width:70%;" src="EMISConsultation.png" alt="EMIS Consultation"/>
<br clear="all">

It is also related to LOINC Document Section Codes, which can be found [Value Set: Document Section Codes](https://hl7.org/fhir/R4/valueset-doc-section-codes.html).

> This is not required to be SNOMED CT coded.

| EMIS Document Section | LOINC Document Section Codes                                                                | PRSB Section Heading                                                       | FHIR Observation category |
|-----------------------|---------------------------------------------------------------------------------------------|----------------------------------------------------------------------------|---------------------------|
| Care Plan             | [18776-5 Plan of care note](https://loinc.org/18776-5)                                      | <ul><li>Professional contacts</li><li>Plan and requested actions</li></ul> |                           |
| Result                | [30954-2 Relevant diagnostic tests/laboratory data Narrative](https://loinc.org/30954-2)    | Investigation results                                                      | `laboratory`              |
| Examination           | [8716-3 Vital signs](https://loinc.org/8716-3)                                              | Observations<br/>Examination findings                           | `vital-signs`             |
|                       | [47420-5 Functional Status](https://loinc.org/47420-5)                                      |                                                                            | `exam`                    |
| Procedure             | [47519-4 History of procedures](https://loinc.org/47519-4)                                  |                                                                            | `procedure`               |
| Allergy               | [48765-2 Allergies and adverse reactions Document](https://loinc.org/48765-2)               | Allergies and adverse reactions                                            |                           |
| History               | [29762-2 Social history Narrative](https://loinc.org/29762-2)                               | <ul><li>Social context</li><li>Educational history</li></ul>               | `social-history`          |
|                       | [10162-6 History of pregnancies Narrative](https://loinc.org/10162-6)                       |                                                                            |                           |
| Test Request          | [42349-1 Reason for referral (narrative)](https://loinc.org/42349-1)                        | Referral details                                                           |                           |
| Comment               | [61149-1 Objective Narrative](https://loinc.org/61149-1)                                    |                                                                            |                           |
| Follow up             | [18776-5 Plan of treatment (narrative)](https://loinc.org/18776-5)                          |                                                                            |                           |
| Family History        | [10157-6 History of family member diseases Narrative](https://loinc.org/10157-6)            | Family history                                                             |                           |
| Medication            | [10160-0 History of medication use Narrative](https://loinc.org/10160-0)                    | Medications and medical devices                                            |                           |
| Problem               | [11450-4 Problem list - Reported](https://loinc.org/11450-4)                                | Problem list                                                               |                           |
| Document              |                                                                                             |                                                                            |                           |         
| N/a                   | [81338-6 Goals, preferences, and priorities for care experience](https://loinc.org/81338-6) |                                                                            |                           |
| N/a                   | [11369-6 Immunization](https://loinc.org/11369-6)                                           | Vaccinations                                                               |                           |


Historically this is related to [SOAP Note](https://en.wikipedia.org/wiki/SOAP_note) and also [Nursing Process (ADPIE)](https://en.wikipedia.org/wiki/Nursing_process)

TODO This diagram is useful to show how FHIR Resources relate to each section.

<figure>
{%include consultation-note-mindmap.svg%}
<p id="fX.X.X.X-X" class="figureTitle">Consultation Note Model</p>
</figure>
<br clear="all">


### Archetype and Composition

How the archetype is created is not fixed, it can be form-based, a mix of individual observations and forms, device's imports etc., but they all occur under the context of a single encounter.
All of these are combined in the document version of this consultation note encounter when an exchange requires a document format (e.g. GP Connect Send Document)

| Archetype                                                                | Composition                         |
|--------------------------------------------------------------------------|-------------------------------------|
| [Questionnaire - Consultation Note](Questionnaire-ConsultationNote.html) | [Composition - Consultation Note](StructureDefinition-ConsulationNote.html) |


### Technical Options

Maybe remove this, it's a bit complicated. Leave for now to help explain the complexity and why we've took a step back.

<figure>
{%include consultation-note-technical-mindmap.svg%}
<p id="fX.X.X.X-X" class="figureTitle">Technical Options</p>
</figure>
<br clear="all">


