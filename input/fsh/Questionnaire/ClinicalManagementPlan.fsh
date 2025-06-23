Instance: ClinicalManagementPlan
InstanceOf: Questionnaire
Title: "Clinical Management Plan Form (Domain Archetype)"
Description: """
Formal definition of the clinical managment plan
"""
Usage:  #definition

* title = "Clinical Management Plan"
* status = #draft
* url = "https://fhir.virtually.healthcare/Questionnaire/ClinicalManagementPlan"

* item[+]
  * linkId = "fat-1"
  * text = "Comments and advice"
  * type = #text

* item[+]
  * linkId = "fat-2"
  * text = "Important red flags to be aware of"
  * type = #text

* item[+]
  * linkId = "fat-3"
  * text = "Clinician shorthand notes"
  * type = #text

* item[+]
  * linkId = "fat-4"
  * text = "My Condition"
  * type = #text

* item[+]
  * linkId = "fat-5"
  * text = "Radio Group"
  * type = #text

* item[+]
  * linkId = "fat-6"
  * text = "Select"
  * type = #text

* item[+]
  * linkId = "fat-7"
  * text = "Text Field"
  * type = #text

* item[+]
  * linkId = "fat-8"
  * text = "Text Area"
  * type = #text

* item[+]
  * linkId = "fat-9"
  * text = "Checkbox Group"
  * type = #text

* item[+]
  * linkId = "fat-10"
  * text = "Date Field"
  * type = #text

* item[+]
  * linkId = "fat-11"
  * text = "Number"
  * type = #text

* item[+]
  * linkId = "fat-12"
  * text = "File Upload"
  * type = #attachment

* item[+]
  * linkId = "fat-13"
  * text = "Multi File Upload"
  * type = #attachment
  * repeats = true

* item[+]
  * linkId = "fat-14"
  * text = "Problem"
  * type = #group
  * item[+]
    * linkId = "problemStatus"
    * text = "Problem Status"
    * type = #boolean
    * definition = "https://fhir.virtually.healthcare/StructureDefinition/Condition#Condition.clinicalStatus"
  * item[+]
    * linkId = "problemSignificance"
    * text = "Problem Significance"
    * type = #integer
    * definition = "https://fhir.virtually.healthcare/StructureDefinition/Condition#Condition.severity"
  * item[+]
    * linkId = "problemType"
    * text = "Problem Type"
    * type = #integer
  * item[+]
    * linkId = "problemExpectedDuration"
    * text = "Problem Expected Duration (days)"
    * type = #integer

* item[+]
  * type = #decimal
  * linkId = "SCT/27113001"
  * definition = "https://fhir.virtually.healthcare/StructureDefinition/Observation#Observation.valueQuantity"
  * code[+] = $sct#27113001 "Body weight"
  * code[+] = $loinc#29463-7 "Body Weight"
  * text = "Weight"
  * required = false
  * initial[+]
    * valueQuantity.unit = "kilogram"
    * valueQuantity.system = "http://unitsofmeasure.org"
    * valueQuantity.code = #kg

* item[+]
  * type = #decimal
  * linkId = "SCT/50373000"
  * definition = "https://fhir.virtually.healthcare/StructureDefinition/Observation#Observation.valueQuantity"
  * code[+] = $sct#50373000 "Body height measure"
  * code[+] = $loinc#8302-2 "Body height"
  * text = "Height"
  * required = false
  * initial[+]
    * valueQuantity.unit = "centimeter"
    * valueQuantity.system = "http://unitsofmeasure.org"
    * valueQuantity.code = #cm

* item[+]
  * type = #decimal
  * linkId = "SCT/363811000"
  * definition = "https://fhir.virtually.healthcare/StructureDefinition/Observation#Observation.valueQuantity"
  * code[+] = $sct#363811000 "Head circumference measure"
  * code[+] = $loinc#9843-4 "Head Occipital-frontal circumference"
  * text = "Head Circumference"
  * required = false
  * initial[+]
    * valueQuantity.unit = "centimeter"
    * valueQuantity.system = "http://unitsofmeasure.org"
    * valueQuantity.code = #cm

* item[+]
  * type = #decimal
  * linkId = "SCT/276885007"
  * definition = "https://fhir.virtually.healthcare/StructureDefinition/Observation#Observation.valueQuantity"
  * code[+] = $sct#363811000 "Core body temperature"
  * code[+] = $loinc#8310-5 "Body temperature"
  * text = "Body temperature"
  * required = false
  * initial[+]
    * valueQuantity.unit = "Cel"
    * valueQuantity.system = "http://unitsofmeasure.org"
    * valueQuantity.code = #Cel

* item[+]
  * type = #group
  * linkId = "SCT/75367002"
  * code[+] = $sct#75367002 "Blood pressure"
  * code[+] = $loinc#85354-9 "Blood pressure panel with all children optional"
  * text = "Blood pressure"
  * required = false
  * definition = "https://fhir.virtually.healthcare/StructureDefinition/Observation#Observation.component"
  * item[+]
    * type = #decimal
    * linkId = "SCT/276885007"
    * definition = "https://fhir.virtually.healthcare/StructureDefinition/Observation#Observation.valueQuantity"
    * code[+] = $sct#72313002 "Systolic arterial pressure"
    * code[+] = $loinc#8480-6 "Systolic blood pressure"
    * text = "Systolic blood pressure"
    * required = true
    * initial[+]
      * valueQuantity.unit = "millimeter of mercury"
      * valueQuantity.system = "http://unitsofmeasure.org"
      * valueQuantity.code = #mm[Hg]
  * item[+]
    * type = #decimal
    * linkId = "SCT/1091811000000102"
    * definition = "https://fhir.virtually.healthcare/StructureDefinition/Observation#Observation.valueQuantity"
    * code[+] = $sct#1091811000000102 "Diastolic arterial pressure"
    * code[+] = $loinc#8462-4 "Diastolic blood pressure"
    * text = "Diastolic blood pressure"
    * required = true
    * initial[+]
      * valueQuantity.unit = "millimeter of mercury"
      * valueQuantity.system = "http://unitsofmeasure.org"
      * valueQuantity.code = #mm[Hg]

* item[+]
  * type = #choice
  * linkId = "SCT/365981007"
  * definition = "https://fhir.virtually.healthcare/StructureDefinition/Observation#Observation.valueCodeableConcept"
  * code[+] = $sct#365981007 "Tobacco smoking behaviour - finding"
  * text = "Smoking Status"
  * required = false
  * answerValueSet = Canonical(SmokingStatus)
