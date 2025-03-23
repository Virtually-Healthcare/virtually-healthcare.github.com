Instance: PhysicalActivityReportMessage
InstanceOf: Bundle
Title:       "Bundle `Message` R01 - with single Observation Panel and individual Observations- Physical and Daily Activity"
Description:  "FHIR Message Physical Activity Report - with single Observation Panel and individual Observations"
Usage: #example
* insert MessageBundle("833a8c9c-73d5-4072-8376-3f4a10dd8815", "2024-10-13T10:33:00+00:00")
// MessaageHeader
* insert EntryDocument("urn:uuid:24f9b774-ecde-4adc-85c9-9f56eaacf67a", PhysicalActivityReport)
// Patient
* insert EntryDocument("urn:uuid:073eef49-81ee-4c2e-893b-bc2e4efd2630", 073eef49-81ee-4c2e-893b-bc2e4efd2630)
// Observation Panel Exercice
* insert EntryDocument("urn:uuid:8f750590-30d6-425f-a8c4-f0a7c41e01d4", 8f750590-30d6-425f-a8c4-f0a7c41e01d4)
// Observations for exercise
* insert EntryDocument("urn:uuid:cb3c778b-cee4-4027-8163-c082958f87f1", cb3c778b-cee4-4027-8163-c082958f87f1 )
* insert EntryDocument("urn:uuid:71fae5af-0b9e-4b9e-b6af-3d1bb4e223a0", 71fae5af-0b9e-4b9e-b6af-3d1bb4e223a0 )
* insert EntryDocument("urn:uuid:cffe1a6e-8eda-4613-bf54-119b374bb5b9", cffe1a6e-8eda-4613-bf54-119b374bb5b9)
* insert EntryDocument("urn:uuid:35eb7da3-9b85-46ce-bd29-75c2263b514a", 35eb7da3-9b85-46ce-bd29-75c2263b514a)
* insert EntryDocument("urn:uuid:ad7c1832-f855-4ece-a4c7-c79b433a7890", ad7c1832-f855-4ece-a4c7-c79b433a7890)

// Daily Activity
* insert EntryDocument("urn:uuid:0a7f38ae-9658-4b43-a3f9-02f66f65bf38", 0a7f38ae-9658-4b43-a3f9-02f66f65bf38)
* insert EntryDocument("urn:uuid:a14a52b7-b647-45f3-851a-8c00e28c0968", a14a52b7-b647-45f3-851a-8c00e28c0968)
* insert EntryDocument("urn:uuid:ea09866e-d540-4d9c-ba9c-8e22338e524c", ea09866e-d540-4d9c-ba9c-8e22338e524c)
* insert EntryDocument("urn:uuid:b8df13d9-86f3-4545-9e82-50bca88090d9", b8df13d9-86f3-4545-9e82-50bca88090d9)


