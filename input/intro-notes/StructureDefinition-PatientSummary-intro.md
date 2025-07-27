Is based on [HL7 International Patient Summary](https://build.fhir.org/ig/HL7/fhir-ips/index.html)

## Overview

The patient summary is a conversion of [Access Record HTML](https://developer.nhs.uk/apis/gpconnect-0-7-4/accessrecord_development_html_layout_guide.html) to [HL7 FHIR R4 Document](https://hl7.org/fhir/R4/documents.html) following [HL7 International Patient Summary Implementation Guide](https://build.fhir.org/ig/HL7/fhir-ips/index.html). An overview of the section mapping is shown below:

<figure>
{%include patient-summary-mindmap.svg%}
<p id="fX.X.X.X-X" class="figureTitle">Patient Summary Map</p>
</figure>
<br clear="all">

## Composition & FHIR Document

The basic structure of a composition is shown above and detailed below, in its aggregated form which is typically how it is exchanged, it is known as a [FHIR Document](https://hl7.org/fhir/R4/documents.html) and a redendered example is shown below:

> Examples
> - [FHIR Document GP Connect Patient Summary](Bundle-a820f27e-b626-4b89-88b1-7e759d0b9eb1.html)


 <img style="padding:3px;width:40%;" src="FHIRDocument.png" alt="Example Document"/>
<br clear="all">



