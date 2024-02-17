// Invariant: PATIENT-PHONE-1
// Description: "Only special characters (dash) and numbers are allowed. For example: 083-123-1234"
// Expression: "$this.matches('[0-9]{1,3}-[0-9]{1,3}-[0-9]{4}')"
// Severity: #error


Profile: ImmunizationPatient
Parent: Patient 
Id: immunization-patient
Title: "Immunization Patient"
Description: "Immunization Patient recieving immunization at the health facility"
* name.family 1..1
* name.given 0..1
* name.given 1..1
* name.use 1..1
* name 1..*
* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice based on"
* identifier ^slicing.ordered = false
* identifier contains 
    NUPIN 1..1 and 
    NRC 0..1
* identifier[NUPIN].value 1..1
* identifier[NUPIN].system = "http://openhie.org/fhir/fhir-ig-teamone/ImplementationGuide/identifier/patient-NUPIN"
* identifier[NRC].value 1..1
* identifier[NRC].system = "http://openhie.org/fhir/fhir-ig-teamone/ImplementationGuide/identifier/patient-NRC"

* extension contains BornInZambia named BornInZambia 1..1


--