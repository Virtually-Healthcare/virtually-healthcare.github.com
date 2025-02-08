
## FHIR Validation

For details see [FHIR Validation](https://hl7.org/fhir/R4/validation.html)

## Command Line Validation

See [Using the FHIR Validator](https://confluence.hl7.org/display/FHIR/Using+the+FHIR+Validator)

The FHIR Validator works best with individual FHIR Resources and this may be an easier why to start checking your FHIR is correct.
Due to API security requirements of the NHS England Ontology Service, this can not be used as a Terminology Server (the `-tx` parameter). This ig is configured to use the UK edition of SNOMED (83821000000107).

To use this Implementation Guide with the HL7 Validator, you will need to download this as a package (download link [package.tgz](package.tgz)) and then specify this NPM package file via the `-ig package.tgz` parameter.

The FHIR Validator defaults to validating individual FHIR resources (not FHIR Bundles), to validate FHIR resources in a Bundle see **Validating a single resource in a bundle** on the *Using the FHIR Validator* link above.

### Examples to Validate a Bundle

#### FHIR Patient Example

```aiignore
 java -jar validator_cli.jar c:\temp\patient.json -version 4.0.1 -ig package.tgz https://fhir.virtually.healthcare/StructureDefinition/Patient
```

## Asking a FHIR Server

[validator.fhir.org](https://validator.fhir.org/) provides a web-based interface to the Validator CLI jar. This defaults to international FHIR and the options tab can be used to specify specific packages and SNOMED editions (this is listed as `UK - 999000041000000102`). This IG is not currently published to the registry and so `ukcore` should be used instead using the latest release





