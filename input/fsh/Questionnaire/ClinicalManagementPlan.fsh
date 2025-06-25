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
  * linkId = "LOINC/"
  * code[+] = $loinc#8716-3 "Vital signs"
  * text = "Examinations"
  * type = #group

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
    * extension[unitOption].valueCoding = $ucum#kg "kilogram"

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
    * extension[unitOption].valueCoding = $ucum#cm "centimeter"

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
    * extension[unitOption].valueCoding = $ucum#cm "centimeter"

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
    * extension[unitOption].valueCoding = $ucum#Cel "Cel"

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
      * extension[unitOption].valueCoding = $ucum#mm[Hg] "mmHg"
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
      * extension[unitOption].valueCoding = $ucum#mm[Hg] "mmHg"

* item[+]
  * linkId = "LOINC/61149-1"
  * code[+] = $loinc#61149-1 "Objective Narrative"
  * text = "Comments and advice"
  * type = #group
  * repeats = false
  * item[+]
    * linkId = "questions"
    * type = #group
    * repeats = true

    * item[+]
      * linkId = "question"
      * text = "Question"
      * type = #text

    * item[+]
      * linkId = "answer"
      * text = "Answer"
      * type = #text

* item[+]
  * linkId = "LOINC/29762-2"
  * code[+] = $loinc#29762-2 "Social history Narrative"
  * text = "Examinations"
  * type = #group
  * item[+]
    * type = #choice
    * linkId = "SCT/365981007"
    * definition = "https://fhir.virtually.healthcare/StructureDefinition/Observation#Observation.valueCodeableConcept"
    * code[+] = $sct#365981007 "Tobacco smoking behaviour - finding"
    * text = "Smoking Status"
    * required = false
    * answerValueSet = Canonical(SmokingStatus)


* item[+]
  * linkId = "LOINC/11450-4"
  * code[+] = $loinc#11450-4 "Problem list - Reported"
  * type = #group
  * repeats = false
  * item[+]
    * linkId = "problems"
    * type = #group
    * repeats = true
    * item[+]
      * linkId = "problem"
      * text = "Problem Code"
      * type = #choice
      * definition = "https://fhir.virtually.healthcare/StructureDefinition/Condition#Condition.code"
      * answerValueSet = "http://snomed.info/sct/900000000000207008?fhir_vs=ecl/<404684003"
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

