## Reference

- [HL7 Confluence HIE](https://confluence.hl7.org/spaces/GP/pages/144983310/HL7+FHIR+Multi-domain+HIE+Architecture)
- [IHE Query for Existing Data (Mobile)](https://profiles.ihe.net/PCC/QEDm/)
  - [HL7 International Patient Access](https://build.fhir.org/ig/HL7/fhir-ipa/)
- [HL7 International Patient Summary](https://build.fhir.org/ig/HL7/fhir-ips/)

## Actors and Transactions

| Actor                                | Description                                                                               |
|--------------------------------------|-------------------------------------------------------------------------------------------|
| Data Consumer                        | A system/user that wants patient information.                                             |                                                 
| Health Information Exchange (HIE)    | Mediates between the consumer and healthcare data sources.                                | 
| Patient Demographic Query (PDS)      | Looks up patient demographics (like NHS number, date of birth, etc.).                     | 
| Care Directory Service (CSD / Spine) | Finds where patient records are stored (service directory).                               | 
| Data Sources                         | The actual systems storing patient data: Primary Care System and Clinical Data Repository |                                                                  | 

### Process Flow

<figure>
{%include hie-sequence.svg%}
<p id="fX.X.X.X-X" class="figureTitle">Health Information Exchange (HIE)</p>
</figure>
<br clear="all">

- Patient Search
  - The Data Consumer queries the HIE for a patient (ITI-78, FHIR R4 API).
  - HIE queries PDS to confirm patient demographics.
  - Results are returned to the Data Consumer.
- Patient Summary (GP Connect scenario). This path is used when the Data Consumer is a GP/practitioner.
  - IPS Query sent (FHIR R4).
  - Endpoint Lookup (ITI-90) via Care Directory Service to find where the patient’s data is held.
  - GP Connect Access Record HTML is requested (FHIR STU3 bespoke API).
  - Data returned as an HTML record (DSTU2 format).
  - Converted into a standardised IPS FHIR R4 Document.
  - Final FHIR R4 Search Results sent back to the Data Consumer.
- Patient Record Detailed (Non-GP Connect scenario). This path is used when the Data Consumer is not a GP or the patient themselves is requesting data.
  - Mobile Query Existing Data (PCC-44) request sent.
  - Request forwarded to IM1 Transaction API / PFS API.
  - Search results returned and converted to FHIR R4.
  - Another PCC-44 query sent to Data Source(s).
  - Multiple search results returned and aggregated.
  - Final FHIR R4 Search Results sent back to Data Consumer.

## Security Considerations

### Authentication and Authorization

All users will be authenticated using [CIS2](https://digital.nhs.uk/services/care-identity-service/applications-and-services/cis2-authentication).
All API calls will follow [IHE Internet User Authentication (IUA)](https://profiles.ihe.net/ITI/IUA/index.html)

### Audits

All API calls will be audited following [IHE Basic Audit Log Patterns (BALP)](https://profiles.ihe.net/ITI/BALP/index.html)
