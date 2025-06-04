Instance: 94bf65ba-cd6c-4601-b339-6d547f424646
InstanceOf: DocumentReference
Title: "Document Reference Discharge Letter"
Description: "TODO"

* identifier[+].value = "94bf65ba-cd6c-4601-b339-6d547f424646"
* identifier[=].system = "urn:oid:1.2.840.114350.1.13.5325.1.7.2.798268"
* identifier[=].assigner.identifier.system = $ods-code
* identifier[=].assigner.identifier.value = "FFX11"

* status = #current

* date = "2025-01-29T10:37:26+00:00"

* custodian.identifier.system = $ods-code
* custodian.identifier.value = "FFX11"

* author[+]
  * identifier.system = "https://fhir.hl7.org.uk/Id/gphc-number"
  * identifier.value = "ABCDEF1234"
  * display = "Miss Charlotte Chemist"

* type
  * coding[+]
    * code = #823691000000103
    * display = "Clinical letter"
    * system = $sct

// EPIC PV1
* context.encounter[+]
  * identifier
    * value = "1001166717"
    * system = "https://fhir.nhs.uk/Id/visit-number/F83004"
    * type = $v2-0203#VN
    * assigner.identifier.system = $ods-code
    * assigner.identifier.value = "F83004"

* context.related[OriginatingReferralIdentifier].identifier.value = "f3533ea0-9588-4f25-ace7-969d80823b20"
* context.related[OriginatingReferralIdentifier].identifier.system = "urn:uuid:urn:ietf:rfc:3986"
* context.related[OriginatingReferralIdentifier].identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#PLAC
* context.related[OriginatingReferralIdentifier].identifier.assigner.identifier.system = $ods-code
* context.related[OriginatingReferralIdentifier].identifier.assigner.identifier.value = "F83004"

* content[+]
  * attachment.contentType = #application/pdf
  * attachment.url = "urn:uuid:d6eeedd1-92d3-45b9-bf33-6401e804425f"

* subject.reference = "urn:uuid:d6faafcf-db64-4c11-9da8-25f36774c1bd"
* subject.display = "Octavia CHISLETT"
* subject.identifier
  * system = $nhs-number
  * value = "9449305552"

* context.event[+] = $sct#425315000

* context.sourcePatientInfo.identifier.type = $v2-0203#MR
* context.sourcePatientInfo.identifier.value = "633"
* context.sourcePatientInfo.identifier.assigner.identifier.system = $ods-code
* context.sourcePatientInfo.identifier.assigner.identifier.value = "FFX11"


