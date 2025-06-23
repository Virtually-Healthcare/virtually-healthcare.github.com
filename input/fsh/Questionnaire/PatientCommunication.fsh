Instance: PatientCommunication
InstanceOf: Questionnaire
Title: "Patient Communication (Domain Archetype)"
Description: """
Formal definition of Patient Communication
"""
Usage:  #definition

* title = "PatientCommunication"
* status = #draft
* url = "https://fhir.virtually.healthcare/Questionnaire/PatientCommunication"

* item[+]
  * linkId = "message"
  * text = "Message"
  * type = #string
  * required = true
  * definition = "http://hl7.org/fhir/StructureDefinition/Communication#Communication.payload.contentString"
  * item[+]
    * linkId = "messageTopic"
    * text = "Message Topic"
    * type = #choice
    * required = true
    * answerOption[+].valueCoding = $sct#445450000 "Encounter by short message service text messaging"
    * definition = "http://hl7.org/fhir/StructureDefinition/Communication#Communication.topic"
