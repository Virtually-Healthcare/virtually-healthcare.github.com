Instance:  ReferralRecipient
InstanceOf: ActorDefinition
Title:   "Referral Recipient"
Usage:  #definition

* name = "ReferralRecipient"
* type = http://hl7.org/fhir/examplescenario-actor-type#system
* status = http://hl7.org/fhir/publication-status#draft
* description = """
Fulfils the Referral. The Referral Recipient Actor is implemented by clinical providers.
"""
* documentation = """
Notifies the Referral Initiator of acceptance or refusal.
Receives Referral content changes from the Referral Initiator
Notifies status changes (scheduled, started, cancelled, completed) to the Referral Initiator.
"""
