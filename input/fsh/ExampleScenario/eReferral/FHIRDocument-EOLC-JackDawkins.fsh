Instance: Composition-ReferralLetter-JackDawkins
InstanceOf: Composition
Title: "Composition - Referral Letter Jack Dawkins"
Description: "Composition - Referral Letter Jack Dawkins"
Usage: #example

* status = #final
* type = $sct#25611000000107 "Referral letter"
//* meta.versionId = 3
* date = "2024-10-13T10:33:00+00:00"
* author.reference = "https://fhir.virtually.healthcare/Device/TransformationService"
* author.display = "Example NHS Trust Transformation Service"
* title = "Composition Referral Letter Jack Dawkins"
* subject.reference = "urn:uuid:d6faafcf-db64-4c11-9da8-25f36774c1bd"
* subject.identifier.system = $nhs-number
* subject.identifier.value = "9912003888"
* subject.display = "Jack DAWKINS"

* section[+]
  * title = "Problems"
  * text.status = #generated
  * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li>Dyspnoea</li></ul></div>"
  * code = http://loinc.org#57852-6 "Problem list Narrative - Reported"
  * entry[+].reference = "urn:uuid:c64139e7-f02d-409c-bf34-75e8bf23bc80"

* section[+]
  * title = "Medication Summary"
  * text.status = #generated
  * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li>Aspirin</li></ul></div>"
  * code = http://loinc.org#10160-0 "History of Medication use Narrative"

* section[+]
  * title = "Allergies and Intolerances"
  * text.status = #generated
  * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li>Nil</li></ul></div>"
  * code = http://loinc.org#48765-2 "Allergies and adverse reactions Document"


* section[+]
  * title = "Advance Directives"
  * text.status = #generated
  * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li>Nil</li></ul></div>"
  * code = http://loinc.org#42348-3

* section[+]
  * title = "Individual Requirements"
  * text.status = #generated
  * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li>Nil</li></ul></div>"
  * code = http://loinc.org#69730-0


* section[+]
  * title = "Results"
  * text.status = #generated
  * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li>Nil</li></ul></div>"
  * code = http://loinc.org#18776-5



Instance: FHIRDocumentEOLCCarePlanBundle
InstanceOf: FHIRDocument
Title:       "Bundle `Document` - Referral Letter"
Description:  "FHIR Document Referral Letter for Jack Dawkins"
Usage: #example
* insert DocumentBundle("1d7155e8-b5b8-4406-adda-01a474d5ff6c", "2024-10-13T10:33:00+00:00")
* insert EntryDocument("urn:uuid:30551ce1-5a28-4356-b684-1e639094ad4d", Composition-ReferralLetter-JackDawkins)
* insert EntryDocument("urn:uuid:d6faafcf-db64-4c11-9da8-25f36774c1bd", Patient-JackDawkins-9912003888)
* insert EntryDocument("urn:uuid:c64139e7-f02d-409c-bf34-75e8bf23bc80", Condition-Dyspnoea-9912003888)
