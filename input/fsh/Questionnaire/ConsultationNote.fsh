Instance: ConsultationNote
InstanceOf: Questionnaire
Title: "Consultation Note (Domain Archetype)"
Description: """
Formal definition of the Consultation Note
"""
Usage:  #definition

* title = "Consultation Note"
* status = #draft
* url = "https://fhir.virtually.healthcare/Questionnaire/ConsultationNote"

* item[+]
  * linkId = "LOINC/42348-3"
  * code[+] = $loinc#42348-3 "Advance healthcare directives"
  * text = "Consent"
  * type = #group
  * definition = "https://fhir.virtually.healthcare/StructureDefinition/Consent"
  * item[+]
    * linkId = "directive"
    * text = "Directive"
    * type = #text
    * repeats = true

* item[+]
  * linkId = "Encounter"
  * text = "Consultation"
  * type = #group
  * definition = "https://fhir.virtually.healthcare/StructureDefinition/Encounter"
  * item[+]
    * linkId = "encounterdate"
    * text = "Date and time of consultation"
    * definition = "https://fhir.virtually.healthcare/StructureDefinition/Encounter#Encounter.period.start"
    * type = #dateTime
  * item[+]
    * linkId = "encountertype"
    * text = "Type of Consultation"
    * type = #choice
    * definition = "https://fhir.virtually.healthcare/StructureDefinition/Encounter#Encounter.type"
    * answerOption[+].valueCoding = $sct#308021002 "Seen in clinic"
    * answerOption[+].valueCoding = $sct#185317003 "Telephone encounter"
    * answerOption[+].valueCoding = $sct#307321000000107 "Video-link encounter"

  * item[+]
    * linkId = "encounterservice"
    * text = "Service Provided"
    * definition = "https://fhir.virtually.healthcare/StructureDefinition/Encounter#Encounter.serviceType"
    * type = #choice
    * answerOption[+].valueCoding = $sct#1577041000000109 "Community Pharmacist Consultation Service for minor illness"

* item[+]
  * linkId = "LOINC/61150-9"
  * code[+] = $loinc#61150-9 "Subjective Narrative"
  * text = "Presenting Complaint"
  * type = #group
  * item[+]
    * linkId = "narrative"
    * text = "Symptoms"
    * type = #text
    * repeats = true

  * item[+]
    * linkId = "complaint"
    * text = "Complaint"
    * code[+] = $sct#1269489004 "Complaint"
    * type = #open-choice
    * repeats = true
    * definition = "https://fhir.virtually.healthcare/StructureDefinition/Observation#Observation.valueCodeableConcept"
    * answerValueSet = "http://snomed.info/sct/900000000000207008?fhir_vs=ecl/%3C404684003"
    * extension[+]
      * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
      * valueUrl = "https://snowstorm.ihtsdotools.org/fhir"

* item[+]
  * linkId = "AllergyIntolerance"
  * text = "Allergies"
  * type = #group
  * code[+] = $loinc#48765-2 "Allergies and adverse reactions Document"
  * definition = "https://fhir.virtually.healthcare/StructureDefinition/AllergyIntolerance"

  * item[+]
    * linkId = "substance"
    * text = "Substance Allergy"
    * type = #open-choice
    * code[+] = $sct#105590001 "Substance"
    * repeats = true
    * definition = "https://fhir.virtually.healthcare/StructureDefinition/AllergyIntolerance#AllergyIntolerance.code"
    * answerValueSet = "http://snomed.info/sct/900000000000207008?fhir_vs=ecl/%3C105590001"
    * extension[+]
      * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
      * valueUrl = "https://snowstorm.ihtsdotools.org/fhir"
  * item[+]
    * linkId = "drug"
    * text = "Drug Allergy"
    * type = #open-choice
    * code[+] = $sct#416098002 "Allergy to drug"
    * repeats = true
    * definition = "https://fhir.virtually.healthcare/StructureDefinition/AllergyIntolerance#AllergyIntolerance.code"
    * answerValueSet = "http://snomed.info/sct/900000000000207008?fhir_vs=ecl/%3C416098002"
    * extension[+]
      * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
      * valueUrl = "https://snowstorm.ihtsdotools.org/fhir"

