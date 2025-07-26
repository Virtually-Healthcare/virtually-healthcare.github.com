
## Resource Model

The current model with the addition of Questionnaire (the definition for archetype/template discussed above) is shown below:

<figure>
{%include consultation-note-model.svg%}
<p id="fX.X.X.X-X" class="figureTitle">Consultation Note Model</p>
</figure>
<br clear="all">

The main changes are:

* 'derivedFrom' should be populated if a Observation has been generated from a Questionnaire.
* `category` should be populated in order to support creation of the **composition** aggregate.



