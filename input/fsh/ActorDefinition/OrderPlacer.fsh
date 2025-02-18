Instance:  OrderPlacer
InstanceOf: ActorDefinition
Title:   "Order Placer"
Usage:  #definition

* name = "OrderPlacer"
* type = http://hl7.org/fhir/examplescenario-actor-type#system
* status = http://hl7.org/fhir/publication-status#draft
* description = """
Creates the Order. The Order Placer Actor is implemented by the systems used by the clinical practice.
"""
* documentation = """
Places, updates, cancels and nullifies orders.
Receives acceptance or rejection from the Order Filler.
Receives Order content and status changes from the Order Filler
"""
