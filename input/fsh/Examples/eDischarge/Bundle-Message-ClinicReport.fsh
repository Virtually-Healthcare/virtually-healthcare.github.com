Instance: DischargeReportMessage
InstanceOf: Bundle
Title:       "Bundle `Message` R01 - Clinic Report"
Description:  "FHIR Message Clinic Report - Vital Signs"
Usage: #example
* insert MessageBundle("833a8c9c-73d5-4072-8376-3f4a10dd8815", "2024-10-13T10:33:00+00:00")
* insert EntryDocument("urn:uuid:24f9b774-ecde-4adc-85c9-9f56eaacf67a", ClinicReportVitalSigns)
// Patient
* insert EntryDocument("urn:uuid:073eef49-81ee-4c2e-893b-bc2e4efd2630", 073eef49-81ee-4c2e-893b-bc2e4efd2630)
// Observation Panel
* insert EntryDocument("urn:uuid:88b99ab6-0990-4f1c-b1a7-6adb50dd70b7", 88b99ab6-0990-4f1c-b1a7-6adb50dd70b7)
