
<figure>
{%include component-enterprise-domain.svg%}
<p id="fX.X.X.X-X" class="figureTitle">Domain Design</p>
</figure>
<br clear="all">

## Enterprise Workflow

<img style="padding:3px;width:80%;" src="Referral Enterprise Integration.drawio.png" alt="Enterprise Integration - Community and Primary Care"/>
<br clear="all">
<p class="figureTitle">Enterprise Integration - Community and Primary Care</p> 

### Routing Table

| Interaction | Direction | Sender Role                        | Recipient      | Method                      |
|-------------|-----------|------------------------------------|----------------|-----------------------------|
| eReferral   | Out       | Pharmacy                           | GP             | BARS                        |
|             | Out       | Private                            | Secondary Care | eRS                         |
|             | In        | GP, Unscheduled and Emergency Care | Other          | BARS                        |
|             | In/Out    | Other                              | Other          | eReferral (this)            |
| eReport     | Out       | Pharmacy                           | GP             | GP Connect Send Document    |
|             | Out       | Online Consultation Provider       | GP             | IM1 (or Ketting XML + MESH) |
|             | Out       | Other                              | GP             | IM1 (or Ketting XML + MESH) |
|             | In/Out    | Other                              | Other          | eDischarge (this)           |
