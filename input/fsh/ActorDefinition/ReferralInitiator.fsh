Instance:  ReferralInitiator
InstanceOf: ActorDefinition
Title:   "Referral Initiator"
Usage:  #definition

* name = "ReferralInitiator"
* type = http://hl7.org/fhir/examplescenario-actor-type#system
* status = http://hl7.org/fhir/publication-status#draft
* description = """
Creates the Referral. The Referral Initiator Actor is implemented by the systems used by the clinical practice.
"""
* documentation = """
Places, updates, cancels and nullifies orders.
Receives acceptance or rejection from the Referral Recipient.
Receives Order content and status changes from the Referral Recipient
"""