* item[+]
  * linkId = "History"
  * text = "History"
  * type = #group
  * item[+]
    * linkId = "historynarrative"
    * text = "Patient History"
    * type = #text
    * repeats = true

* item[+]
  * linkId = "Examination"
  * text = "Examination"
  * type = #group

  * item[+]
    * linkId = "LOINC/8716-3"
    * code[+] = $loinc#8716-3 "Vital signs"
    * text = "Vital signs"
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
      * extension[unit].valueCoding = $ucum#kg "kilogram"

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
      * extension[unit].valueCoding = $ucum#cm "centimeter"

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
      * extension[unit].valueCoding = $ucum#cm "centimeter"

    * item[+]
      * type = #decimal
      * linkId = "SCT/276885007"
      * definition = "https://fhir.virtually.healthcare/StructureDefinition/Observation#Observation.valueQuantity"
      * code[+] = $sct#276885007 "Core body temperature"
      * code[+] = $loinc#8310-5 "Body temperature"
      * text = "Body temperature"
      * required = false
      * initial[+]
        * valueQuantity.unit = "Cel"
        * valueQuantity.system = "http://unitsofmeasure.org"
        * valueQuantity.code = #Cel
      * extension[unit].valueCoding = $ucum#Cel "Cel"

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
        * linkId = "SCT/72313002"
        * definition = "https://fhir.virtually.healthcare/StructureDefinition/Observation#Observation.valueQuantity"
        * code[+] = $sct#72313002 "Systolic arterial pressure"
        * code[+] = $loinc#8480-6 "Systolic blood pressure"
        * text = "Systolic blood pressure"
        * required = true
        * initial[+]
          * valueQuantity.unit = "millimeter of mercury"
          * valueQuantity.system = "http://unitsofmeasure.org"
          * valueQuantity.code = #mm[Hg]
        * extension[unit].valueCoding = $ucum#mm[Hg] "mmHg"
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
        * extension[unit].valueCoding = $ucum#mm[Hg] "mmHg"

* item[+]
  * linkId = "LOINC/61149-1"
  * code[+] = $loinc#61149-1 "Objective Narrative"
  * text = "Comment"
  * type = #group
  * repeats = false
  * item[+]
    * linkId = "questions"
    * text = "Questions"
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
      * repeats = true

* item[+]
  * linkId = "LOINC/29762-2"
  * code[+] = $loinc#29762-2 "Social history Narrative"
  * text = "Lifestyle- smoking and alcohol status, diet"
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
  * linkId = "LOINC/10160-0"
  * code[+] = $loinc#10160-0 "Medication use"
  * text = "Medications"
  * type = #group
  * definition = "https://fhir.virtually.healthcare/StructureDefinition/MedciationDispense"
  * item[+]
    * linkId = "medication"
    * text = "Medications Dispensed"
    * type = #group
    * repeats = true
    * item[+]
      * linkId = "drug"
      * text = "Drug"
      * type = #text
    * item[+]
      * linkId = "dosage"
      * text = "Dosage"
      * type = #text

* item[+]
  * linkId = "FollowUp"
  * text = "Follow up"
  * type = #group
  * definition = "https://fhir.virtually.healthcare/StructureDefinition/Task"
  * item[+]
    * linkId = "task"
    * text = "Tasks"
    * type = #text

* item[+]
  * linkId = "Documents"
  * text = "Document"
  * type = #group
  * item[+]
    * linkId = "images"
    * definition = "https://fhir.virtually.healthcare/StructureDefinition/DocumentReference#DocumentReference"
    * text = "Images"
    * type = #attachment
    * repeats = true

* item[+]
  * linkId = "Referral"
  * text = "Sign Posting"
  * type = #group
  * definition = "https://fhir.virtually.healthcare/StructureDefinition/ServiceRequest"
  * item[+]
    * linkId = "serviceRequest"
    * text = "Services"
    * type = #group
    * repeats = true
    * item[+]
      * linkId = "serviceType"
      * text = "Type of Signposting"
      * type = #text



