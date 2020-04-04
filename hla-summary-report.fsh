Profile:        HLASummaryReport
Parent:         genomics-report 
Id:             hla-summary-report
Title:          "HLA Summary Report"
Description:    "HLA Summary Report profile of genomics report"


// * valueCodeableConcept ^patternCodeableConcept.coding.system = "http://glstring.org"
* extension contains GenotypeSummary 1..1 MS
* extension[GenotypeSummary].value[x] only CodeableConcept
* extension[GenotypeSummary].valueCodeableConcept ^patternCodeableConcept.coding.system = http://glstring.org

* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding ^slicing.description = "slicing code"

* code.coding contains HLAGeneGroup 0..1
* code.coding[HLAGeneGroup].system 1..1
* code.coding[HLAGeneGroup].code 1..1
//* code.coding[HLAGeneGroup].system = "http://www.genenames.org/genegroup"
* code.coding[HLAGeneGroup] = HLAGenegroupCS#588 "Histocompatibility complex (HLA)"


Instance:   HLA-A-SummaryReportExample1
InstanceOf: http://fhir.nmdp.org/ig/hla-reporting/StructureDefinition/hla-summary-report
Title:      "HLA-A Summary Report Example 1"
Description: "Example of HLA summary report"
* extension[GenotypeSummary].valueCodeableConcept = GLSCodeSystem#hla#3.31.0#HLA-B*07:02:01:01/HLA-B*07:02:01:03+HLA-B*13:02:01:01
* status = #final
* code.coding[code] = LNC#81247-9 "Master HL7 genetic variant reporting panel"
* code.coding[HLAGeneGroup] = HLAGenegroupCS#588 "Histocompatibility complex (HLA)"
* result.reference = "http://example.org/fhir/Observation/myHLAgenotype"
