Instance:  OrderFiller
InstanceOf: ActorDefinition
Title:   "Order Filler"
Usage:  #definition

* name = "OrderFiller"
* type = http://hl7.org/fhir/examplescenario-actor-type#system
* status = http://hl7.org/fhir/publication-status#draft
* description = """
Fulfils the Order. The Order Filler Actor is implemented by laboratory information management systems.
"""
* documentation = """
Checks the specimens required, and notifies the Order Placer of acceptance or refusal.
Receives Order content changes from the Order Placer
Notifies status changes (scheduled, started, cancelled, completed) to the Order Placer.
Splits an order into a set of work orders, and sends each work order to the appropriate Automation Manager.
Keeps the content of a work order aligned with its originating order, and sends requests to the Automation Manager for cancellation of the work order, or for replacement of its content, when needed.
"""
