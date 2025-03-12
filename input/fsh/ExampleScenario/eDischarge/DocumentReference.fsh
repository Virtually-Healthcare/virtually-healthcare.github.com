Instance: 94bf65ba-cd6c-4601-b339-6d547f424646
InstanceOf: DocumentReference
Title: "Document Reference Discharge Letter"
Description: "TODO"

* identifier[+].value = "94bf65ba-cd6c-4601-b339-6d547f424646"
* identifier[=].system = "urn:oid:1.2.840.114350.1.13.5325.1.7.2.798268"
* identifier[=].assigner.identifier.system = $ods-code
* identifier[=].assigner.identifier.value = "699X0"

* status = #current

* date = "2025-01-29T10:37:26+00:00"

* type
  * coding[+]
    * code = #823691000000103
    * display = "Clinical letter"
    * system = $sct

// EPIC PV1
* context.encounter[+]
  * identifier
    * value = "1001166717"
    * system = "https://fhir.nhs.uk/Id/visit-number/R0A"
    * type = $v2-0203#VN
    * assigner.identifier.system = $ods-code
    * assigner.identifier.value = "R0A"

* context.related[fillerOrderNumber].identifier.value = "1001166717"
* context.related[fillerOrderNumber].identifier.system = "https://fhir.mft.nhs.uk/Id/FillerOrderNumber"
* context.related[fillerOrderNumber].identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#FILL
* context.related[fillerOrderNumber].identifier.assigner.identifier.system = $ods-code
* context.related[fillerOrderNumber].identifier.assigner.identifier.value = "699X0"

* content[+]
  * attachment.contentType = #application/pdf
  * attachment.url = "urn:uuid:d6eeedd1-92d3-45b9-bf33-6401e804425f"

* subject.reference = "urn:uuid:d6faafcf-db64-4c11-9da8-25f36774c1bd"
* subject.display = "Jack Dawkins"
* subject.identifier
  * system = $nhs-number
  * value = "9912003888"

* context.event[+] = $test-directory#R240.1

* context.sourcePatientInfo.identifier.type = $v2-0203#MR
* context.sourcePatientInfo.identifier.value = "633"
* context.sourcePatientInfo.identifier.assigner.identifier.system = $ods-code
* context.sourcePatientInfo.identifier.assigner.identifier.value = "R0A"


