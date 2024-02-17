Instance: ImmunizationPatientExample
InstanceOf: ImmunizationPatient
Usage: #example
Title: "Immunization Patient Example"
Description: "Immunization Patient Example"
* name.family = "Snow"
* name.given = "Jon"
* name.given = "JOhn"
* name.given = "Maiden"
* name.use = #maiden
* identifier[NUPIN].value = "5040-100-29000-1"
* identifier[NUPIN].system = "http://openhie.org/fhir/fhir-ig-teamone/ImplementationGuide/identifier/patient-NUPIN"
* identifier[NRC].value = "799691/11/1"
* identifier[NRC].system = "http://openhie.org/fhir/fhir-ig-teamone/ImplementationGuide/identifier/patient-NRC"
* extension[BornInZambia].valueBoolean = true 